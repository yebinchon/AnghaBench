; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_synth_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_synth_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OPL4_MAX_VOICES = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8
@OPL4_DAMP_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl4_synth_reset(%struct.snd_opl4* %0) #0 {
  %2 = alloca %struct.snd_opl4*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %2, align 8
  %5 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %6 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %5, i32 0, i32 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @OPL4_MAX_VOICES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %15 = load i64, i64* @OPL4_REG_MISC, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @OPL4_DAMP_BIT, align 4
  %20 = call i32 @snd_opl4_write(%struct.snd_opl4* %14, i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %26 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %25, i32 0, i32 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %30 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %33 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %36 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @memset(%struct.TYPE_2__* %37, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %62, %24
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @OPL4_MAX_VOICES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %46 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %53 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %60 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.snd_opl4*, %struct.snd_opl4** %2, align 8
  %67 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snd_midi_channel_set_clear(i32 %68)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_midi_channel_set_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
