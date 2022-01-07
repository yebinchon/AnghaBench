; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"emu10k1x_regs\00", align 1
@snd_emu10k1x_proc_reg_read = common dso_local global i32 0, align 4
@snd_emu10k1x_proc_reg_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*)* @snd_emu10k1x_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_proc_init(%struct.emu10k1x* %0) #0 {
  %2 = alloca %struct.emu10k1x*, align 8
  store %struct.emu10k1x* %0, %struct.emu10k1x** %2, align 8
  %3 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %4 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %7 = load i32, i32* @snd_emu10k1x_proc_reg_read, align 4
  %8 = load i32, i32* @snd_emu10k1x_proc_reg_write, align 4
  %9 = call i32 @snd_card_rw_proc_new(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.emu10k1x* %6, i32 %7, i32 %8)
  ret i32 0
}

declare dso_local i32 @snd_card_rw_proc_new(i32, i8*, %struct.emu10k1x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
