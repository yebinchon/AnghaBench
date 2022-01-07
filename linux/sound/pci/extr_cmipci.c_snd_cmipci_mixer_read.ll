; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_mixer_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_mixer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i64 }

@CM_REG_SB16_ADDR = common dso_local global i64 0, align 8
@CM_REG_SB16_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.cmipci*, i8)* @snd_cmipci_mixer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_cmipci_mixer_read(%struct.cmipci* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cmipci*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cmipci* %0, %struct.cmipci** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %8 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CM_REG_SB16_ADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i8 zeroext %6, i64 %11)
  %13 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %14 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CM_REG_SB16_DATA, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @inb(i64 %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  ret i8 %19
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
