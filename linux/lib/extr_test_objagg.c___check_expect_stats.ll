; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c___check_expect_stats.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c___check_expect_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_stats = type { i32, i32* }
%struct.expect_stats = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Unexpected object count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_stats*, %struct.expect_stats*, i8**)* @__check_expect_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_expect_stats(%struct.objagg_stats* %0, %struct.expect_stats* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg_stats*, align 8
  %6 = alloca %struct.expect_stats*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.objagg_stats* %0, %struct.objagg_stats** %5, align 8
  store %struct.expect_stats* %1, %struct.expect_stats** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %11 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %14 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %75, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %25 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %30 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %36 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @check_expect_stats_nums(i32* %34, i32* %40, i8** %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %79

47:                                               ; preds = %28
  %48 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %49 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %55 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i8**, i8*** %7, align 8
  %61 = call i32 @check_expect_stats_key_id(i32* %53, i32* %59, i8** %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %47
  %65 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %66 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @check_expect_stats_neigh(%struct.objagg_stats* %65, %struct.expect_stats* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %22

78:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %71, %45, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @check_expect_stats_nums(i32*, i32*, i8**) #1

declare dso_local i32 @check_expect_stats_key_id(i32*, i32*, i8**) #1

declare dso_local i32 @check_expect_stats_neigh(%struct.objagg_stats*, %struct.expect_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
