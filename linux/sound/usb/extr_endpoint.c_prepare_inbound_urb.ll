; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_inbound_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_inbound_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_urb_ctx = type { i32, %struct.urb* }
%struct.urb = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*)* @prepare_inbound_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_inbound_urb(%struct.snd_usb_endpoint* %0, %struct.snd_urb_ctx* %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca %struct.snd_urb_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store %struct.snd_urb_ctx* %1, %struct.snd_urb_ctx** %4, align 8
  %8 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %8, i32 0, i32 1
  %10 = load %struct.urb*, %struct.urb** %9, align 8
  store %struct.urb* %10, %struct.urb** %7, align 8
  %11 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.urb*, %struct.urb** %7, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %79 [
    i32 129, label %21
    i32 128, label %64
  ]

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 4
  %37 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %39, i32* %46, align 4
  %47 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %48 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.urb*, %struct.urb** %7, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %79

64:                                               ; preds = %2
  %65 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %66 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @min(i32 4, i32 %67)
  %69 = load %struct.urb*, %struct.urb** %7, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.urb*, %struct.urb** %7, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %2, %64, %55
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
