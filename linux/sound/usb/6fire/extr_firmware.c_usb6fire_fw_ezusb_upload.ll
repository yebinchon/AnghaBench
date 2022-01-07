; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ezusb_upload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ezusb_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.ihex_record = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error requesting ezusb firmware %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"error validating ezusb firmware %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to upload ezusb firmware %s: begin message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"unable to upload ezusb firmware %s: data urb.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"unable to upload ezusb firmware %s: post urb.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"unable to upload ezusb firmware %s: end message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i8*, i32, i32*, i32)* @usb6fire_fw_ezusb_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_fw_ezusb_upload(%struct.usb_interface* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca %struct.firmware*, align 8
  %16 = alloca %struct.ihex_record*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %14, align 8
  store %struct.firmware* null, %struct.firmware** %15, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ihex_record* @kmalloc(i32 24, i32 %19)
  store %struct.ihex_record* %20, %struct.ihex_record** %16, align 8
  %21 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %22 = icmp ne %struct.ihex_record* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %136

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = call i32 @request_firmware(%struct.firmware** %15, i8* %27, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %35 = call i32 @kfree(%struct.ihex_record* %34)
  %36 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %136

41:                                               ; preds = %26
  %42 = load %struct.firmware*, %struct.firmware** %15, align 8
  %43 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %44 = call i32 @usb6fire_fw_ihex_init(%struct.firmware* %42, %struct.ihex_record* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %49 = call i32 @kfree(%struct.ihex_record* %48)
  %50 = load %struct.firmware*, %struct.firmware** %15, align 8
  %51 = call i32 @release_firmware(%struct.firmware* %50)
  %52 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %136

57:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  %58 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %59 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %58, i32 160, i32 58880, i32* %13, i32 1)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %64 = call i32 @kfree(%struct.ihex_record* %63)
  %65 = load %struct.firmware*, %struct.firmware** %15, align 8
  %66 = call i32 @release_firmware(%struct.firmware* %65)
  %67 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %67, i32 0, i32 0
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %136

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %101, %72
  %74 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %75 = call i64 @usb6fire_fw_ihex_next_record(%struct.ihex_record* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %79 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %80 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %83 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %86 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %78, i32 160, i32 %81, i32* %84, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %77
  %92 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %93 = call i32 @kfree(%struct.ihex_record* %92)
  %94 = load %struct.firmware*, %struct.firmware** %15, align 8
  %95 = call i32 @release_firmware(%struct.firmware* %94)
  %96 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %136

101:                                              ; preds = %77
  br label %73

102:                                              ; preds = %73
  %103 = load %struct.firmware*, %struct.firmware** %15, align 8
  %104 = call i32 @release_firmware(%struct.firmware* %103)
  %105 = load %struct.ihex_record*, %struct.ihex_record** %16, align 8
  %106 = call i32 @kfree(%struct.ihex_record* %105)
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %110, i32 160, i32 %111, i32* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 0
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  br label %136

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %102
  store i32 0, i32* %13, align 4
  %125 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %126 = call i32 @usb6fire_fw_ezusb_write(%struct.usb_device* %125, i32 160, i32 58880, i32* %13, i32 1)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %6, align 4
  br label %136

135:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %129, %117, %91, %62, %47, %33, %23
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ihex_record* @kmalloc(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.ihex_record*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @usb6fire_fw_ihex_init(%struct.firmware*, %struct.ihex_record*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @usb6fire_fw_ezusb_write(%struct.usb_device*, i32, i32, i32*, i32) #1

declare dso_local i64 @usb6fire_fw_ihex_next_record(%struct.ihex_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
