; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"write request failed (error %d)\0A\00", align 1
@LINE6_READ_WRITE_MAX_RETRIES = common dso_local global i32 0, align 4
@LINE6_READ_WRITE_STATUS_DELAY = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"receiving status failed (error %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"write failed after %d retries\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"write failed (error %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_write_data(%struct.usb_line6* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_line6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ugt i32 %20, 65535
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %128

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 1, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %128

33:                                               ; preds = %25
  %34 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %36 = call i32 @usb_sndctrlpipe(%struct.usb_device* %35, i32 0)
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LINE6_TIMEOUT, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @usb_control_msg(%struct.usb_device* %34, i32 %36, i32 103, i32 %41, i32 34, i32 %42, i8* %43, i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %33
  %52 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %53 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %124

57:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %93, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @LINE6_READ_WRITE_MAX_RETRIES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* @LINE6_READ_WRITE_STATUS_DELAY, align 4
  %64 = call i32 @mdelay(i32 %63)
  %65 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %67 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %66, i32 0)
  %68 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %69 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @USB_DIR_IN, align 4
  %72 = or i32 %70, %71
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* @LINE6_TIMEOUT, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 %74, %75
  %77 = call i32 @usb_control_msg(%struct.usb_device* %65, i32 %67, i32 103, i32 %72, i32 18, i32 0, i8* %73, i32 1, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %62
  %81 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %82 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %124

86:                                               ; preds = %62
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 255
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %96

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %58

96:                                               ; preds = %91, %58
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 255
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %103 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %123

109:                                              ; preds = %96
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %116 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %114, %109
  br label %123

123:                                              ; preds = %122, %101
  br label %124

124:                                              ; preds = %123, %80, %51
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @kfree(i8* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %30, %22
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
