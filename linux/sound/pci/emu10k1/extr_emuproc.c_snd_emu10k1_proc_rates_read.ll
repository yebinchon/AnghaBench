; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_rates_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_rates_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@snd_emu10k1_proc_rates_read.samplerate = internal global [8 x i32] [i32 44100, i32 48000, i32 96000, i32 192000, i32 4, i32 5, i32 6, i32 7], align 16
@CAPTURE_RATE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Channel %d: Rate=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Channel %d: No input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1_proc_rates_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_rates_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
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
  %13 = load i32, i32* @CAPTURE_RATE_STATUS, align 4
  %14 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul i32 %20, 4
  %22 = add i32 16, %21
  %23 = lshr i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 7
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* @snd_emu10k1_proc_rates_read.samplerate, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  br label %40

36:                                               ; preds = %18
  %37 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %15

44:                                               ; preds = %15
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
