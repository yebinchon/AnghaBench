; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_mpu401_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_mpu401_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, i64 }
%struct.snd_emu10k1_midi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i32, i32)* @mpu401_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_write(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_midi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_midi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_emu10k1_midi* %1, %struct.snd_emu10k1_midi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %14, i64 %20, i32 0, i32 %21)
  br label %36

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @outb(i32 %24, i64 %34)
  br label %36

36:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
