; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_divider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dmic = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid clock configuration for 192KHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid out frequency: %dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid out frequency %dHz for %dHz input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dmic*, i32)* @omap_dmic_select_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_select_divider(%struct.omap_dmic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dmic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dmic* %0, %struct.omap_dmic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 192000
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %13 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 19200000
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %18 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 3840000
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 6, i32* %6, align 4
  br label %27

22:                                               ; preds = %16, %11
  %23 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %24 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %63 [
    i32 1536000, label %33
    i32 2400000, label %40
    i32 3072000, label %49
    i32 3840000, label %56
  ]

33:                                               ; preds = %29
  %34 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 24576000
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %73

39:                                               ; preds = %33
  store i32 4, i32* %6, align 4
  br label %71

40:                                               ; preds = %29
  %41 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %42 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %47 [
    i32 12000000, label %44
    i32 19200000, label %45
    i32 24000000, label %46
  ]

44:                                               ; preds = %40
  store i32 5, i32* %6, align 4
  br label %48

45:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %48

46:                                               ; preds = %40
  store i32 2, i32* %6, align 4
  br label %48

47:                                               ; preds = %40
  br label %73

48:                                               ; preds = %46, %45, %44
  br label %71

49:                                               ; preds = %29
  %50 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %51 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 24576000
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %73

55:                                               ; preds = %49
  store i32 3, i32* %6, align 4
  br label %71

56:                                               ; preds = %29
  %57 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %58 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 19200000
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %71

63:                                               ; preds = %29
  %64 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %65 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %68 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %62, %55, %48, %39
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %86

73:                                               ; preds = %61, %54, %47, %38
  %74 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %75 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %78 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.omap_dmic*, %struct.omap_dmic** %4, align 8
  %81 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %73, %71, %27
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
