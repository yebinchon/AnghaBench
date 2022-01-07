; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_run.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32, i32, %struct.test_parman_item**, i64, %struct.test_parman_item* }
%struct.test_parman_item = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TEST_PARMAN_ITEM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_parman*)* @test_parman_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parman_run(%struct.test_parman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_parman*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test_parman_item*, align 8
  store %struct.test_parman* %0, %struct.test_parman** %3, align 8
  %8 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %9 = call i32 @test_parman_rnd_get(%struct.test_parman* %8)
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %87, %29, %1
  %11 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %12 = call i64 @test_parman_run_check_budgets(%struct.test_parman* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @TEST_PARMAN_ITEM_MASK, align 4
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %20 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %19, i32 0, i32 4
  %21 = load %struct.test_parman_item*, %struct.test_parman_item** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %21, i64 %23
  store %struct.test_parman_item* %24, %struct.test_parman_item** %7, align 8
  %25 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %26 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %10

30:                                               ; preds = %14
  %31 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %32 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  %36 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %37 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %40 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %44 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %43, i32 0, i32 1
  %45 = call i32 @parman_item_add(i32 %38, i32* %42, %struct.TYPE_5__* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %97

50:                                               ; preds = %35
  %51 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %52 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %53 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %52, i32 0, i32 2
  %54 = load %struct.test_parman_item**, %struct.test_parman_item*** %53, align 8
  %55 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %56 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.test_parman_item*, %struct.test_parman_item** %54, i64 %58
  store %struct.test_parman_item* %51, %struct.test_parman_item** %59, align 8
  %60 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %61 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %87

64:                                               ; preds = %30
  %65 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %66 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %65, i32 0, i32 2
  %67 = load %struct.test_parman_item**, %struct.test_parman_item*** %66, align 8
  %68 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %69 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.test_parman_item*, %struct.test_parman_item** %67, i64 %71
  store %struct.test_parman_item* null, %struct.test_parman_item** %72, align 8
  %73 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %74 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %77 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %81 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %80, i32 0, i32 1
  %82 = call i32 @parman_item_remove(i32 %75, i32* %79, %struct.TYPE_5__* %81)
  %83 = load %struct.test_parman*, %struct.test_parman** %3, align 8
  %84 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %64, %50
  %88 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %89 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.test_parman_item*, %struct.test_parman_item** %7, align 8
  %95 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %10

96:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @test_parman_rnd_get(%struct.test_parman*) #1

declare dso_local i64 @test_parman_run_check_budgets(%struct.test_parman*) #1

declare dso_local i32 @parman_item_add(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @parman_item_remove(i32, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
