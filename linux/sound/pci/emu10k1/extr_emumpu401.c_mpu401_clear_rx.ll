; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_mpu401_clear_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_mpu401_clear_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_emu10k1_midi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*)* @mpu401_clear_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_clear_rx(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_midi* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_midi*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_midi* %1, %struct.snd_emu10k1_midi** %4, align 8
  store i32 100000, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %11 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %4, align 8
  %12 = call i64 @mpu401_input_avail(%struct.snd_emu10k1* %10, %struct.snd_emu10k1_midi* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %18 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %4, align 8
  %19 = call i32 @mpu401_read_data(%struct.snd_emu10k1* %17, %struct.snd_emu10k1_midi* %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %14
  ret void
}

declare dso_local i64 @mpu401_input_avail(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local i32 @mpu401_read_data(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
