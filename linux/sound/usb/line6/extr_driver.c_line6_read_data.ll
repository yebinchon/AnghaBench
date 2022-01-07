; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_read_data.c"
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
@.str = private unnamed_addr constant [32 x i8] c"read request failed (error %d)\0A\00", align 1
@LINE6_READ_WRITE_MAX_RETRIES = common dso_local global i32 0, align 4
@LINE6_READ_WRITE_STATUS_DELAY = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"receive length failed (error %d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"read failed after %d retries\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"length mismatch (expected %d, got %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"read failed (error %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_read_data(%struct.usb_line6* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %154

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
  br label %154

33:                                               ; preds = %25
  %34 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %36 = call i32 @usb_sndctrlpipe(%struct.usb_device* %35, i32 0)
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %43, 33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LINE6_TIMEOUT, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @usb_control_msg(%struct.usb_device* %34, i32 %36, i32 103, i32 %41, i32 %44, i32 %45, i8* null, i32 0, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %33
  %53 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %54 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %150

58:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %94, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @LINE6_READ_WRITE_MAX_RETRIES, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = load i32, i32* @LINE6_READ_WRITE_STATUS_DELAY, align 4
  %65 = call i32 @mdelay(i32 %64)
  %66 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %67 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %68 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %67, i32 0)
  %69 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %70 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @USB_DIR_IN, align 4
  %73 = or i32 %71, %72
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* @LINE6_TIMEOUT, align 4
  %76 = load i32, i32* @HZ, align 4
  %77 = mul nsw i32 %75, %76
  %78 = call i32 @usb_control_msg(%struct.usb_device* %66, i32 %68, i32 103, i32 %73, i32 18, i32 0, i8* %74, i32 1, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %63
  %82 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %83 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %150

87:                                               ; preds = %63
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 255
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %97

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %59

97:                                               ; preds = %92, %59
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %11, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %106 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %150

110:                                              ; preds = %97
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %118 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %123)
  br label %150

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %128 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %129 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %128, i32 0)
  %130 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %131 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @USB_DIR_IN, align 4
  %134 = or i32 %132, %133
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @LINE6_TIMEOUT, align 4
  %138 = load i32, i32* @HZ, align 4
  %139 = mul nsw i32 %137, %138
  %140 = call i32 @usb_control_msg(%struct.usb_device* %127, i32 %129, i32 103, i32 %134, i32 19, i32 0, i8* %135, i32 %136, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %145 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %143, %126
  br label %150

150:                                              ; preds = %149, %116, %104, %81, %52
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %30, %22
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
