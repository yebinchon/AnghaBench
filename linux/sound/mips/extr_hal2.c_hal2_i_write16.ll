; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_i_write16.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_i_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.hal2_ctl_regs* }
%struct.hal2_ctl_regs = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*, i32, i32)* @hal2_i_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_i_write16(%struct.snd_hal2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_hal2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal2_ctl_regs*, align 8
  store %struct.snd_hal2* %0, %struct.snd_hal2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_hal2*, %struct.snd_hal2** %4, align 8
  %9 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %8, i32 0, i32 0
  %10 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %9, align 8
  store %struct.hal2_ctl_regs* %10, %struct.hal2_ctl_regs** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %13 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %12, i32 0, i32 4
  %14 = call i32 @hal2_write(i32 %11, i32* %13)
  %15 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %16 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %15, i32 0, i32 3
  %17 = call i32 @hal2_write(i32 0, i32* %16)
  %18 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %19 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %18, i32 0, i32 2
  %20 = call i32 @hal2_write(i32 0, i32* %19)
  %21 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %22 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %21, i32 0, i32 1
  %23 = call i32 @hal2_write(i32 0, i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @H2_WRITE_ADDR(i32 %24)
  %26 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %27 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %26, i32 0, i32 0
  %28 = call i32 @hal2_write(i32 %25, i32* %27)
  %29 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %30 = call i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs* %29)
  ret void
}

declare dso_local i32 @hal2_write(i32, i32*) #1

declare dso_local i32 @H2_WRITE_ADDR(i32) #1

declare dso_local i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
