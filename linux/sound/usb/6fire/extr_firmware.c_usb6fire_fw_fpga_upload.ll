; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_fpga_upload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_fpga_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i8*, i32 }

@FPGA_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to get fpga firmware %s.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"unable to upload fpga firmware: begin urb.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to upload fpga firmware: fw urb.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"unable to upload fpga firmware: end urb.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i8*)* @usb6fire_fw_fpga_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_fw_fpga_upload(%struct.usb_interface* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.firmware*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load i32, i32* @FPGA_BUFSIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %126

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = call i32 @request_firmware(%struct.firmware** %12, i8* %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %126

39:                                               ; preds = %23
  %40 = load %struct.firmware*, %struct.firmware** %12, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  %43 = load %struct.firmware*, %struct.firmware** %12, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.firmware*, %struct.firmware** %12, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8* %50, i8** %11, align 8
  %51 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %52 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %51, i32 8, i32 0, i32* null, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %39
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.firmware*, %struct.firmware** %12, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %126

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %110, %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @FPGA_BUFSIZE, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %80, label %94

80:                                               ; preds = %78
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = call i32 @bitrev8(i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  br label %70

94:                                               ; preds = %78
  %95 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @usb6fire_fw_fpga_write(%struct.usb_device* %95, i32* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.firmware*, %struct.firmware** %12, align 8
  %103 = call i32 @release_firmware(%struct.firmware* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %126

110:                                              ; preds = %94
  br label %65

111:                                              ; preds = %65
  %112 = load %struct.firmware*, %struct.firmware** %12, align 8
  %113 = call i32 @release_firmware(%struct.firmware* %112)
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %117 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %116, i32 9, i32 0, i32* null, i32 0)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %122 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %120, %101, %55, %30, %20
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb6fire_fw_ezusb_write(%struct.usb_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @usb6fire_fw_fpga_write(%struct.usb_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
