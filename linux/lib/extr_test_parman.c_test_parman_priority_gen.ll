; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_priority_gen.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_priority_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { %struct.test_parman_prio* }
%struct.test_parman_prio = type { i64 }

@TEST_PARMAN_PRIO_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.test_parman*)* @test_parman_priority_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_parman_priority_gen(%struct.test_parman* %0) #0 {
  %2 = alloca %struct.test_parman*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_parman_prio*, align 8
  store %struct.test_parman* %0, %struct.test_parman** %2, align 8
  br label %6

6:                                                ; preds = %35, %11, %1
  %7 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %8 = call i64 @test_parman_rnd_get(%struct.test_parman* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %6

12:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TEST_PARMAN_PRIO_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %19 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %18, i32 0, i32 0
  %20 = load %struct.test_parman_prio*, %struct.test_parman_prio** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %20, i64 %22
  store %struct.test_parman_prio* %23, %struct.test_parman_prio** %5, align 8
  %24 = load %struct.test_parman_prio*, %struct.test_parman_prio** %5, align 8
  %25 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %40

29:                                               ; preds = %17
  %30 = load %struct.test_parman_prio*, %struct.test_parman_prio** %5, align 8
  %31 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %6

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %28, %13
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @test_parman_rnd_get(%struct.test_parman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
