; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_aic32x4_register_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_aic32x4_register_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.aic32x4_clkdesc = type { i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { i64, i32, i32, i32, i32 }
%struct.clk_aic32x4 = type { %struct.TYPE_3__, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, %struct.aic32x4_clkdesc*)* @aic32x4_register_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @aic32x4_register_clk(%struct.device* %0, %struct.aic32x4_clkdesc* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aic32x4_clkdesc*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca %struct.clk_aic32x4*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.aic32x4_clkdesc* %1, %struct.aic32x4_clkdesc** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @dev_name(%struct.device* %9)
  store i8* %10, i8** %8, align 8
  %11 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %12 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %16 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %20 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %24 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.clk_aic32x4* @devm_kzalloc(%struct.device* %28, i32 24, i32 %29)
  store %struct.clk_aic32x4* %30, %struct.clk_aic32x4** %7, align 8
  %31 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %32 = icmp eq %struct.clk_aic32x4* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = sub nsw i64 0, %34
  %36 = inttoptr i64 %35 to %struct.clk*
  store %struct.clk* %36, %struct.clk** %3, align 8
  br label %64

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %40 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %39, i32 0, i32 3
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %42 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_get_regmap(%struct.device* %44, i32* null)
  %46 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %47 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %49 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %52 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %54 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %53, i32 0, i32 0
  %55 = load %struct.aic32x4_clkdesc*, %struct.aic32x4_clkdesc** %5, align 8
  %56 = getelementptr inbounds %struct.aic32x4_clkdesc, %struct.aic32x4_clkdesc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @clk_hw_register_clkdev(%struct.TYPE_3__* %54, i32 %57, i8* %58)
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %7, align 8
  %62 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %61, i32 0, i32 0
  %63 = call %struct.clk* @devm_clk_register(%struct.device* %60, %struct.TYPE_3__* %62)
  store %struct.clk* %63, %struct.clk** %3, align 8
  br label %64

64:                                               ; preds = %37, %33
  %65 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %65
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.clk_aic32x4* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @clk_hw_register_clkdev(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
