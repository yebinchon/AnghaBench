; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_helper.c_snd_usb_ctl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_helper.c_snd_usb_ctl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_ctl_msg(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* null, i8** %19, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @snd_usb_pipe_sanity_check(%struct.usb_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %82

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmemdup(i8* %32, i32 %33, i32 %34)
  store i8* %35, i8** %19, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %82

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @USB_DIR_IN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  store i32 %48, i32* %20, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i8*, i8** %19, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @usb_control_msg(%struct.usb_device* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i8* %58, i32 %59, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load i8*, i8** %16, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @memcpy(i8* %65, i8* %66, i32 %67)
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @kfree(i8* %69)
  br label %71

71:                                               ; preds = %64, %51
  %72 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @snd_usb_ctl_msg_quirk(%struct.usb_device* %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i8* %78, i32 %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %71, %38, %25
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i64 @snd_usb_pipe_sanity_check(%struct.usb_device*, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @snd_usb_ctl_msg_quirk(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
