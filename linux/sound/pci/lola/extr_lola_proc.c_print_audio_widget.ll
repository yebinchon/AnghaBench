; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_print_audio_widget.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_print_audio_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.lola = type { i32 }

@LOLA_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Node 0x%02x %s wcaps 0x%x\0A\00", align 1
@LOLA_PAR_STREAM_FORMATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"  Formats: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.lola*, i32, i8*)* @print_audio_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_audio_widget(%struct.snd_info_buffer* %0, %struct.lola* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.lola*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.lola* %1, %struct.lola** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lola*, %struct.lola** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @LOLA_PAR_AUDIO_WIDGET_CAP, align 4
  %13 = call i32 @lola_read_param(%struct.lola* %10, i32 %11, i32 %12, i32* %9)
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16, i32 %17)
  %19 = load %struct.lola*, %struct.lola** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LOLA_PAR_STREAM_FORMATS, align 4
  %22 = call i32 @lola_read_param(%struct.lola* %19, i32 %20, i32 %21, i32* %9)
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
