; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_div_sel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_div_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5682_priv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"sysclk rate %d is too low\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"div[%d]=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"can't find div for sysclk %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"sysclk rate %d is too high\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5682_priv*, i32, i32*, i32)* @rt5682_div_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_div_sel(%struct.rt5682_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt5682_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt5682_priv* %0, %struct.rt5682_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %12 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %18 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %5, align 4
  br label %91

21:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %68, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %35, %40
  %42 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %91

48:                                               ; preds = %27
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %49, %55
  %57 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %58 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %63 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %91

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %22

71:                                               ; preds = %22
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  %79 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %80 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.rt5682_priv*, %struct.rt5682_priv** %6, align 8
  %85 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %71
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %61, %46, %16
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
