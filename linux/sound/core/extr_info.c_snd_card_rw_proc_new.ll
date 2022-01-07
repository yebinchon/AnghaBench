; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_card_rw_proc_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_card_rw_proc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_info_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { void (%struct.snd_info_entry.0*, %struct.snd_info_buffer*)* }
%struct.snd_info_entry.0 = type opaque
%struct.snd_info_buffer = type opaque
%struct.snd_info_buffer.1 = type opaque
%struct.snd_info_buffer.2 = type opaque
%struct.snd_info_buffer.3 = type opaque

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_rw_proc_new(%struct.snd_card* %0, i8* %1, i8* %2, void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)* %3, void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)*, align 8
  %11 = alloca void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)*, align 8
  %12 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)* %3, void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)** %10, align 8
  store void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)* %4, void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)** %11, align 8
  %13 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_info_entry* @snd_info_create_card_entry(%struct.snd_card* %13, i8* %14, i32 %17)
  store %struct.snd_info_entry* %18, %struct.snd_info_entry** %12, align 8
  %19 = load %struct.snd_info_entry*, %struct.snd_info_entry** %12, align 8
  %20 = icmp ne %struct.snd_info_entry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %5
  %25 = load %struct.snd_info_entry*, %struct.snd_info_entry** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)*, void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)** %10, align 8
  %28 = bitcast void (%struct.snd_info_entry*, %struct.snd_info_buffer.1*)* %27 to void (%struct.snd_info_entry*, %struct.snd_info_buffer.3*)*
  %29 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %25, i8* %26, void (%struct.snd_info_entry*, %struct.snd_info_buffer.3*)* %28)
  %30 = load void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)*, void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)** %11, align 8
  %31 = icmp ne void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.snd_info_entry*, %struct.snd_info_entry** %12, align 8
  %34 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 128
  store i32 %36, i32* %34, align 8
  %37 = load void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)*, void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)** %11, align 8
  %38 = bitcast void (%struct.snd_info_entry*, %struct.snd_info_buffer.2*)* %37 to void (%struct.snd_info_entry.0*, %struct.snd_info_buffer*)*
  %39 = load %struct.snd_info_entry*, %struct.snd_info_entry** %12, align 8
  %40 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store void (%struct.snd_info_entry.0*, %struct.snd_info_buffer*)* %38, void (%struct.snd_info_entry.0*, %struct.snd_info_buffer*)** %42, align 8
  br label %43

43:                                               ; preds = %32, %24
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.snd_info_entry* @snd_info_create_card_entry(%struct.snd_card*, i8*, i32) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, i8*, void (%struct.snd_info_entry*, %struct.snd_info_buffer.3*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
