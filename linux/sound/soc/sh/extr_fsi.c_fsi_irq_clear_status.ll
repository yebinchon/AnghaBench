; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_irq_clear_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_irq_clear_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32, i32 }
%struct.fsi_master = type { i32 }

@int_st = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*)* @fsi_irq_clear_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_irq_clear_status(%struct.fsi_priv* %0) #0 {
  %2 = alloca %struct.fsi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %6 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %5)
  store %struct.fsi_master* %6, %struct.fsi_master** %4, align 8
  %7 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %9 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %8, i32 0, i32 1
  %10 = call i32 @fsi_get_port_shift(%struct.fsi_priv* %7, i32* %9)
  %11 = call i32 @AB_IO(i32 1, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %15 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  %16 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %15, i32 0, i32 0
  %17 = call i32 @fsi_get_port_shift(%struct.fsi_priv* %14, i32* %16)
  %18 = call i32 @AB_IO(i32 1, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %22 = load i32, i32* @int_st, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @fsi_core_mask_set(%struct.fsi_master* %21, i32 %22, i32 %23, i32 0)
  ret void
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @AB_IO(i32, i32) #1

declare dso_local i32 @fsi_get_port_shift(%struct.fsi_priv*, i32*) #1

declare dso_local i32 @fsi_core_mask_set(%struct.fsi_master*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
