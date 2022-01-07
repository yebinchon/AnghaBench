; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_trn_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_trn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trn_conf = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Wrong device page table page address!!!\0A\00", align 1
@VMEM_PTPAL = common dso_local global i64 0, align 8
@VMEM_PTPAH = common dso_local global i64 0, align 8
@VMEM_CTL = common dso_local global i64 0, align 8
@TRANSPORT_CTL = common dso_local global i64 0, align 8
@TRANSPORT_INT = common dso_local global i64 0, align 8
@TRANSPORT_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.trn_conf*)* @hw_trn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_trn_init(%struct.hw* %0, %struct.trn_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.trn_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.trn_conf* %1, %struct.trn_conf** %5, align 8
  %11 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %12 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 -1, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.hw*, %struct.hw** %4, align 8
  %17 = getelementptr inbounds %struct.hw, %struct.hw* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_alert(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  store i32 -2147480561, i32* %6, align 4
  %23 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %24 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.trn_conf*, %struct.trn_conf** %5, align 8
  %28 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @upper_32_bits(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 768
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %53, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 64
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.hw*, %struct.hw** %4, align 8
  %38 = load i64, i64* @VMEM_PTPAL, align 8
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 16, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @hw_write_20kx(%struct.hw* %37, i64 %42, i32 %43)
  %45 = load %struct.hw*, %struct.hw** %4, align 8
  %46 = load i64, i64* @VMEM_PTPAH, align 8
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 16, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hw_write_20kx(%struct.hw* %45, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.hw*, %struct.hw** %4, align 8
  %58 = load i64, i64* @VMEM_CTL, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @hw_write_20kx(%struct.hw* %57, i64 %58, i32 %59)
  %61 = load %struct.hw*, %struct.hw** %4, align 8
  %62 = load i64, i64* @TRANSPORT_CTL, align 8
  %63 = call i32 @hw_write_20kx(%struct.hw* %61, i64 %62, i32 3)
  %64 = load %struct.hw*, %struct.hw** %4, align 8
  %65 = load i64, i64* @TRANSPORT_INT, align 8
  %66 = call i32 @hw_write_20kx(%struct.hw* %64, i64 %65, i32 2100225)
  %67 = load %struct.hw*, %struct.hw** %4, align 8
  %68 = load i64, i64* @TRANSPORT_ENB, align 8
  %69 = call i32 @hw_read_20kx(%struct.hw* %67, i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.hw*, %struct.hw** %4, align 8
  %71 = load i64, i64* @TRANSPORT_ENB, align 8
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, 3
  %74 = call i32 @hw_write_20kx(%struct.hw* %70, i64 %71, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %56, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dev_alert(i32, i8*) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
