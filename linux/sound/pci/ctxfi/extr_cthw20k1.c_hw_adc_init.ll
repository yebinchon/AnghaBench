; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_adc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_adc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64 }
%struct.adc_conf = type { i32, i32 }

@CTSB055X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.adc_conf*)* @hw_adc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_adc_init(%struct.hw* %0, %struct.adc_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.adc_conf*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.adc_conf* %1, %struct.adc_conf** %5, align 8
  %6 = load %struct.hw*, %struct.hw** %4, align 8
  %7 = getelementptr inbounds %struct.hw, %struct.hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CTSB055X, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.hw*, %struct.hw** %4, align 8
  %13 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %14 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %17 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @adc_init_SB055x(%struct.hw* %12, i32 %15, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.hw*, %struct.hw** %4, align 8
  %22 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %23 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %26 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @adc_init_SBx(%struct.hw* %21, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @adc_init_SB055x(%struct.hw*, i32, i32) #1

declare dso_local i32 @adc_init_SBx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
