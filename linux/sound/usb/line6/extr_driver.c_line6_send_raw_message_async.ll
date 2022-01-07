; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_send_raw_message_async.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_send_raw_message_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32 }
%struct.message = type { i8*, i32, i64, %struct.usb_line6* }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_send_raw_message_async(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.message*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.message* @kmalloc(i32 32, i32 %10)
  store %struct.message* %11, %struct.message** %8, align 8
  %12 = load %struct.message*, %struct.message** %8, align 8
  %13 = icmp eq %struct.message* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %18)
  store %struct.urb* %19, %struct.urb** %9, align 8
  %20 = load %struct.urb*, %struct.urb** %9, align 8
  %21 = icmp eq %struct.urb* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.message*, %struct.message** %8, align 8
  %24 = call i32 @kfree(%struct.message* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %29 = load %struct.message*, %struct.message** %8, align 8
  %30 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 3
  store %struct.usb_line6* %28, %struct.usb_line6** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.message*, %struct.message** %8, align 8
  %33 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.message*, %struct.message** %8, align 8
  %36 = getelementptr inbounds %struct.message, %struct.message* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.message*, %struct.message** %8, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.message*, %struct.message** %8, align 8
  %40 = load %struct.urb*, %struct.urb** %9, align 8
  %41 = call i32 @line6_send_raw_message_async_part(%struct.message* %39, %struct.urb* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %27, %22, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.message* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.message*) #1

declare dso_local i32 @line6_send_raw_message_async_part(%struct.message*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
