; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_stats_zero.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_stats_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_stats = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"Stats: Object count is not zero while it should be\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*)* @check_stats_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stats_zero(%struct.objagg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.objagg*, %struct.objagg** %3, align 8
  %7 = call %struct.objagg_stats* @objagg_stats_get(%struct.objagg* %6)
  store %struct.objagg_stats* %7, %struct.objagg_stats** %4, align 8
  %8 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %9 = call i64 @IS_ERR(%struct.objagg_stats* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.objagg_stats* %12)
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %16 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %25 = call i32 @objagg_stats_put(%struct.objagg_stats* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.objagg_stats* @objagg_stats_get(%struct.objagg*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @objagg_stats_put(%struct.objagg_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
