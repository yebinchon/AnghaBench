; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_snd_bebob_maudio_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_snd_bebob_maudio_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_device = type { i32, i32, i32, i32 }

@INFO_OFFSET_SW_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Use firmware version 5058 or later\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAUDIO_BOOTLOADER_CUE1 = common dso_local global i32 0, align 4
@MAUDIO_BOOTLOADER_CUE2 = common dso_local global i32 0, align 4
@MAUDIO_BOOTLOADER_CUE3 = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@BEBOB_ADDR_REG_REQ = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to send a cue to load firmware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_maudio_load_firmware(%struct.fw_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %9 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %10 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %9)
  store %struct.fw_device* %10, %struct.fw_device** %4, align 8
  %11 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %12 = load i32, i32* @INFO_OFFSET_SW_DATE, align 4
  %13 = call i32 @snd_bebob_read_block(%struct.fw_unit* %11, i32 %12, i32* %7, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %20, 3616443514368569393
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %24 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %78

28:                                               ; preds = %18
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc_array(i32 3, i32 4, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %28
  %37 = load i32, i32* @MAUDIO_BOOTLOADER_CUE1, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @MAUDIO_BOOTLOADER_CUE2, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MAUDIO_BOOTLOADER_CUE3, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %50 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %53 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %54 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %57 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %60 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BEBOB_ADDR_REG_REQ, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @fw_run_transaction(i32 %51, i32 %52, i32 %55, i32 %58, i32 %61, i32 %62, i32* %63, i32 12)
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @RCODE_COMPLETE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %36
  %71 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %72 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %36
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %33, %22, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @snd_bebob_read_block(%struct.fw_unit*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
