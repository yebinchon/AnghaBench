; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_proc.c_snd_emux_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_proc.c_snd_emux_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_info_entry = type { %struct.TYPE_4__, %struct.snd_emux*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"wavetableD%d\00", align 1
@SNDRV_INFO_CONTENT_TEXT = common dso_local global i32 0, align 4
@snd_emux_proc_info_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_proc_init(%struct.snd_emux* %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_info_entry*, align 8
  %8 = alloca [64 x i8], align 16
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_card* %1, %struct.snd_card** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %14 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %15 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.snd_card* %12, i8* %13, i32 %16)
  store %struct.snd_info_entry* %17, %struct.snd_info_entry** %7, align 8
  %18 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %19 = icmp eq %struct.snd_info_entry* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* @SNDRV_INFO_CONTENT_TEXT, align 4
  %23 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %24 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %26 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %27 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %26, i32 0, i32 1
  store %struct.snd_emux* %25, %struct.snd_emux** %27, align 8
  %28 = load i32, i32* @snd_emux_proc_info_read, align 4
  %29 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %30 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  br label %33

33:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.snd_info_entry* @snd_info_create_card_entry(%struct.snd_card*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
