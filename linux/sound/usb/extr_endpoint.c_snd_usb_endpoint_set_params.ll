; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i32, i32, i32 }
%struct.snd_usb_endpoint = type { i64, i32, i32, i32, i32, %struct.TYPE_3__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Unable to change format on ep #%x: already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_FILL_MAX = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Setting params for ep #%x (type %d, %d urbs), ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_endpoint_set_params(%struct.snd_usb_endpoint* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.audioformat* %7, %struct.snd_usb_endpoint* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_usb_endpoint*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.audioformat*, align 8
  %19 = alloca %struct.snd_usb_endpoint*, align 8
  %20 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.audioformat* %7, %struct.audioformat** %18, align 8
  store %struct.snd_usb_endpoint* %8, %struct.snd_usb_endpoint** %19, align 8
  %21 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %9
  %26 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %27 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_audio_warn(%struct.TYPE_3__* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %123

35:                                               ; preds = %9
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %37 = call i32 @release_urbs(%struct.snd_usb_endpoint* %36, i32 0)
  %38 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %39 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %42 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 8
  %43 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %44 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %47 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %49 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UAC_EP_CS_ATTR_FILL_MAX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %58 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %60 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %59, i32 0, i32 5
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @snd_usb_get_speed(i32 %63)
  %65 = load i64, i64* @USB_SPEED_FULL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %35
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @get_usb_full_speed_rate(i32 %68)
  %70 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %71 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  br label %77

72:                                               ; preds = %35
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @get_usb_high_speed_rate(i32 %73)
  %75 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %76 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %82 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @INT_MIN, align 4
  %84 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %85 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %87 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %89 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %104 [
    i32 129, label %91
    i32 128, label %101
  ]

91:                                               ; preds = %77
  %92 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.audioformat*, %struct.audioformat** %18, align 8
  %99 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %19, align 8
  %100 = call i32 @data_ep_set_params(%struct.snd_usb_endpoint* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, %struct.audioformat* %98, %struct.snd_usb_endpoint* %99)
  store i32 %100, i32* %20, align 4
  br label %107

101:                                              ; preds = %77
  %102 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %103 = call i32 @sync_ep_set_params(%struct.snd_usb_endpoint* %102)
  store i32 %103, i32* %20, align 4
  br label %107

104:                                              ; preds = %77
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %20, align 4
  br label %107

107:                                              ; preds = %104, %101, %91
  %108 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %109 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %108, i32 0, i32 5
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %112 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %115 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %11, align 8
  %118 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @usb_audio_dbg(%struct.TYPE_3__* %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %120)
  %122 = load i32, i32* %20, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %107, %25
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local i32 @usb_audio_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @release_urbs(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i64 @snd_usb_get_speed(i32) #1

declare dso_local i32 @get_usb_full_speed_rate(i32) #1

declare dso_local i32 @get_usb_high_speed_rate(i32) #1

declare dso_local i32 @data_ep_set_params(%struct.snd_usb_endpoint*, i32, i32, i32, i32, i32, %struct.audioformat*, %struct.snd_usb_endpoint*) #1

declare dso_local i32 @sync_ep_set_params(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @usb_audio_dbg(%struct.TYPE_3__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
