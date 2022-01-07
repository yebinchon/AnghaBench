; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_init_pci.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.hdac_bus = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Clearing TCSEL\0A\00", align 1
@AZX_PCIREG_TCSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*)* @skl_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_init_pci(%struct.skl_dev* %0) #0 {
  %2 = alloca %struct.skl_dev*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %2, align 8
  %4 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %5 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %4)
  store %struct.hdac_bus* %5, %struct.hdac_bus** %3, align 8
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %7 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %11 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AZX_PCIREG_TCSEL, align 4
  %14 = call i32 @skl_update_pci_byte(i32 %12, i32 %13, i32 7, i32 0)
  ret void
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @skl_update_pci_byte(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
