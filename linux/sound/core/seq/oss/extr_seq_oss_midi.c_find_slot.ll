; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_find_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_midi = type { i32, i32, i32 }

@register_lock = common dso_local global i32 0, align 4
@max_midi_devs = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.seq_oss_midi** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seq_oss_midi* (i32, i32)* @find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seq_oss_midi* @find_slot(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_midi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_oss_midi*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @register_lock, i64 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @max_midi_devs, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.seq_oss_midi**, %struct.seq_oss_midi*** @midi_devs, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.seq_oss_midi*, %struct.seq_oss_midi** %16, i64 %18
  %20 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %19, align 8
  store %struct.seq_oss_midi* %20, %struct.seq_oss_midi** %7, align 8
  %21 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %22 = icmp ne %struct.seq_oss_midi* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %25 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %31 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %37 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %36, i32 0, i32 2
  %38 = call i32 @snd_use_lock_use(i32* %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %39)
  %41 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  store %struct.seq_oss_midi* %41, %struct.seq_oss_midi** %3, align 8
  br label %49

42:                                               ; preds = %29, %23, %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %47)
  store %struct.seq_oss_midi* null, %struct.seq_oss_midi** %3, align 8
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %3, align 8
  ret %struct.seq_oss_midi* %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_use_lock_use(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
