; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-proc.c_proc_read_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-proc.c_proc_read_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_tscm* }
%struct.snd_tscm = type { i32 }
%struct.snd_info_buffer = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_FIRMWARE_REGISTER = common dso_local global i64 0, align 8
@TSCM_OFFSET_FIRMWARE_FPGA = common dso_local global i64 0, align 8
@TSCM_OFFSET_FIRMWARE_ARM = common dso_local global i64 0, align 8
@TSCM_OFFSET_FIRMWARE_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Register: %d (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FPGA:     %d (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ARM:      %d (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Hardware: %d (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_firmware(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_tscm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %13 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %12, i32 0, i32 0
  %14 = load %struct.snd_tscm*, %struct.snd_tscm** %13, align 8
  store %struct.snd_tscm* %14, %struct.snd_tscm** %5, align 8
  %15 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %16 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %19 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %20 = load i64, i64* @TSCM_OFFSET_FIRMWARE_REGISTER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @snd_fw_transaction(i32 %17, i32 %18, i64 %21, i32* %6, i32 4, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %91

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %30 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %33 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %34 = load i64, i64* @TSCM_OFFSET_FIRMWARE_FPGA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @snd_fw_transaction(i32 %31, i32 %32, i64 %35, i32* %6, i32 4, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %91

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %44 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %47 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %48 = load i64, i64* @TSCM_OFFSET_FIRMWARE_ARM, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @snd_fw_transaction(i32 %45, i32 %46, i64 %49, i32* %6, i32 4, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %91

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %58 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %61 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %62 = load i64, i64* @TSCM_OFFSET_FIRMWARE_HW, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @snd_fw_transaction(i32 %59, i32 %60, i64 %63, i32* %6, i32 4, i32 0)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %91

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 65535
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @snd_iprintf(%struct.snd_info_buffer* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 65535
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @snd_iprintf(%struct.snd_info_buffer* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @snd_iprintf(%struct.snd_info_buffer* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = lshr i32 %87, 16
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @snd_iprintf(%struct.snd_info_buffer* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %68, %67, %53, %39, %25
  ret void
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
