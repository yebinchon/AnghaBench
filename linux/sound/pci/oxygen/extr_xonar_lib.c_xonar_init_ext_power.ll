; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_init_ext_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_init_ext_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__, i32, %struct.xonar_generic* }
%struct.TYPE_2__ = type { i32 }
%struct.xonar_generic = type { i32, i32, i32, i32 }

@OXYGEN_INT_GPIO = common dso_local global i32 0, align 4
@xonar_ext_power_gpio_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_init_ext_power(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_generic*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_generic*, %struct.xonar_generic** %5, align 8
  store %struct.xonar_generic* %6, %struct.xonar_generic** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %9 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %12 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @oxygen_set_bits8(%struct.oxygen* %7, i32 %10, i32 %13)
  %15 = load i32, i32* @OXYGEN_INT_GPIO, align 4
  %16 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @xonar_ext_power_gpio_changed, align 4
  %21 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %22 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @oxygen_read8(%struct.oxygen* %24, i32 %27)
  %29 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %30 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %38 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @oxygen_set_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
