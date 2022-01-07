; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_podhd.c_podhd_dev_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_podhd.c_podhd_dev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_podhd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"read request failed (error %d)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"receive length failed (error %d)\0A\00", align 1
@USB_REQ_SET_FEATURE = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_podhd*)* @podhd_dev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @podhd_dev_start(%struct.usb_line6_podhd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6_podhd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  store %struct.usb_line6_podhd* %0, %struct.usb_line6_podhd** %3, align 8
  %8 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %3, align 8
  %9 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 8, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = call i32 @usb_sndctrlpipe(%struct.usb_device* %21, i32 0)
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_DIR_OUT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LINE6_TIMEOUT, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @usb_control_msg(%struct.usb_device* %20, i32 %22, i32 103, i32 %27, i32 17, i32 0, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %3, align 8
  %36 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %113

41:                                               ; preds = %19
  %42 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %43 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %44 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %43, i32 0)
  %45 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %46 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @USB_DIR_IN, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @LINE6_TIMEOUT, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32 @usb_control_msg(%struct.usb_device* %42, i32 %44, i32 103, i32 %49, i32 17, i32 0, i32* %50, i32 3, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  %58 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %3, align 8
  %59 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %113

64:                                               ; preds = %41
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 0
  %78 = or i32 %73, %77
  %79 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %3, align 8
  %80 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %96, %64
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 16
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %3, align 8
  %86 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %85, i32 0, i32 1
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 8, %87
  %89 = add nsw i32 61440, %88
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @line6_read_data(%struct.TYPE_2__* %86, i32 %89, i32* %90, i32 8)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %113

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %102 = call i32 @usb_sndctrlpipe(%struct.usb_device* %101, i32 0)
  %103 = load i32, i32* @USB_REQ_SET_FEATURE, align 4
  %104 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %105 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @USB_DIR_OUT, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @LINE6_TIMEOUT, align 4
  %110 = load i32, i32* @HZ, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i32 @usb_control_msg(%struct.usb_device* %100, i32 %102, i32 %103, i32 %108, i32 1, i32 0, i32* null, i32 0, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %99, %94, %57, %34
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %16
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @line6_read_data(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
