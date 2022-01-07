; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_link_dst_src_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_link_dst_src_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 63
  %11 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %7, i32 0, i32 %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 63
  %15 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %12, i32 1, i32 %14)
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 63
  %20 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %16, i32 2, i32 %19)
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 63
  %24 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %21, i32 3, i32 %23)
  ret i32 0
}

declare dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
