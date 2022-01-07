; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4_cr_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4_cr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sb*, i32, i32)* @snd_als4_cr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_als4_cr_write(%struct.snd_sb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = or i32 %8, 192
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @snd_sbmixer_write(%struct.snd_sb* %7, i32 %9, i32 %10)
  ret void
}

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
