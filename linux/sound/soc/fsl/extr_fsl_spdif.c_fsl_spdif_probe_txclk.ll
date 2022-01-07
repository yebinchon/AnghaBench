; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_probe_txclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_probe_txclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i32*, i32*, i32*, i32*, i32, %struct.clk**, %struct.platform_device* }
%struct.clk = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@fsl_spdif_probe_txclk.rate = internal constant [5 x i32] [i32 32000, i32 44100, i32 48000, i32 96000, i32 192000], align 16
@STC_TXCLK_SRC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rxtx%d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no rxtx%d clock in devicetree\0A\00", align 1
@STC_TXCLK_SPDIF_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"use rxtx%d as tx clock source for %dHz sample rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"use txclk df %d for %dHz sample rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"use sysclk df %d for %dHz sample rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"the best rate for %dHz sample rate is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_spdif_priv*, i32)* @fsl_spdif_probe_txclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spdif_probe_txclk(%struct.fsl_spdif_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_spdif_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %14 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %13, i32 0, i32 6
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 100000, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %78, %2
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @STC_TXCLK_SRC_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %29 = call %struct.clk* @devm_clk_get(%struct.device* %27, i8* %28)
  store %struct.clk* %29, %struct.clk** %10, align 8
  %30 = load %struct.clk*, %struct.clk** %10, align 8
  %31 = call i64 @IS_ERR(%struct.clk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.clk*, %struct.clk** %10, align 8
  %38 = call i32 @PTR_ERR(%struct.clk* %37)
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %22
  %40 = load %struct.clk*, %struct.clk** %10, align 8
  %41 = call i32 @clk_get_rate(%struct.clk* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %78

44:                                               ; preds = %39
  %45 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %46 = load %struct.clk*, %struct.clk** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @STC_TXCLK_SPDIF_ROOT, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @fsl_spdif_txclk_caldiv(%struct.fsl_spdif_priv* %45, %struct.clk* %46, i32 %47, i32 %48, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %78

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.clk*, %struct.clk** %10, align 8
  %61 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %62 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %61, i32 0, i32 5
  %63 = load %struct.clk**, %struct.clk*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.clk*, %struct.clk** %63, i64 %65
  store %struct.clk* %60, %struct.clk** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %69 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 100
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  br label %81

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %57, %43
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %18

81:                                               ; preds = %76, %18
  %82 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %85 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_probe_txclk.rate, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %99 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_probe_txclk.rate, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %108)
  %110 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %111 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %110, i32 0, i32 5
  %112 = load %struct.clk**, %struct.clk*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.clk*, %struct.clk** %112, i64 %114
  %116 = load %struct.clk*, %struct.clk** %115, align 8
  %117 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %118 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @clk_is_match(%struct.clk* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %81
  %123 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %126 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_probe_txclk.rate, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_dbg(%struct.device* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %122, %81
  %138 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_probe_txclk.rate, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %4, align 8
  %145 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_dbg(%struct.device* %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %137, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @fsl_spdif_txclk_caldiv(%struct.fsl_spdif_priv*, %struct.clk*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @clk_is_match(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
