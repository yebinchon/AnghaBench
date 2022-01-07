; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_zylonite.c_zylonite_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_zylonite.c_zylonite_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }

@clk_pout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"CLK_POUT\00", align 1
@pout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to obtain CLK_POUT: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to enable CLK_POUT: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MCLK enabled at %luHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @zylonite_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zylonite_probe(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %5 = load i64, i64* @clk_pout, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @pout, align 4
  %9 = load i32, i32* @pout, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @pout, align 4
  %17 = call i32 @PTR_ERR(i32 %16)
  %18 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @pout, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %7
  %22 = load i32, i32* @pout, align 4
  %23 = call i32 @clk_enable(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @pout, align 4
  %33 = call i32 @clk_put(i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @pout, align 4
  %40 = call i32 @clk_get_rate(i32 %39)
  %41 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %26, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
