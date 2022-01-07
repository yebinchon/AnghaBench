; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_init_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_init_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_urb = type { i32, i32, i64, %struct.hiface_chip* }
%struct.hiface_chip = type { i32 }
%struct.urb = type opaque
%struct.urb.0 = type opaque

@PCM_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_urb*, %struct.hiface_chip*, i32, void (%struct.urb*)*)* @hiface_pcm_init_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiface_pcm_init_urb(%struct.pcm_urb* %0, %struct.hiface_chip* %1, i32 %2, void (%struct.urb*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcm_urb*, align 8
  %7 = alloca %struct.hiface_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.urb*)*, align 8
  store %struct.pcm_urb* %0, %struct.pcm_urb** %6, align 8
  store %struct.hiface_chip* %1, %struct.hiface_chip** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.urb*)* %3, void (%struct.urb*)** %9, align 8
  %10 = load %struct.hiface_chip*, %struct.hiface_chip** %7, align 8
  %11 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %12 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %11, i32 0, i32 3
  store %struct.hiface_chip* %10, %struct.hiface_chip** %12, align 8
  %13 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %14 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %13, i32 0, i32 1
  %15 = call i32 @usb_init_urb(i32* %14)
  %16 = load i32, i32* @PCM_PACKET_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %20 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %22 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %4
  %29 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %30 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %29, i32 0, i32 1
  %31 = load %struct.hiface_chip*, %struct.hiface_chip** %7, align 8
  %32 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hiface_chip*, %struct.hiface_chip** %7, align 8
  %35 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @usb_sndbulkpipe(i32 %36, i32 %37)
  %39 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %40 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* @PCM_PACKET_SIZE, align 4
  %44 = load void (%struct.urb*)*, void (%struct.urb*)** %9, align 8
  %45 = bitcast void (%struct.urb*)* %44 to void (%struct.urb.0*)*
  %46 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %47 = call i32 @usb_fill_bulk_urb(i32* %30, i32 %33, i32 %38, i8* %42, i32 %43, void (%struct.urb.0*)* %45, %struct.pcm_urb* %46)
  %48 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %49 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %48, i32 0, i32 1
  %50 = call i64 @usb_urb_ep_type_check(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %28
  %56 = load %struct.pcm_urb*, %struct.pcm_urb** %6, align 8
  %57 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %56, i32 0, i32 0
  %58 = call i32 @init_usb_anchor(i32* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %52, %25
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i8*, i32, void (%struct.urb.0*)*, %struct.pcm_urb*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i64 @usb_urb_ep_type_check(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
