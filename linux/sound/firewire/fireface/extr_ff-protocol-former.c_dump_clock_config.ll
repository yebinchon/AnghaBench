; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_dump_clock_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_dump_clock_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32 }
%struct.snd_info_buffer = type { i32 }

@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@FORMER_REG_CLOCK_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Output S/PDIF format: %s (Emphasis: %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Professional\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Consumer\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Optical output interface format: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"S/PDIF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ADAT\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Word output single speed: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"S/PDIF input interface: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Coaxial\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Clock configuration: %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, %struct.snd_info_buffer*)* @dump_clock_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_clock_config(%struct.snd_ff* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %15 = load i32, i32* @FORMER_REG_CLOCK_CONFIG, align 4
  %16 = call i32 @snd_fw_transaction(i32 %13, i32 %14, i32 %15, i32* %5, i32 4, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 32
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 64
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %33)
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 256
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 8192
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %48 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %47)
  %49 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 512
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @parse_clock_bits(i32 %56, i32* %7, i32* %8)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %20
  br label %72

61:                                               ; preds = %20
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @snd_ff_proc_get_clk_label(i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %67, %66, %60, %19
  ret void
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @parse_clock_bits(i32, i32*, i32*) #1

declare dso_local i8* @snd_ff_proc_get_clk_label(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
