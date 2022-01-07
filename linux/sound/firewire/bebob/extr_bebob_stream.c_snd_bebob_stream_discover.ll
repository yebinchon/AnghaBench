; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_discover.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i64, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_bebob_clock_spec* }
%struct.snd_bebob_clock_spec = type { i32 }

@AVC_PLUG_INFO_BUF_BYTES = common dso_local global i32 0, align 4
@AVC_BRIDGECO_ADDR_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fail to get info for isoc/external in/out plugs: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_IN = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_UNIT_ISOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"fail to get type for isoc in plug 0: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_TYPE_ISOC = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fail to get type for isoc out plug 0: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_UNIT_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"fail to get type for external in plug %d: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_TYPE_MIDI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"fail to get type for external out plug %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_stream_discover(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  %3 = alloca %struct.snd_bebob_clock_spec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %10 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %11 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %13, align 8
  store %struct.snd_bebob_clock_spec* %14, %struct.snd_bebob_clock_spec** %3, align 8
  %15 = load i32, i32* @AVC_PLUG_INFO_BUF_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @AVC_BRIDGECO_ADDR_BYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %23 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @avc_general_get_plug_info(%struct.TYPE_5__* %24, i32 31, i32 7, i32 0, i32* %18)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %30 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %199

35:                                               ; preds = %1
  %36 = getelementptr inbounds i32, i32* %18, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i32, i32* %18, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @ENOSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %199

46:                                               ; preds = %39
  %47 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %48 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %49 = call i32 @avc_bridgeco_fill_unit_addr(i32* %21, i32 %47, i32 %48, i32 0)
  %50 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %51 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__* %52, i32* %21, i32* %7)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %58 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %199

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_ISOC, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOSYS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %199

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %73 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %74 = call i32 @fill_stream_formations(%struct.snd_bebob* %72, i32 %73, i32 0)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %199

78:                                               ; preds = %71
  %79 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_OUT, align 4
  %80 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %81 = call i32 @avc_bridgeco_fill_unit_addr(i32* %21, i32 %79, i32 %80, i32 0)
  %82 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %83 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__* %84, i32* %21, i32* %7)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %90 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %199

95:                                               ; preds = %78
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_ISOC, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOSYS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %199

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %105 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_OUT, align 4
  %106 = call i32 @fill_stream_formations(%struct.snd_bebob* %104, i32 %105, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %199

110:                                              ; preds = %103
  %111 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %112 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %148, %110
  %114 = load i32, i32* %8, align 4
  %115 = getelementptr inbounds i32, i32* %18, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %113
  %119 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %120 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_EXT, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @avc_bridgeco_fill_unit_addr(i32* %21, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %124 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__* %125, i32* %21, i32* %7)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %131 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135)
  br label %199

137:                                              ; preds = %118
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_MIDI, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %143 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %137
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %113

151:                                              ; preds = %113
  %152 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %153 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %189, %151
  %155 = load i32, i32* %8, align 4
  %156 = getelementptr inbounds i32, i32* %18, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %154
  %160 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_OUT, align 4
  %161 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_EXT, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @avc_bridgeco_fill_unit_addr(i32* %21, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %165 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__* %166, i32* %21, i32* %7)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %159
  %171 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %172 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %175, i32 %176)
  br label %199

178:                                              ; preds = %159
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_MIDI, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %184 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %182, %178
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %154

192:                                              ; preds = %154
  %193 = load %struct.snd_bebob_clock_spec*, %struct.snd_bebob_clock_spec** %3, align 8
  %194 = icmp ne %struct.snd_bebob_clock_spec* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %197 = call i32 @seek_msu_sync_input_plug(%struct.snd_bebob* %196)
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198, %170, %129, %109, %99, %88, %77, %67, %56, %43, %28
  %200 = load i32, i32* %9, align 4
  %201 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %201)
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avc_general_get_plug_info(%struct.TYPE_5__*, i32, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @avc_bridgeco_fill_unit_addr(i32*, i32, i32, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_type(%struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i32 @fill_stream_formations(%struct.snd_bebob*, i32, i32) #2

declare dso_local i32 @seek_msu_sync_input_plug(%struct.snd_bebob*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
