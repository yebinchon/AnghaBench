; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_hw_check_valid_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_hw_check_valid_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.audioformat = type { i32, i64, i64, i64, i32, i32 }
%struct.snd_interval = type { i64, i64, i64, i64 }
%struct.snd_mask = type { i8** }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"   > check: no supported format %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"   > check: no valid channels %d (%d/%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"   > check: rate_min %d > max %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"   > check: rate_max %d < min %d\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"   > check: ptime %u > max %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*, %struct.snd_pcm_hw_params*, %struct.audioformat*)* @hw_check_valid_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_check_valid_format(%struct.snd_usb_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.audioformat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval*, align 8
  %10 = alloca %struct.snd_mask*, align 8
  %11 = alloca %struct.snd_interval*, align 8
  %12 = alloca %struct.snd_mask, align 8
  %13 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.audioformat* %2, %struct.audioformat** %7, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %8, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %19 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_interval* %19, %struct.snd_interval** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %22 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %20, i32 %21)
  store %struct.snd_mask* %22, %struct.snd_mask** %10, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %25 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %23, i32 %24)
  store %struct.snd_interval* %25, %struct.snd_interval** %11, align 8
  %26 = call i32 @snd_mask_none(%struct.snd_mask* %12)
  %27 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %28 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %12, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %36 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %12, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.snd_mask*, %struct.snd_mask** %10, align 8
  %45 = call i32 @snd_mask_intersect(%struct.snd_mask* %12, %struct.snd_mask* %44)
  %46 = call i64 @snd_mask_empty(%struct.snd_mask* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %50 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @hwc_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %4, align 4
  br label %179

53:                                               ; preds = %3
  %54 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %55 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %58 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %63 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61, %53
  %70 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %71 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %75 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %78 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, i32, ...) @hwc_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %76, i64 %79)
  store i32 0, i32* %4, align 4
  br label %179

81:                                               ; preds = %61
  %82 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %83 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %102, label %89

89:                                               ; preds = %81
  %90 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %91 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %94 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %99 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97, %81
  %103 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %104 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %108 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, i32, ...) @hwc_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %106, i64 %109)
  store i32 0, i32* %4, align 4
  br label %179

111:                                              ; preds = %97, %89
  %112 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %113 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %116 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %132, label %119

119:                                              ; preds = %111
  %120 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %121 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %124 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %119
  %128 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %129 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127, %111
  %133 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %134 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %138 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, i32, ...) @hwc_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %136, i64 %139)
  store i32 0, i32* %4, align 4
  br label %179

141:                                              ; preds = %127, %119
  %142 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %143 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @USB_SPEED_FULL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %141
  %148 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %149 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 1, %150
  %152 = mul nsw i32 125, %151
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %156 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %154, %157
  br i1 %158, label %171, label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %163 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %168 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166, %147
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %174 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (i8*, i32, ...) @hwc_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %172, i64 %175)
  store i32 0, i32* %4, align 4
  br label %179

177:                                              ; preds = %166, %159
  br label %178

178:                                              ; preds = %177, %141
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %171, %132, %102, %69, %48
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_intersect(%struct.snd_mask*, %struct.snd_mask*) #1

declare dso_local i64 @snd_mask_empty(%struct.snd_mask*) #1

declare dso_local i32 @hwc_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
