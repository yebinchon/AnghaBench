; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_spdif_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_spdif_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ADAT Locked : %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ADAT Unlocked\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SPDIF Locked : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SPDIF Unlocked\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CD-ROM S/PDIF In\00", align 1
@CDCS = common dso_local global i32 0, align 4
@CDSRCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Optical or Coax S/PDIF In\00", align 1
@GPSCS = common dso_local global i32 0, align 4
@GPSRCS = common dso_local global i32 0, align 4
@SRCS_ESTSAMPLERATE = common dso_local global i32 0, align 4
@SRCS_RATELOCKED = common dso_local global i32 0, align 4
@ZVSRCS = common dso_local global i32 0, align 4
@val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1_proc_spdif_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_spdif_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %10, align 8
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %5, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %19, i32 56, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %25, i32 42, i32* %6)
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %28 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %27, i32 43, i32* %7)
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 5
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = sdiv i32 24576000, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %18
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %24
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %43 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %42, i32 32, i32* %6)
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %49 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %48, i32 40, i32* %6)
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %51 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %50, i32 41, i32* %7)
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 5
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 24576000, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %41
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %47
  br label %76

65:                                               ; preds = %2
  %66 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = load i32, i32* @CDCS, align 4
  %69 = load i32, i32* @CDSRCS, align 4
  %70 = call i32 @snd_emu10k1_proc_spdif_status(%struct.snd_emu10k1* %66, %struct.snd_info_buffer* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = load i32, i32* @GPSCS, align 4
  %74 = load i32, i32* @GPSRCS, align 4
  %75 = call i32 @snd_emu10k1_proc_spdif_status(%struct.snd_emu10k1* %71, %struct.snd_info_buffer* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1*, i32, i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_emu10k1_proc_spdif_status(%struct.snd_emu10k1*, %struct.snd_info_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
