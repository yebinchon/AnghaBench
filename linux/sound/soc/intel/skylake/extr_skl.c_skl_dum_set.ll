; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_dum_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_dum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }

@GCTL = common dso_local global i32 0, align 4
@AZX_GCTL_RESET = common dso_local global i32 0, align 4
@VS_EM2 = common dso_local global i32 0, align 4
@AZX_VS_EM2_DUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_bus*)* @skl_dum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_dum_set(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %3 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %4 = load i32, i32* @GCTL, align 4
  %5 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %3, i32 %4)
  %6 = load i32, i32* @AZX_GCTL_RESET, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %11 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @skl_enable_miscbdcge(i32 %12, i32 0)
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %15 = call i32 @snd_hdac_bus_exit_link_reset(%struct.hdac_bus* %14)
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @skl_enable_miscbdcge(i32 %18, i32 1)
  br label %20

20:                                               ; preds = %9, %1
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %22 = load i32, i32* @VS_EM2, align 4
  %23 = load i32, i32* @AZX_VS_EM2_DUM, align 4
  %24 = load i32, i32* @AZX_VS_EM2_DUM, align 4
  %25 = call i32 @snd_hdac_chip_updatel(%struct.hdac_bus* %21, i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i32 @skl_enable_miscbdcge(i32, i32) #1

declare dso_local i32 @snd_hdac_bus_exit_link_reset(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_chip_updatel(%struct.hdac_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
