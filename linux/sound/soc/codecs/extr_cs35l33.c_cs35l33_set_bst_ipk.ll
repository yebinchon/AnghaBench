; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_bst_ipk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_bst_ipk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid boost current %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Current not a multiple of 15625uA (%d)\0A\00", align 1
@CS35L33_BST_PEAK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs35l33_set_bst_ipk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_set_bst_ipk(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs35l33_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs35l33_private* %9, %struct.cs35l33_private** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 3600000
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %13, 1850000
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %52

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = urem i32 %24, 15625
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %52

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %39, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp ugt i32 %37, 1850000
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = sub i32 %40, 15625
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %36

44:                                               ; preds = %36
  %45 = load %struct.cs35l33_private*, %struct.cs35l33_private** %5, align 8
  %46 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CS35L33_BST_PEAK_CTL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 112
  %51 = call i32 @regmap_write(i32 %47, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %44, %27, %15
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
