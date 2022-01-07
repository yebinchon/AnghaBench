; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_init_efx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_init_efx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_init_efx(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  %4 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %5 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %18 = call i32 @_snd_emu10k1_audigy_init_efx(%struct.snd_emu10k1* %17)
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %21 = call i32 @_snd_emu10k1_init_efx(%struct.snd_emu10k1* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @_snd_emu10k1_audigy_init_efx(%struct.snd_emu10k1*) #1

declare dso_local i32 @_snd_emu10k1_init_efx(%struct.snd_emu10k1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
