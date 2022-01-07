; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_check_exit_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_check_exit_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_midi = type { i64, i32, i32 }

@register_lock = common dso_local global i32 0, align 4
@midi_devs = common dso_local global i32** null, align 8
@max_midi_devs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_check_exit_port(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_midi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.seq_oss_midi* @find_slot(i32 %8, i32 %9)
  store %struct.seq_oss_midi* %10, %struct.seq_oss_midi** %5, align 8
  %11 = icmp ne %struct.seq_oss_midi* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @register_lock, i64 %13)
  %15 = load i32**, i32*** @midi_devs, align 8
  %16 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %17 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32*, i32** %15, i64 %18
  store i32* null, i32** %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %20)
  %22 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %23 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %22, i32 0, i32 2
  %24 = call i32 @snd_use_lock_free(i32* %23)
  %25 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %26 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %25, i32 0, i32 2
  %27 = call i32 @snd_use_lock_sync(i32* %26)
  %28 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %29 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_midi_event_free(i32 %30)
  %32 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %33 = call i32 @kfree(%struct.seq_oss_midi* %32)
  br label %34

34:                                               ; preds = %12, %2
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @register_lock, i64 %35)
  %37 = load i32, i32* @max_midi_devs, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32**, i32*** @midi_devs, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %39

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @max_midi_devs, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %57)
  ret i32 0
}

declare dso_local %struct.seq_oss_midi* @find_slot(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @snd_use_lock_sync(i32*) #1

declare dso_local i32 @snd_midi_event_free(i32) #1

declare dso_local i32 @kfree(%struct.seq_oss_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
