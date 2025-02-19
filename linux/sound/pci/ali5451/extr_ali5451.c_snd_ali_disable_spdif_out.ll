; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_spdif_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_spdif_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ALI_SCTRL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_ENABLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*)* @snd_ali_disable_spdif_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_disable_spdif_out(%struct.snd_ali* %0) #0 {
  %2 = alloca %struct.snd_ali*, align 8
  %3 = alloca i8, align 1
  store %struct.snd_ali* %0, %struct.snd_ali** %2, align 8
  %4 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %5 = load i32, i32* @ALI_SCTRL, align 4
  %6 = call i32 @ALI_REG(%struct.snd_ali* %4, i32 %5)
  %7 = call zeroext i8 @inb(i32 %6)
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @ALI_SPDIF_OUT_ENABLE, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = trunc i32 %13 to i8
  %15 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %16 = load i32, i32* @ALI_SCTRL, align 4
  %17 = call i32 @ALI_REG(%struct.snd_ali* %15, i32 %16)
  %18 = call i32 @outb(i8 zeroext %14, i32 %17)
  %19 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %20 = call i32 @snd_ali_disable_spdif_chnout(%struct.snd_ali* %19)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @snd_ali_disable_spdif_chnout(%struct.snd_ali*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
