; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i64 }
%struct.skl_ssp_clk = type { i32 }
%struct.nhlt_acpi_table = type { i32, i64 }
%struct.nhlt_endpoint = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nhlt_fmt = type { i32 }

@NHLT_LINK_SSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_get_clks(%struct.skl_dev* %0, %struct.skl_ssp_clk* %1) #0 {
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.skl_ssp_clk*, align 8
  %5 = alloca %struct.nhlt_acpi_table*, align 8
  %6 = alloca %struct.nhlt_endpoint*, align 8
  %7 = alloca %struct.nhlt_fmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  store %struct.skl_ssp_clk* %1, %struct.skl_ssp_clk** %4, align 8
  %10 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %11 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.nhlt_acpi_table*
  store %struct.nhlt_acpi_table* %13, %struct.nhlt_acpi_table** %5, align 8
  %14 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %15 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %17, %struct.nhlt_endpoint** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %63, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %21 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %26 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NHLT_LINK_SSP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %32 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %35 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %39 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = inttoptr i64 %42 to %struct.nhlt_fmt*
  store %struct.nhlt_fmt* %43, %struct.nhlt_fmt** %7, align 8
  %44 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %45 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %4, align 8
  %46 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @skl_get_ssp_clks(%struct.skl_dev* %44, %struct.skl_ssp_clk* %45, %struct.nhlt_fmt* %46, i32 %47)
  %49 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %50 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %4, align 8
  %51 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @skl_get_mclk(%struct.skl_dev* %49, %struct.skl_ssp_clk* %50, %struct.nhlt_fmt* %51, i32 %52)
  br label %54

54:                                               ; preds = %30, %24
  %55 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %56 = bitcast %struct.nhlt_endpoint* %55 to i32*
  %57 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %58 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = bitcast i32* %61 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %62, %struct.nhlt_endpoint** %6, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %18

66:                                               ; preds = %18
  ret void
}

declare dso_local i32 @skl_get_ssp_clks(%struct.skl_dev*, %struct.skl_ssp_clk*, %struct.nhlt_fmt*, i32) #1

declare dso_local i32 @skl_get_mclk(%struct.skl_dev*, %struct.skl_ssp_clk*, %struct.nhlt_fmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
