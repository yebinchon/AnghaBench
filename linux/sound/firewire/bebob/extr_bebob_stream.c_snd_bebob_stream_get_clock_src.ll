; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_get_clock_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_get_clock_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_bebob_clock_spec* }
%struct.snd_bebob_clock_spec = type { i32 (%struct.snd_bebob.0*, i32*)*, i32, i32* }
%struct.snd_bebob.0 = type opaque

@AVC_BRIDGECO_ADDR_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"fail to get clock source: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"clock source %d out of range 0..%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SND_BEBOB_CLOCK_TYPE_INTERNAL = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"fail to get an input for MSU in plug %d: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_MODE_SUBUNIT = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_MODE_UNIT = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_UNIT_ISOC = common dso_local global i32 0, align 4
@SND_BEBOB_CLOCK_TYPE_SYT = common dso_local global i32 0, align 4
@SND_BEBOB_CLOCK_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_UNIT_EXT = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_TYPE_DIG = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_TYPE_SYNC = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_TYPE_ADDITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_stream_get_clock_src(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.snd_bebob_clock_spec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %13 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %15, align 8
  store %struct.snd_bebob_clock_spec* %16, %struct.snd_bebob_clock_spec** %5, align 8
  %17 = load i32, i32* @AVC_BRIDGECO_ADDR_BYTES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %5, align 8
  %22 = icmp ne %struct.snd_bebob_clock_spec* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_bebob_clock_spec, %struct.snd_bebob_clock_spec* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_bebob.0*, i32*)*, i32 (%struct.snd_bebob.0*, i32*)** %25, align 8
  %27 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %28 = bitcast %struct.snd_bebob* %27 to %struct.snd_bebob.0*
  %29 = call i32 %26(%struct.snd_bebob.0* %28, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %34 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %191

39:                                               ; preds = %23
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %5, align 8
  %42 = getelementptr inbounds %struct.snd_bebob_clock_spec, %struct.snd_bebob_clock_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %47 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %5, align 8
  %52 = getelementptr inbounds %struct.snd_bebob_clock_spec, %struct.snd_bebob_clock_spec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub i32 %53, 1
  %55 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %191

58:                                               ; preds = %39
  %59 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %5, align 8
  %60 = getelementptr inbounds %struct.snd_bebob_clock_spec, %struct.snd_bebob_clock_spec* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %191

67:                                               ; preds = %2
  %68 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %69 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_INTERNAL, align 4
  %74 = load i32*, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  br label %191

75:                                               ; preds = %67
  %76 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %77 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %78 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @avc_bridgeco_fill_msu_addr(i32* %20, i32 %76, i32 %79)
  %81 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %82 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %85 = call i32 @avc_bridgeco_get_plug_input(%struct.TYPE_5__* %83, i32* %20, i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %75
  %89 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %90 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %94 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  br label %191

98:                                               ; preds = %75
  %99 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = icmp eq i32 %100, 255
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_INTERNAL, align 4
  %104 = load i32*, i32** %4, align 8
  store i32 %103, i32* %104, align 4
  br label %191

105:                                              ; preds = %98
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_OUT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AVC_BRIDGECO_PLUG_MODE_SUBUNIT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 12
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_INTERNAL, align 4
  %121 = load i32*, i32** %4, align 8
  store i32 %120, i32* %121, align 4
  br label %191

122:                                              ; preds = %115, %110
  br label %188

123:                                              ; preds = %105
  %124 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AVC_BRIDGECO_PLUG_MODE_UNIT, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %187

128:                                              ; preds = %123
  %129 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_SYT, align 4
  %139 = load i32*, i32** %4, align 8
  store i32 %138, i32* %139, align 4
  br label %191

140:                                              ; preds = %133
  %141 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_EXTERNAL, align 4
  %142 = load i32*, i32** %4, align 8
  store i32 %141, i32* %142, align 4
  br label %191

143:                                              ; preds = %128
  %144 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_EXT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %185

148:                                              ; preds = %143
  %149 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %150 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_EXT, align 4
  %151 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @avc_bridgeco_fill_unit_addr(i32* %20, i32 %149, i32 %150, i32 %152)
  %154 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %155 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__* %156, i32* %20, i32* %10)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  br label %191

161:                                              ; preds = %148
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_DIG, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_EXTERNAL, align 4
  %167 = load i32*, i32** %4, align 8
  store i32 %166, i32* %167, align 4
  br label %191

168:                                              ; preds = %161
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_SYNC, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_EXTERNAL, align 4
  %174 = load i32*, i32** %4, align 8
  store i32 %173, i32* %174, align 4
  br label %191

175:                                              ; preds = %168
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_ADDITION, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @SND_BEBOB_CLOCK_TYPE_INTERNAL, align 4
  %181 = load i32*, i32** %4, align 8
  store i32 %180, i32* %181, align 4
  br label %191

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %143
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %123
  br label %188

188:                                              ; preds = %187, %122
  %189 = load i32, i32* @EIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %188, %179, %172, %165, %160, %140, %137, %119, %102, %88, %72, %58, %45, %32
  %192 = load i32, i32* %11, align 4
  %193 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %193)
  ret i32 %192
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @avc_bridgeco_fill_msu_addr(i32*, i32, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_input(%struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i32 @avc_bridgeco_fill_unit_addr(i32*, i32, i32, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
