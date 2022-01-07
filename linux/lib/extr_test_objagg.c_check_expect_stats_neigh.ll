; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_stats = type { i32, i32* }
%struct.expect_stats = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_stats*, %struct.expect_stats*, i32)* @check_expect_stats_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expect_stats_neigh(%struct.objagg_stats* %0, %struct.expect_stats* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg_stats*, align 8
  %6 = alloca %struct.expect_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.objagg_stats* %0, %struct.objagg_stats** %5, align 8
  store %struct.expect_stats* %1, %struct.expect_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %50, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %17 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %23 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @check_expect_stats_nums(i32* %21, i32* %27, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %53

32:                                               ; preds = %15
  %33 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %34 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %40 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @check_expect_stats_key_id(i32* %38, i32* %44, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %103

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %12

53:                                               ; preds = %31, %12
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %97, %53
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %59 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %56
  %63 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %64 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %70 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @check_expect_stats_nums(i32* %68, i32* %74, i32* null)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %100

79:                                               ; preds = %62
  %80 = load %struct.objagg_stats*, %struct.objagg_stats** %5, align 8
  %81 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %87 = getelementptr inbounds %struct.expect_stats, %struct.expect_stats* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @check_expect_stats_key_id(i32* %85, i32* %91, i32* null)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %103

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %56

100:                                              ; preds = %78, %56
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %95, %48
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @check_expect_stats_nums(i32*, i32*, i32*) #1

declare dso_local i32 @check_expect_stats_key_id(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
