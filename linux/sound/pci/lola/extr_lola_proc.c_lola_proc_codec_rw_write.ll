; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_codec_rw_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_codec_rw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.lola* }
%struct.lola = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%u %u %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @lola_proc_codec_rw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_proc_codec_rw_write(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.lola*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %12 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %11, i32 0, i32 0
  %13 = load %struct.lola*, %struct.lola** %12, align 8
  store %struct.lola* %13, %struct.lola** %5, align 8
  br label %14

14:                                               ; preds = %25, %24, %2
  %15 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %17 = call i32 @snd_info_get_line(%struct.snd_info_buffer* %15, i8* %16, i32 64)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10)
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %14

25:                                               ; preds = %20
  %26 = load %struct.lola*, %struct.lola** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.lola*, %struct.lola** %5, align 8
  %32 = getelementptr inbounds %struct.lola, %struct.lola* %31, i32 0, i32 1
  %33 = load %struct.lola*, %struct.lola** %5, align 8
  %34 = getelementptr inbounds %struct.lola, %struct.lola* %33, i32 0, i32 0
  %35 = call i32 @lola_codec_read(%struct.lola* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %32, i32* %34)
  br label %14

36:                                               ; preds = %14
  ret void
}

declare dso_local i32 @snd_info_get_line(%struct.snd_info_buffer*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lola_codec_read(%struct.lola*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
