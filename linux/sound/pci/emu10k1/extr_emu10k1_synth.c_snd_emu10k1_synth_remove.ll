; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_seq_device = type { %struct.snd_emux* }
%struct.snd_emux = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_emu10k1_synth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_synth_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %8)
  store %struct.snd_seq_device* %9, %struct.snd_seq_device** %4, align 8
  %10 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %11 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %10, i32 0, i32 0
  %12 = load %struct.snd_emux*, %struct.snd_emux** %11, align 8
  %13 = icmp eq %struct.snd_emux* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %16, i32 0, i32 0
  %18 = load %struct.snd_emux*, %struct.snd_emux** %17, align 8
  store %struct.snd_emux* %18, %struct.snd_emux** %5, align 8
  %19 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 0
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %20, align 8
  store %struct.snd_emu10k1* %21, %struct.snd_emu10k1** %6, align 8
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %35 = call i32 @snd_emux_free(%struct.snd_emux* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %15, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emux_free(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
