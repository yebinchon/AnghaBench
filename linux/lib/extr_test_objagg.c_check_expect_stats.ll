; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.expect_stats = type { i32 }
%struct.objagg_stats = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"objagg_stats_get() failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.expect_stats*, i8**)* @check_expect_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expect_stats(%struct.objagg* %0, %struct.expect_stats* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca %struct.expect_stats*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.objagg_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %5, align 8
  store %struct.expect_stats* %1, %struct.expect_stats** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.objagg*, %struct.objagg** %5, align 8
  %11 = call %struct.objagg_stats* @objagg_stats_get(%struct.objagg* %10)
  store %struct.objagg_stats* %11, %struct.objagg_stats** %8, align 8
  %12 = load %struct.objagg_stats*, %struct.objagg_stats** %8, align 8
  %13 = call i64 @IS_ERR(%struct.objagg_stats* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.objagg_stats*, %struct.objagg_stats** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.objagg_stats* %17)
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.objagg_stats*, %struct.objagg_stats** %8, align 8
  %21 = load %struct.expect_stats*, %struct.expect_stats** %6, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @__check_expect_stats(%struct.objagg_stats* %20, %struct.expect_stats* %21, i8** %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.objagg_stats*, %struct.objagg_stats** %8, align 8
  %25 = call i32 @objagg_stats_put(%struct.objagg_stats* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.objagg_stats* @objagg_stats_get(%struct.objagg*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @__check_expect_stats(%struct.objagg_stats*, %struct.expect_stats*, i8**) #1

declare dso_local i32 @objagg_stats_put(%struct.objagg_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
