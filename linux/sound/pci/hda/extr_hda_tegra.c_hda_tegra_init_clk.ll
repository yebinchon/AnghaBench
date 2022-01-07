; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_init_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_init_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_tegra = type { i8*, i8*, i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"hda\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get hda clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hda2codec_2x\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to get hda2codec_2x clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hda2hdmi\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get hda2hdmi clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_tegra*)* @hda_tegra_init_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_tegra_init_clk(%struct.hda_tegra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_tegra*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hda_tegra* %0, %struct.hda_tegra** %3, align 8
  %5 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %6 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %5, i32 0, i32 3
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i8* @devm_clk_get(%struct.device* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %11 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %13 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %21 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i8* @devm_clk_get(%struct.device* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %28 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %30 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %38 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %24
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i8* @devm_clk_get(%struct.device* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %45 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %47 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.hda_tegra*, %struct.hda_tegra** %3, align 8
  %55 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %51, %34, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
