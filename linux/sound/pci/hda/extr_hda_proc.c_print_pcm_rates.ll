; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pcm_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_pcm_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }

@print_pcm_rates.rates = internal global [12 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 384000], align 16
@AC_SUPPCM_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"    rates [0x%x]:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, i32)* @print_pcm_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pcm_rates(%struct.snd_info_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_info_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AC_SUPPCM_RATES, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %4, align 4
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([12 x i32], [12 x i32]* @print_pcm_rates.rates, i64 0, i64 0))
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* @print_pcm_rates.rates, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
