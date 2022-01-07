; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_miro_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_miro_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_miro = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ACI & OPTi924\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ACI & OPTi929\00", align 1
@snd_miro_controls = common dso_local global i32* null, align 8
@snd_miro_line_control = common dso_local global i32* null, align 8
@snd_miro_amp_control = common dso_local global i32* null, align 8
@snd_miro_preamp_control = common dso_local global i32* null, align 8
@snd_miro_capture_control = common dso_local global i32* null, align 8
@snd_miro_radio_control = common dso_local global i32* null, align 8
@snd_miro_eq_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_miro*)* @snd_miro_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_miro_mixer(%struct.snd_card* %0, %struct.snd_miro* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_miro*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_miro* %1, %struct.snd_miro** %5, align 8
  %8 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %9 = icmp ne %struct.snd_miro* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %184

22:                                               ; preds = %14
  %23 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %24 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 128, label %31
  ]

26:                                               ; preds = %22
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

31:                                               ; preds = %22
  %32 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

36:                                               ; preds = %22
  %37 = call i32 (...) @snd_BUG()
  br label %38

38:                                               ; preds = %36, %31, %26
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** @snd_miro_controls, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %46 = load i32*, i32** @snd_miro_controls, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %51 = call i32 @snd_ctl_new1(i32* %49, %struct.snd_miro* %50)
  %52 = call i32 @snd_ctl_add(%struct.snd_card* %45, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %184

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %62 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 4
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 65
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %70 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 4
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 66
  br i1 %75, label %76, label %97

76:                                               ; preds = %68, %60
  %77 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %78 = load i32*, i32** @snd_miro_line_control, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %81 = call i32 @snd_ctl_new1(i32* %79, %struct.snd_miro* %80)
  %82 = call i32 @snd_ctl_add(%struct.snd_card* %77, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %184

86:                                               ; preds = %76
  %87 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %88 = load i32*, i32** @snd_miro_amp_control, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %91 = call i32 @snd_ctl_new1(i32* %89, %struct.snd_miro* %90)
  %92 = call i32 @snd_ctl_add(%struct.snd_card* %87, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %184

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %68
  %98 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %99 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 4
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 66
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %107 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 4
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 67
  br i1 %112, label %113, label %142

113:                                              ; preds = %105, %97
  %114 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %115 = load i32*, i32** @snd_miro_preamp_control, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %118 = call i32 @snd_ctl_new1(i32* %116, %struct.snd_miro* %117)
  %119 = call i32 @snd_ctl_add(%struct.snd_card* %114, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %184

123:                                              ; preds = %113
  %124 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %125 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %128, 176
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %132 = load i32*, i32** @snd_miro_capture_control, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %135 = call i32 @snd_ctl_new1(i32* %133, %struct.snd_miro* %134)
  %136 = call i32 @snd_ctl_add(%struct.snd_card* %131, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %184

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %105
  %143 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %144 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i8, i8* %146, align 4
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 67
  br i1 %149, label %150, label %183

150:                                              ; preds = %142
  %151 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %152 = load i32*, i32** @snd_miro_radio_control, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %155 = call i32 @snd_ctl_new1(i32* %153, %struct.snd_miro* %154)
  %156 = call i32 @snd_ctl_add(%struct.snd_card* %151, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %184

160:                                              ; preds = %150
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %179, %160
  %162 = load i32, i32* %6, align 4
  %163 = load i32*, i32** @snd_miro_eq_controls, align 8
  %164 = call i32 @ARRAY_SIZE(i32* %163)
  %165 = icmp ult i32 %162, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %168 = load i32*, i32** @snd_miro_eq_controls, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %173 = call i32 @snd_ctl_new1(i32* %171, %struct.snd_miro* %172)
  %174 = call i32 @snd_ctl_add(%struct.snd_card* %167, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %184

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %6, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %161

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %142
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %176, %158, %138, %121, %94, %84, %54, %19
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_miro*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
