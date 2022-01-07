; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_outclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_outclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dmic = type { i32, i32 }

@OMAP_DMIC_ABE_DMIC_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"output clk_id (%d) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid out frequency: %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dmic*, i32, i32)* @omap_dmic_select_outclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_select_outclk(%struct.omap_dmic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dmic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_dmic* %0, %struct.omap_dmic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OMAP_DMIC_ABE_DMIC_CLK, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %14 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %26 [
    i32 1536000, label %22
    i32 2400000, label %22
    i32 3072000, label %22
    i32 3840000, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %25 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %33 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
