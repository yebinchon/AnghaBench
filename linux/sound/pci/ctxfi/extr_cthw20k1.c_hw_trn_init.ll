; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_trn_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_trn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trn_conf = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"Wrong device page table page address!\0A\00", align 1
@PTPALX = common dso_local global i32 0, align 4
@PTPAHX = common dso_local global i32 0, align 4
@TRNCTL = common dso_local global i32 0, align 4
@TRNIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.trn_conf*)* @hw_trn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_trn_init(%struct.hw* %0, %struct.trn_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.trn_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.trn_conf* %1, %struct.trn_conf** %5, align 8
  %9 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %10 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 -1, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.hw*, %struct.hw** %4, align 8
  %15 = getelementptr inbounds %struct.hw, %struct.hw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  store i32 19, i32* %6, align 4
  %21 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %22 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %26 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @upper_32_bits(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.hw*, %struct.hw** %4, align 8
  %32 = load i32, i32* @PTPALX, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @hw_write_20kx(%struct.hw* %31, i32 %32, i32 %33)
  %35 = load %struct.hw*, %struct.hw** %4, align 8
  %36 = load i32, i32* @PTPAHX, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %35, i32 %36, i32 %37)
  %39 = load %struct.hw*, %struct.hw** %4, align 8
  %40 = load i32, i32* @TRNCTL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @hw_write_20kx(%struct.hw* %39, i32 %40, i32 %41)
  %43 = load %struct.hw*, %struct.hw** %4, align 8
  %44 = load i32, i32* @TRNIS, align 4
  %45 = call i32 @hw_write_20kx(%struct.hw* %43, i32 %44, i32 2100225)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %20, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
