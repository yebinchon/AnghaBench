; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_map_data_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_map_data_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_3__*, %struct.amdtp_stream }
%struct.TYPE_3__ = type { i32 }
%struct.amdtp_stream = type { i32 }

@AVC_BRIDGECO_ADDR_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_DIR_IN = common dso_local global i32 0, align 4
@AVC_BRIDGECO_PLUG_UNIT_ISOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fail to get channel position for isoc %s plug 0: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"fail to get section type for isoc %s plug 0: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AM824_MAX_CHANNELS_FOR_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, %struct.amdtp_stream*)* @map_data_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_data_channels(%struct.snd_bebob* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %23 = load i32, i32* @AVC_BRIDGECO_ADDR_BYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 256, i32 %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %194

34:                                               ; preds = %2
  %35 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %36 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %37 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %36, i32 0, i32 1
  %38 = icmp eq %struct.amdtp_stream* %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_OUT, align 4
  store i32 %40, i32* %20, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %46 = call i32 @avc_bridgeco_fill_unit_addr(i32* %26, i32 %44, i32 %45, i32 0)
  %47 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %48 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @avc_bridgeco_get_plug_ch_pos(%struct.TYPE_3__* %49, i32* %26, i32* %50, i32 256)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %56 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  br label %190

66:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %186, %66
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %189

77:                                               ; preds = %73
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* @AVC_BRIDGECO_PLUG_UNIT_ISOC, align 4
  %80 = call i32 @avc_bridgeco_fill_unit_addr(i32* %26, i32 %78, i32 %79, i32 0)
  %81 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %82 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @avc_bridgeco_get_plug_section_type(%struct.TYPE_3__* %83, i32* %26, i32 %84, i32* %19)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %77
  %89 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %90 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %98)
  br label %190

100:                                              ; preds = %77
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 255
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @ENOSYS, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %21, align 4
  br label %190

106:                                              ; preds = %100
  %107 = load i32*, i32** %16, align 8
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %171, %106
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %174

117:                                              ; preds = %113
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %15, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp uge i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %117
  %138 = load i32, i32* %19, align 4
  switch i32 %138, label %155 [
    i32 10, label %139
    i32 1, label %154
    i32 2, label %154
    i32 3, label %154
    i32 4, label %154
    i32 5, label %154
    i32 6, label %154
    i32 7, label %154
    i32 8, label %154
    i32 9, label %154
  ]

139:                                              ; preds = %137
  %140 = load i32, i32* %11, align 4
  %141 = icmp ugt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @ENOSYS, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %21, align 4
  br label %190

149:                                              ; preds = %142, %139
  %150 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @amdtp_am824_set_midi_position(%struct.amdtp_stream* %150, i32 %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %11, align 4
  br label %170

154:                                              ; preds = %137, %137, %137, %137, %137, %137, %137, %137, %137
  br label %155

155:                                              ; preds = %137, %154
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %14, align 4
  %158 = add i32 %156, %157
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @AM824_MAX_CHANNELS_FOR_PCM, align 4
  %161 = icmp uge i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* @ENOSYS, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %21, align 4
  br label %190

165:                                              ; preds = %155
  %166 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @amdtp_am824_set_pcm_position(%struct.amdtp_stream* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %149
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %113

174:                                              ; preds = %113
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 10
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %185

181:                                              ; preds = %174
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %181, %177
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %73

189:                                              ; preds = %73
  br label %190

190:                                              ; preds = %189, %162, %146, %103, %88, %54
  %191 = load i32*, i32** %16, align 8
  %192 = call i32 @kfree(i32* %191)
  %193 = load i32, i32* %21, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %194

194:                                              ; preds = %190, %31
  %195 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @avc_bridgeco_fill_unit_addr(i32*, i32, i32, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_ch_pos(%struct.TYPE_3__*, i32*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_section_type(%struct.TYPE_3__*, i32*, i32, i32*) #2

declare dso_local i32 @amdtp_am824_set_midi_position(%struct.amdtp_stream*, i32) #2

declare dso_local i32 @amdtp_am824_set_pcm_position(%struct.amdtp_stream*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
