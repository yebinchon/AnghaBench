; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_lsort.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_lsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32 }

@test_parman_lsort_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_parman_lsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parman_lsort() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.test_parman*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.test_parman* @test_parman_create(i32* @test_parman_lsort_ops)
  store %struct.test_parman* %4, %struct.test_parman** %2, align 8
  %5 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %6 = call i64 @IS_ERR(%struct.test_parman* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %10 = call i32 @PTR_ERR(%struct.test_parman* %9)
  store i32 %10, i32* %1, align 4
  br label %28

11:                                               ; preds = %0
  %12 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %13 = call i32 @test_parman_run(%struct.test_parman* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  %18 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %19 = call i32 @test_parman_check_array(%struct.test_parman* %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %22, %16
  %25 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %26 = call i32 @test_parman_destroy(%struct.test_parman* %25)
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local %struct.test_parman* @test_parman_create(i32*) #1

declare dso_local i64 @IS_ERR(%struct.test_parman*) #1

declare dso_local i32 @PTR_ERR(%struct.test_parman*) #1

declare dso_local i32 @test_parman_run(%struct.test_parman*) #1

declare dso_local i32 @test_parman_check_array(%struct.test_parman*, i32) #1

declare dso_local i32 @test_parman_destroy(%struct.test_parman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
