; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_submit_audio_in_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_submit_audio_in_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.urb** }
%struct.urb = type { i32, %struct.snd_line6_pcm*, i64, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"no free URB found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"URB in #%d submission failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_line6_pcm*)* @submit_audio_in_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_audio_in_urb(%struct.snd_line6_pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  %10 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @find_first_zero_bit(i32* %12, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %22, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21, %1
  %30 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %31 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %21
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 %44
  %46 = load %struct.urb*, %struct.urb** %45, align 8
  store %struct.urb* %46, %struct.urb** %8, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %71, %38
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 3
  %54 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %54, i64 %56
  store %struct.usb_iso_packet_descriptor* %57, %struct.usb_iso_packet_descriptor** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %9, align 8
  %60 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %62 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %9, align 8
  %65 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %67 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %51
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %76 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %83 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %78, %86
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.urb*, %struct.urb** %8, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %94 = load %struct.urb*, %struct.urb** %8, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 1
  store %struct.snd_line6_pcm* %93, %struct.snd_line6_pcm** %95, align 8
  %96 = load %struct.urb*, %struct.urb** %8, align 8
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @usb_submit_urb(%struct.urb* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %74
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %104 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %102, i32* %105)
  br label %116

107:                                              ; preds = %74
  %108 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %109 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %101
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %29
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
