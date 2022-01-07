; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_calibrate_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_calibrate_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32, i32*, i32 }

@CS4231_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_LOOPBACK = common dso_local global i64 0, align 8
@CS4231_AUX1_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX1_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX2_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX2_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_LEFT_OUTPUT = common dso_local global i64 0, align 8
@CS4231_RIGHT_OUTPUT = common dso_local global i64 0, align 8
@CS4231_LEFT_LINE_IN = common dso_local global i64 0, align 8
@CS4231_RIGHT_LINE_IN = common dso_local global i64 0, align 8
@CS4231_MONO_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*, i32)* @snd_cs4231_calibrate_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs4231*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  store i32 %9, i32* %4, align 4
  %10 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %11 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %10, i32 0, i32 2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %15 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %21 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %20, i32 0, i32 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %198

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %24
  %28 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %29 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %30 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %31 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %28, i64 %29, i32 %35)
  %37 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %38 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %39 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %40 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %37, i64 %38, i32 %44)
  %46 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %47 = load i64, i64* @CS4231_LOOPBACK, align 8
  %48 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %49 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @CS4231_LOOPBACK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %46, i64 %47, i32 %53)
  br label %55

55:                                               ; preds = %27, %24
  %56 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %57 = load i64, i64* @CS4231_AUX1_LEFT_INPUT, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %68

61:                                               ; preds = %55
  %62 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %63 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @CS4231_AUX1_LEFT_INPUT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %61, %60
  %69 = phi i32 [ 128, %60 ], [ %67, %61 ]
  %70 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %56, i64 %57, i32 %69)
  %71 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %72 = load i64, i64* @CS4231_AUX1_RIGHT_INPUT, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %83

76:                                               ; preds = %68
  %77 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %78 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @CS4231_AUX1_RIGHT_INPUT, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = phi i32 [ 128, %75 ], [ %82, %76 ]
  %85 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %71, i64 %72, i32 %84)
  %86 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %87 = load i64, i64* @CS4231_AUX2_LEFT_INPUT, align 8
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %98

91:                                               ; preds = %83
  %92 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %93 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @CS4231_AUX2_LEFT_INPUT, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  br label %98

98:                                               ; preds = %91, %90
  %99 = phi i32 [ 128, %90 ], [ %97, %91 ]
  %100 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %86, i64 %87, i32 %99)
  %101 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %102 = load i64, i64* @CS4231_AUX2_RIGHT_INPUT, align 8
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %113

106:                                              ; preds = %98
  %107 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %108 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @CS4231_AUX2_RIGHT_INPUT, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %106, %105
  %114 = phi i32 [ 128, %105 ], [ %112, %106 ]
  %115 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %101, i64 %102, i32 %114)
  %116 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %117 = load i64, i64* @CS4231_LEFT_OUTPUT, align 8
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %128

121:                                              ; preds = %113
  %122 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %123 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @CS4231_LEFT_OUTPUT, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  br label %128

128:                                              ; preds = %121, %120
  %129 = phi i32 [ 128, %120 ], [ %127, %121 ]
  %130 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %116, i64 %117, i32 %129)
  %131 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %132 = load i64, i64* @CS4231_RIGHT_OUTPUT, align 8
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %143

136:                                              ; preds = %128
  %137 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %138 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @CS4231_RIGHT_OUTPUT, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  br label %143

143:                                              ; preds = %136, %135
  %144 = phi i32 [ 128, %135 ], [ %142, %136 ]
  %145 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %131, i64 %132, i32 %144)
  %146 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %147 = load i64, i64* @CS4231_LEFT_LINE_IN, align 8
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %158

151:                                              ; preds = %143
  %152 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %153 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @CS4231_LEFT_LINE_IN, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  br label %158

158:                                              ; preds = %151, %150
  %159 = phi i32 [ 128, %150 ], [ %157, %151 ]
  %160 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %146, i64 %147, i32 %159)
  %161 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %162 = load i64, i64* @CS4231_RIGHT_LINE_IN, align 8
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %173

166:                                              ; preds = %158
  %167 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %168 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @CS4231_RIGHT_LINE_IN, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  br label %173

173:                                              ; preds = %166, %165
  %174 = phi i32 [ 128, %165 ], [ %172, %166 ]
  %175 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %161, i64 %162, i32 %174)
  %176 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %177 = load i64, i64* @CS4231_MONO_CTRL, align 8
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %188

181:                                              ; preds = %173
  %182 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %183 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @CS4231_MONO_CTRL, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  br label %188

188:                                              ; preds = %181, %180
  %189 = phi i32 [ 192, %180 ], [ %187, %181 ]
  %190 = call i32 @snd_cs4231_dout(%struct.snd_cs4231* %176, i64 %177, i32 %189)
  %191 = load i32, i32* %4, align 4
  %192 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %193 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %195 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %194, i32 0, i32 2
  %196 = load i64, i64* %5, align 8
  %197 = call i32 @spin_unlock_irqrestore(i32* %195, i64 %196)
  br label %198

198:                                              ; preds = %188, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_cs4231_dout(%struct.snd_cs4231*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
