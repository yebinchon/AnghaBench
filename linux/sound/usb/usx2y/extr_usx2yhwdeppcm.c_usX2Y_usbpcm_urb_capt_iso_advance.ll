; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_urb_capt_iso_advance.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_urb_capt_iso_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usX2Y_hwdep_pcm_shm* }
%struct.snd_usX2Y_hwdep_pcm_shm = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.urb = type { i64, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32 }

@NRURBS = common dso_local global i32 0, align 4
@SSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usX2Y_substream*, %struct.urb*)* @usX2Y_usbpcm_urb_capt_iso_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_usbpcm_urb_capt_iso_advance(%struct.snd_usX2Y_substream* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca %struct.snd_usX2Y_hwdep_pcm_shm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %109, %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (...) @nr_of_packs()
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %112

13:                                               ; preds = %9
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 1
  %16 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %16, i64 %18
  store %struct.usb_iso_packet_descriptor* %19, %struct.usb_iso_packet_descriptor** %6, align 8
  %20 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %21 = icmp ne %struct.snd_usX2Y_substream* null, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %13
  %23 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %26, align 8
  store %struct.snd_usX2Y_hwdep_pcm_shm* %27, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %28 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %29 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %34 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %35)
  %37 = icmp sge i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.urb*, %struct.urb** %4, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %47 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i64 %45, i64* %52, align 8
  %53 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %54 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %57 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %64 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %67 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %75 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.snd_usX2Y_hwdep_pcm_shm*, %struct.snd_usX2Y_hwdep_pcm_shm** %7, align 8
  %77 = getelementptr inbounds %struct.snd_usX2Y_hwdep_pcm_shm, %struct.snd_usX2Y_hwdep_pcm_shm* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %39, %13
  %81 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %82 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NRURBS, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i32 (...) @nr_of_packs()
  %87 = mul nsw i32 %85, %86
  %88 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %89 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %93 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32, i32* @SSS, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %80
  %99 = load i32, i32* @SSS, align 4
  %100 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %101 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %105 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %98, %80
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %9

112:                                              ; preds = %9
  ret void
}

declare dso_local i32 @nr_of_packs(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
