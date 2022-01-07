; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_items_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_items_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32*, %struct.test_parman_item* }
%struct.test_parman_item = type { i32* }

@TEST_PARMAN_ITEM_COUNT = common dso_local global i32 0, align 4
@TEST_PARMAN_PRIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_parman*)* @test_parman_items_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parman_items_init(%struct.test_parman* %0) #0 {
  %2 = alloca %struct.test_parman*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_parman_item*, align 8
  %5 = alloca i32, align 4
  store %struct.test_parman* %0, %struct.test_parman** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TEST_PARMAN_ITEM_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %12 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %11, i32 0, i32 1
  %13 = load %struct.test_parman_item*, %struct.test_parman_item** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %13, i64 %15
  store %struct.test_parman_item* %16, %struct.test_parman_item** %4, align 8
  %17 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %18 = call i32 @test_parman_rnd_get(%struct.test_parman* %17)
  %19 = load i32, i32* @TEST_PARMAN_PRIO_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  %22 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.test_parman_item*, %struct.test_parman_item** %4, align 8
  %28 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @test_parman_rnd_get(%struct.test_parman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
