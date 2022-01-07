; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_voices_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_voices_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.snd_emu10k1_voice* }
%struct.snd_emu10k1_voice = type { i32, i32, i32, i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ch\09use\09pcm\09efx\09synth\09midi\0A\00", align 1
@NUM_G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%i\09%i\09%i\09%i\09%i\09%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1_proc_voices_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_voices_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_voice*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %5, align 8
  %11 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %12 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NUM_G, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %20, i64 %22
  store %struct.snd_emu10k1_voice* %23, %struct.snd_emu10k1_voice** %6, align 8
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %13

45:                                               ; preds = %13
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
