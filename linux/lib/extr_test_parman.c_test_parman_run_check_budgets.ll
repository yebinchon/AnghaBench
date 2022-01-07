; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_run_check_budgets.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_run_check_budgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32, i32, i32 }

@TEST_PARMAN_BULK_MAX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_parman*)* @test_parman_run_check_budgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parman_run_check_budgets(%struct.test_parman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_parman*, align 8
  store %struct.test_parman* %0, %struct.test_parman** %3, align 8
  %4 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %5 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %12 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %29

17:                                               ; preds = %10
  %18 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %19 = call i32 @test_parman_rnd_get(%struct.test_parman* %18)
  %20 = load i32, i32* @TEST_PARMAN_BULK_MAX_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %23 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %25 = call i32 @test_parman_rnd_get(%struct.test_parman* %24)
  %26 = and i32 %25, 1
  %27 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %28 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %17, %16, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @test_parman_rnd_get(%struct.test_parman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
