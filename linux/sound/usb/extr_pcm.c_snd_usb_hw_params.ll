; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.audioformat = type { i32, i32 }

@snd_usb_use_vmalloc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"cannot set format: format = %#x, rate = %d, channels = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UAC3_PD_STATE_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_usb_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %12, align 8
  store %struct.snd_usb_substream* %13, %struct.snd_usb_substream** %6, align 8
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %15 = call i32 @snd_media_start_pipeline(%struct.snd_usb_substream* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %136

20:                                               ; preds = %2
  %21 = load i64, i64* @snd_usb_use_vmalloc, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %25)
  %27 = call i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream* %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %29, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %132

37:                                               ; preds = %33
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %39 = call i32 @params_format(%struct.snd_pcm_hw_params* %38)
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %42)
  %44 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %45 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %47 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %46)
  %48 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %49 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %51 = call i32 @params_periods(%struct.snd_pcm_hw_params* %50)
  %52 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %53 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %55 = call i32 @params_channels(%struct.snd_pcm_hw_params* %54)
  %56 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %57 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %59 = call i32 @params_rate(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %61 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %63 = call %struct.audioformat* @find_format(%struct.snd_usb_substream* %62)
  store %struct.audioformat* %63, %struct.audioformat** %7, align 8
  %64 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %65 = icmp ne %struct.audioformat* %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %37
  %67 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %68 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %67, i32 0, i32 7
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %72 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %75 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %78 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %132

83:                                               ; preds = %37
  %84 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %85 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @snd_usb_lock_shutdown(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %132

93:                                               ; preds = %83
  %94 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %95 = load i32, i32* @UAC3_PD_STATE_D0, align 4
  %96 = call i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %120

100:                                              ; preds = %93
  %101 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %102 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %103 = call i32 @set_format(%struct.snd_usb_substream* %101, %struct.audioformat* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %120

107:                                              ; preds = %100
  %108 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %109 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %112 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %114 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %117 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %119 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %107, %106, %99
  %121 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %122 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @snd_usb_unlock_shutdown(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %136

132:                                              ; preds = %129, %92, %66, %36
  %133 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %134 = call i32 @snd_media_stop_pipeline(%struct.snd_usb_substream* %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %130, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @snd_media_start_pipeline(%struct.snd_usb_substream*) #1

declare dso_local i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.audioformat* @find_format(%struct.snd_usb_substream*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_usb_lock_shutdown(i32) #1

declare dso_local i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @set_format(%struct.snd_usb_substream*, %struct.audioformat*) #1

declare dso_local i32 @snd_usb_unlock_shutdown(i32) #1

declare dso_local i32 @snd_media_stop_pipeline(%struct.snd_usb_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
