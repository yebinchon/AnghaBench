; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_get_static_ip_address.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_get_static_ip_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPI_COBRANET_HMI_cobra_ip_mon_staticIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_cobranet_get_static_ip_address(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HPI_COBRANET_HMI_cobra_ip_mon_staticIP, align 4
  %10 = call i64 @hpi_cobranet_hmi_read(i32 %8, i32 %9, i32 4, i32* %5, i32* %6)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, -16777216
  %13 = lshr i32 %12, 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 16711680
  %16 = shl i32 %15, 8
  %17 = or i32 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65280
  %20 = ashr i32 %19, 8
  %21 = or i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 8
  %25 = or i32 %21, %24
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i64, i64* %7, align 8
  ret i64 %32
}

declare dso_local i64 @hpi_cobranet_hmi_read(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
