; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_In04_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_In04_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i_usX2Y_In04Int = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_In04_init(%struct.usX2Ydev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usX2Ydev*, align 8
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @usb_alloc_urb(i32 0, i32 %4)
  %6 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %7 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = icmp ne i32 %5, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kmalloc(i32 21, i32 %13)
  %15 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %16 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = icmp ne i32 %14, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %12
  %22 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %23 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %22, i32 0, i32 3
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %26 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %29 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %32 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_rcvintpipe(i32 %33, i32 4)
  %35 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %36 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @i_usX2Y_In04Int, align 4
  %39 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %40 = call i32 @usb_fill_int_urb(i32 %27, i32 %30, i32 %34, i32 %37, i32 21, i32 %38, %struct.usX2Ydev* %39, i32 10)
  %41 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %42 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @usb_urb_ep_type_check(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %21
  %50 = load %struct.usX2Ydev*, %struct.usX2Ydev** %3, align 8
  %51 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @usb_submit_urb(i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %46, %18, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.usX2Ydev*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i64 @usb_urb_ep_type_check(i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
