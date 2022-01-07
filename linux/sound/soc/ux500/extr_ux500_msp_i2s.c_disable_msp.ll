; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_disable_msp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_disable_msp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_msp = type { i64 }

@MSP_GCR = common dso_local global i64 0, align 8
@MSP_DIR_TX = common dso_local global i32 0, align 4
@LOOPBACK_MASK = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@RX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ux500_msp*, i32)* @disable_msp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_msp(%struct.ux500_msp* %0, i32 %1) #0 {
  %3 = alloca %struct.ux500_msp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ux500_msp* %0, %struct.ux500_msp** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %10 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MSP_GCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MSP_DIR_TX, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MSP_DIR_TX, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %23
  %27 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %28 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSP_GCR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LOOPBACK_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %37 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSP_GCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %43 = call i32 @flush_fifo_tx(%struct.ux500_msp* %42)
  %44 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %45 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MSP_GCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  %50 = load i32, i32* @TX_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %54 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MSP_GCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %60 = call i32 @flush_fifo_rx(%struct.ux500_msp* %59)
  %61 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %62 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MSP_GCR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = load i32, i32* @RX_ENABLE, align 4
  %68 = load i32, i32* @LOOPBACK_MASK, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  %72 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %73 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MSP_GCR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %79 = call i32 @disable_msp_tx(%struct.ux500_msp* %78)
  %80 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %81 = call i32 @disable_msp_rx(%struct.ux500_msp* %80)
  br label %96

82:                                               ; preds = %23, %2
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %87 = call i32 @disable_msp_tx(%struct.ux500_msp* %86)
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.ux500_msp*, %struct.ux500_msp** %3, align 8
  %93 = call i32 @disable_msp_rx(%struct.ux500_msp* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %26
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @flush_fifo_tx(%struct.ux500_msp*) #1

declare dso_local i32 @flush_fifo_rx(%struct.ux500_msp*) #1

declare dso_local i32 @disable_msp_tx(%struct.ux500_msp*) #1

declare dso_local i32 @disable_msp_rx(%struct.ux500_msp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
