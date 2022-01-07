; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_us122l_ctl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_us122l_ctl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32)* @us122l_ctl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us122l_ctl_msg(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %18, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %9
  %25 = load i8*, i8** %17, align 8
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmemdup(i8* %25, i32 %26, i32 %27)
  store i8* %28, i8** %21, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %57

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i8*, i8** %21, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @usb_control_msg(%struct.usb_device* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i8* %42, i32 %43, i32 %44)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %21, align 8
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @memcpy(i8* %49, i8* %50, i32 %51)
  %53 = load i8*, i8** %21, align 8
  %54 = call i32 @kfree(i8* %53)
  br label %55

55:                                               ; preds = %48, %35
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %31
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
