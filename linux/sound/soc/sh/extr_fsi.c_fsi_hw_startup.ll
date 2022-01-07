; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_hw_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_hw_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i64, i64 }
%struct.fsi_stream = type { i32, i32 }
%struct.device = type { i32 }

@DIMD = common dso_local global i32 0, align 4
@DOMD = common dso_local global i32 0, align 4
@CKG1 = common dso_local global i32 0, align 4
@CKG2 = common dso_local global i32 0, align 4
@OUT_SEL = common dso_local global i32 0, align 4
@DMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*, %struct.device*)* @fsi_hw_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_hw_startup(%struct.fsi_priv* %0, %struct.fsi_stream* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_priv*, align 8
  %6 = alloca %struct.fsi_stream*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %5, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %10 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @DIMD, align 4
  %14 = load i32, i32* @DOMD, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %18 = load i32, i32* @CKG1, align 4
  %19 = load i32, i32* @DIMD, align 4
  %20 = load i32, i32* @DOMD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %17, i32 %18, i32 %21, i32 %22)
  store i32 0, i32* %8, align 4
  %24 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %25 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %33 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 16
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %41 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 8
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %48 = load i32, i32* @CKG2, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @fsi_reg_write(%struct.fsi_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %52 = call i64 @fsi_is_spdif(%struct.fsi_priv* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %56 = call i32 @fsi_spdif_clk_ctrl(%struct.fsi_priv* %55, i32 1)
  %57 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %58 = load i32, i32* @OUT_SEL, align 4
  %59 = load i32, i32* @DMMD, align 4
  %60 = load i32, i32* @DMMD, align 4
  %61 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  store i32 0, i32* %8, align 4
  %63 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %64 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %76 [
    i32 2, label %66
    i32 4, label %71
  ]

66:                                               ; preds = %62
  %67 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %68 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BUSOP_GET(i32 16, i32 %69)
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %62
  %72 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %73 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BUSOP_GET(i32 24, i32 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %62, %71, %66
  %77 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %78 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = call i32 @fsi_format_bus_setup(%struct.fsi_priv* %77, %struct.fsi_stream* %78, i32 %79, %struct.device* %80)
  %82 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %83 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %84 = call i32 @fsi_irq_disable(%struct.fsi_priv* %82, %struct.fsi_stream* %83)
  %85 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %86 = call i32 @fsi_irq_clear_status(%struct.fsi_priv* %85)
  %87 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %88 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = call i32 @fsi_fifo_init(%struct.fsi_priv* %87, %struct.fsi_stream* %88, %struct.device* %89)
  %91 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %92 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %97 = call i32 @fsi_clk_enable(%struct.device* %95, %struct.fsi_priv* %96)
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @fsi_is_clk_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

declare dso_local i64 @fsi_is_spdif(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_spdif_clk_ctrl(%struct.fsi_priv*, i32) #1

declare dso_local i32 @BUSOP_GET(i32, i32) #1

declare dso_local i32 @fsi_format_bus_setup(%struct.fsi_priv*, %struct.fsi_stream*, i32, %struct.device*) #1

declare dso_local i32 @fsi_irq_disable(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_irq_clear_status(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_fifo_init(%struct.fsi_priv*, %struct.fsi_stream*, %struct.device*) #1

declare dso_local i32 @fsi_clk_enable(%struct.device*, %struct.fsi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
