; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_usb_stream_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_usb_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@usb_stream_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stream_stop(%struct.usb_stream_kernel* %0) #0 {
  %2 = alloca %struct.usb_stream_kernel*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %2, align 8
  %4 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %5 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @USB_STREAM_NURBS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %16 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_kill_urb(i32 %21)
  %23 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %24 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_kill_urb(i32 %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* @usb_stream_stopped, align 4
  %36 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %37 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = call i32 @msleep(i32 400)
  br label %41

41:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
