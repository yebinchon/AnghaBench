; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_mpu401_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_mpu401_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i32 }
%struct.emu10k1x_midi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu10k1x*, %struct.emu10k1x_midi*, i32, i32)* @mpu401_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_write(%struct.emu10k1x* %0, %struct.emu10k1x_midi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca %struct.emu10k1x_midi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.emu10k1x* %0, %struct.emu10k1x** %5, align 8
  store %struct.emu10k1x_midi* %1, %struct.emu10k1x_midi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %10 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %11 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %9, i64 %15, i32 0, i32 %16)
  ret void
}

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
