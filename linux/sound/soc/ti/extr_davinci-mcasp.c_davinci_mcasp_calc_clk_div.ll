; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_calc_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_calc_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32 }

@DAVINCI_MCASP_AHCLKXCTL_REG = common dso_local global i32 0, align 4
@ACLKXDIV_MASK = common dso_local global i32 0, align 4
@AHCLKXE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too fast reference clock (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Sample-rate is off by %d PPM\0A\00", align 1
@MCASP_CLKDIV_BCLK = common dso_local global i32 0, align 4
@MCASP_CLKDIV_AUXCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*, i32, i32, i32)* @davinci_mcasp_calc_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_calc_clk_div(%struct.davinci_mcasp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.davinci_mcasp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %15 = load i32, i32* @DAVINCI_MCASP_AHCLKXCTL_REG, align 4
  %16 = call i32 @mcasp_get_reg(%struct.davinci_mcasp* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ACLKXDIV_MASK, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AHCLKXE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ACLKXDIV_MASK, align 4
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ACLKXDIV_MASK, align 4
  %39 = add nsw i32 %38, 1
  %40 = srem i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %6, align 4
  %48 = udiv i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = udiv i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = urem i32 %52, %53
  store i32 %54, i32* %11, align 4
  br label %65

55:                                               ; preds = %27
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %60 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = udiv i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = udiv i32 %79, %81
  %83 = sub i32 %78, %82
  %84 = icmp ugt i32 %77, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %72, %69
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %85, %72
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 1000000
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 1000000, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @div64_long(i64 %97, i32 %98)
  %100 = trunc i64 %99 to i32
  %101 = add nsw i32 %94, %100
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %101, %102
  %104 = sub nsw i32 %103, 1000000
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %92
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %112 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @dev_info(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  %117 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %118 = load i32, i32* @MCASP_CLKDIV_BCLK, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @__davinci_mcasp_set_clkdiv(%struct.davinci_mcasp* %117, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @AHCLKXE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %127 = load i32, i32* @MCASP_CLKDIV_AUXCLK, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @__davinci_mcasp_set_clkdiv(%struct.davinci_mcasp* %126, i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %125, %116
  br label %131

131:                                              ; preds = %130, %92
  %132 = load i32, i32* %12, align 4
  ret i32 %132
}

declare dso_local i32 @mcasp_get_reg(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @div64_long(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @__davinci_mcasp_set_clkdiv(%struct.davinci_mcasp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
