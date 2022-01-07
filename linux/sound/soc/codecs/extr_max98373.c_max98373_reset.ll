; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98373_priv = type { i32 }
%struct.device = type { i32 }

@MAX98373_R2000_SW_RESET = common dso_local global i32 0, align 4
@MAX98373_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Reset command failed. (ret:%d)\0A\00", align 1
@MAX98373_R21FF_REV_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Reset completed (retry:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Reset failed. (ret:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max98373_priv*, %struct.device*)* @max98373_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98373_reset(%struct.max98373_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.max98373_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max98373_priv* %0, %struct.max98373_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %9 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX98373_R2000_SW_RESET, align 4
  %12 = load i32, i32* @MAX98373_SOFT_RESET, align 4
  %13 = load i32, i32* @MAX98373_SOFT_RESET, align 4
  %14 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = call i32 @usleep_range(i32 10000, i32 11000)
  %27 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %28 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX98373_R21FF_REV_ID, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
