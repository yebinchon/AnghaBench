; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_subs_set_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_subs_set_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { void (%struct.urb*)* }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb**, void (%struct.urb*)*)* @subs_set_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subs_set_complete(%struct.urb** %0, void (%struct.urb*)* %1) #0 {
  %3 = alloca %struct.urb**, align 8
  %4 = alloca void (%struct.urb*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.urb** %0, %struct.urb*** %3, align 8
  store void (%struct.urb*)* %1, void (%struct.urb*)** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @USB_STREAM_NURBS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.urb**, %struct.urb*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.urb*, %struct.urb** %12, i64 %14
  %16 = load %struct.urb*, %struct.urb** %15, align 8
  store %struct.urb* %16, %struct.urb** %6, align 8
  %17 = load void (%struct.urb*)*, void (%struct.urb*)** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  store void (%struct.urb*)* %17, void (%struct.urb*)** %19, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
