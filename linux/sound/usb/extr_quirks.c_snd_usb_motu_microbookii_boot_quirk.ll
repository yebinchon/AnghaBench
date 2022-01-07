; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_motu_microbookii_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_motu_microbookii_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq = internal constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 20, i32 0, i32 0, i32 0, i32 1], align 16
@snd_usb_motu_microbookii_boot_quirk.poll_ready_seq = internal constant [8 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 11, i32 24], align 16
@MICROBOOK_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Waiting for MOTU Microbook II to boot up...\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"failed setting the sample rate for Motu MicroBook II: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed booting Motu MicroBook II: timeout\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"failed booting Motu MicroBook II: communication error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"MOTU MicroBook II ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_motu_microbookii_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_motu_microbookii_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @MICROBOOK_BUF_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kzalloc(i32 %8, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @memcpy(i32* %20, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq, i64 0, i64 0), i32 48)
  store i32 48, i32* %5, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @MICROBOOK_BUF_SIZE, align 4
  %25 = call i32 @snd_usb_motu_microbookii_communicate(%struct.usb_device* %22, i32* %23, i32 %24, i32* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %79

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %73
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = icmp sgt i32 %36, 100
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %79

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @MICROBOOK_BUF_SIZE, align 4
  %47 = call i32 @memset(i32* %45, i32 0, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @memcpy(i32* %48, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @snd_usb_motu_microbookii_boot_quirk.poll_ready_seq, i64 0, i64 0), i32 32)
  store i32 32, i32* %5, align 4
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @MICROBOOK_BUF_SIZE, align 4
  %53 = call i32 @snd_usb_motu_microbookii_communicate(%struct.usb_device* %50, i32* %51, i32 %52, i32* %5)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %79

61:                                               ; preds = %44
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 12
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64, %61
  %74 = call i32 @msleep(i32 100)
  br label %34

75:                                               ; preds = %72
  %76 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 0
  %78 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %56, %38, %28
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @snd_usb_motu_microbookii_communicate(%struct.usb_device*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
