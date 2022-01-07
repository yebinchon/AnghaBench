; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_alloc_substreams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_alloc_substreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { i32 }
%struct.snd_rawmidi_str = type { i32, i32 }
%struct.snd_rawmidi_substream = type { i32, i32, i32, %struct.snd_rawmidi_str*, %struct.snd_rawmidi* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi*, %struct.snd_rawmidi_str*, i32, i32)* @snd_rawmidi_alloc_substreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_alloc_substreams(%struct.snd_rawmidi* %0, %struct.snd_rawmidi_str* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca %struct.snd_rawmidi_str*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_rawmidi_substream*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %6, align 8
  store %struct.snd_rawmidi_str* %1, %struct.snd_rawmidi_str** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.snd_rawmidi_substream* @kzalloc(i32 32, i32 %17)
  store %struct.snd_rawmidi_substream* %18, %struct.snd_rawmidi_substream** %10, align 8
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %20 = icmp ne %struct.snd_rawmidi_substream* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %32, i32 0, i32 4
  store %struct.snd_rawmidi* %31, %struct.snd_rawmidi** %33, align 8
  %34 = load %struct.snd_rawmidi_str*, %struct.snd_rawmidi_str** %7, align 8
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %35, i32 0, i32 3
  store %struct.snd_rawmidi_str* %34, %struct.snd_rawmidi_str** %36, align 8
  %37 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %38 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %37, i32 0, i32 2
  %39 = load %struct.snd_rawmidi_str*, %struct.snd_rawmidi_str** %7, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi_str, %struct.snd_rawmidi_str* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.snd_rawmidi_str*, %struct.snd_rawmidi_str** %7, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi_str, %struct.snd_rawmidi_str* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.snd_rawmidi_substream* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
