; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_gpio_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_gpio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_pcxhr* }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i32 }
%struct.snd_info_buffer = type { i32 }

@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GPI: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GPO: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no firmware loaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @pcxhr_proc_gpio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_proc_gpio_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %9, align 8
  store %struct.snd_pcxhr* %10, %struct.snd_pcxhr** %5, align 8
  %11 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %11, i32 0, i32 0
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %12, align 8
  store %struct.pcxhr_mgr* %13, %struct.pcxhr_mgr** %6, align 8
  %14 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %15 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %23 = call i32 @hr222_read_gpio(%struct.pcxhr_mgr* %22, i32 1, i32* %7)
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %28 = call i32 @hr222_read_gpio(%struct.pcxhr_mgr* %27, i32 0, i32* %7)
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hr222_read_gpio(%struct.pcxhr_mgr*, i32, i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
