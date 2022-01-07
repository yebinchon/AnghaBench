; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_prios_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_prios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32, %struct.test_parman_prio* }
%struct.test_parman_prio = type { i32, i32 }

@TEST_PARMAN_PRIO_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_parman*)* @test_parman_prios_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parman_prios_init(%struct.test_parman* %0) #0 {
  %2 = alloca %struct.test_parman*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_parman_prio*, align 8
  store %struct.test_parman* %0, %struct.test_parman** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TEST_PARMAN_PRIO_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %11 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %10, i32 0, i32 1
  %12 = load %struct.test_parman_prio*, %struct.test_parman_prio** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %12, i64 %14
  store %struct.test_parman_prio* %15, %struct.test_parman_prio** %4, align 8
  %16 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %17 = call i32 @test_parman_priority_gen(%struct.test_parman* %16)
  %18 = load %struct.test_parman_prio*, %struct.test_parman_prio** %4, align 8
  %19 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %21 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.test_parman_prio*, %struct.test_parman_prio** %4, align 8
  %24 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %23, i32 0, i32 1
  %25 = load %struct.test_parman_prio*, %struct.test_parman_prio** %4, align 8
  %26 = getelementptr inbounds %struct.test_parman_prio, %struct.test_parman_prio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @parman_prio_init(i32 %22, i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

declare dso_local i32 @test_parman_priority_gen(%struct.test_parman*) #1

declare dso_local i32 @parman_prio_init(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
