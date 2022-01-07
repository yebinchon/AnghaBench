; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_dice* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_dice = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_dice*, %struct.snd_dice** %10, align 8
  store %struct.snd_dice* %11, %struct.snd_dice** %4, align 8
  %12 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %13 = call i32 @snd_dice_stream_lock_try(%struct.snd_dice* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = call i32 @init_hw_info(%struct.snd_dice* %18, %struct.snd_pcm_substream* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %89

24:                                               ; preds = %17
  %25 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %26 = call i32 @snd_dice_transaction_get_clock_source(%struct.snd_dice* %25, i32* %5)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %89

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %33 [
    i32 134, label %32
    i32 133, label %32
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 135, label %32
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30
  store i32 0, i32* %6, align 4
  br label %34

33:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %39 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @amdtp_stream_pcm_running(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %37
  %45 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %46 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i64 @amdtp_stream_pcm_running(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %53 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i64 @amdtp_stream_pcm_running(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %60 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = call i64 @amdtp_stream_pcm_running(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %58, %51, %44, %37, %34
  %66 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %67 = call i32 @snd_dice_transaction_get_rate(%struct.snd_dice* %66, i32* %8)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %89

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %58
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %86 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %85)
  br label %87

87:                                               ; preds = %84, %16
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %70, %29, %23
  %90 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %91 = call i32 @snd_dice_stream_lock_release(%struct.snd_dice* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %87
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @snd_dice_stream_lock_try(%struct.snd_dice*) #1

declare dso_local i32 @init_hw_info(%struct.snd_dice*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dice_transaction_get_clock_source(%struct.snd_dice*, i32*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @snd_dice_transaction_get_rate(%struct.snd_dice*, i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dice_stream_lock_release(%struct.snd_dice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
