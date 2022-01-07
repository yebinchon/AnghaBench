; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLL_ENB = common dso_local global i32 0, align 4
@PLLCTL_B = common dso_local global i32 0, align 4
@PLLCTL_FD = common dso_local global i32 0, align 4
@PLLCTL_RD = common dso_local global i32 0, align 4
@PLL_CTL = common dso_local global i32 0, align 4
@PLL_STAT = common dso_local global i32 0, align 4
@PLLSTAT_PD = common dso_local global i32 0, align 4
@PLLSTAT_B = common dso_local global i32 0, align 4
@PLLSTAT_CCS = common dso_local global i32 0, align 4
@PLLCTL_SRC = common dso_local global i32 0, align 4
@PLLSTAT_CRD = common dso_local global i32 0, align 4
@PLLSTAT_CFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PLL initialization failed!!!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @hw_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_pll_init(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 11, i32* %6, align 4
  %10 = load %struct.hw*, %struct.hw** %4, align 8
  %11 = load i32, i32* @PLL_ENB, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @hw_write_20kx(%struct.hw* %10, i32 %11, i32 %12)
  store i32 549453824, i32* %7, align 4
  %14 = load i32, i32* @PLLCTL_B, align 4
  %15 = call i32 @set_field(i32* %7, i32 %14, i32 0)
  %16 = load i32, i32* @PLLCTL_FD, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 48000, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 12, i32 143
  %21 = call i32 @set_field(i32* %7, i32 %16, i32 %20)
  %22 = load i32, i32* @PLLCTL_RD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 48000, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 9
  %27 = call i32 @set_field(i32* %7, i32 %22, i32 %26)
  %28 = load %struct.hw*, %struct.hw** %4, align 8
  %29 = load i32, i32* @PLL_CTL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @hw_write_20kx(%struct.hw* %28, i32 %29, i32 %30)
  %32 = call i32 @msleep(i32 40)
  %33 = load %struct.hw*, %struct.hw** %4, align 8
  %34 = load i32, i32* @PLL_CTL, align 4
  %35 = call i32 @hw_read_20kx(%struct.hw* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @PLLCTL_FD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 48000, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 14, i32 145
  %41 = call i32 @set_field(i32* %7, i32 %36, i32 %40)
  %42 = load %struct.hw*, %struct.hw** %4, align 8
  %43 = load i32, i32* @PLL_CTL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @hw_write_20kx(%struct.hw* %42, i32 %43, i32 %44)
  %46 = call i32 @msleep(i32 40)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %96, %2
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 1000
  br i1 %49, label %50, label %99

50:                                               ; preds = %47
  %51 = load %struct.hw*, %struct.hw** %4, align 8
  %52 = load i32, i32* @PLL_STAT, align 4
  %53 = call i32 @hw_read_20kx(%struct.hw* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @PLLSTAT_PD, align 4
  %56 = call i64 @get_field(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %96

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PLLSTAT_B, align 4
  %62 = call i64 @get_field(i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PLLCTL_B, align 4
  %65 = call i64 @get_field(i32 %63, i32 %64)
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %96

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PLLSTAT_CCS, align 4
  %71 = call i64 @get_field(i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PLLCTL_SRC, align 4
  %74 = call i64 @get_field(i32 %72, i32 %73)
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %96

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @PLLSTAT_CRD, align 4
  %80 = call i64 @get_field(i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PLLCTL_RD, align 4
  %83 = call i64 @get_field(i32 %81, i32 %82)
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %96

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PLLSTAT_CFD, align 4
  %89 = call i64 @get_field(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PLLCTL_FD, align 4
  %92 = call i64 @get_field(i32 %90, i32 %91)
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %96

95:                                               ; preds = %86
  br label %99

96:                                               ; preds = %94, %85, %76, %67, %58
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %47

99:                                               ; preds = %95, %47
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 1000
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.hw*, %struct.hw** %4, align 8
  %104 = getelementptr inbounds %struct.hw, %struct.hw* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_alert(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i64 @get_field(i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
