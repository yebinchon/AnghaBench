; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32, i32 }
%struct.parman_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_PARMAN_BASE_COUNT = common dso_local global i32 0, align 4
@TEST_PARMAN_RUN_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.test_parman* (%struct.parman_ops*)* @test_parman_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.test_parman* @test_parman_create(%struct.parman_ops* %0) #0 {
  %2 = alloca %struct.test_parman*, align 8
  %3 = alloca %struct.parman_ops*, align 8
  %4 = alloca %struct.test_parman*, align 8
  %5 = alloca i32, align 4
  store %struct.parman_ops* %0, %struct.parman_ops** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.test_parman* @kzalloc(i32 8, i32 %6)
  store %struct.test_parman* %7, %struct.test_parman** %4, align 8
  %8 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %9 = icmp ne %struct.test_parman* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.test_parman* @ERR_PTR(i32 %12)
  store %struct.test_parman* %13, %struct.test_parman** %2, align 8
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %16 = load i32, i32* @TEST_PARMAN_BASE_COUNT, align 4
  %17 = call i32 @test_parman_resize(%struct.test_parman* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %14
  %22 = load %struct.parman_ops*, %struct.parman_ops** %3, align 8
  %23 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %24 = call i32 @parman_create(%struct.parman_ops* %22, %struct.test_parman* %23)
  %25 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %26 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %28 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %36 = call i32 @test_parman_rnd_init(%struct.test_parman* %35)
  %37 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %38 = call i32 @test_parman_prios_init(%struct.test_parman* %37)
  %39 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %40 = call i32 @test_parman_items_init(%struct.test_parman* %39)
  %41 = load i32, i32* @TEST_PARMAN_RUN_BUDGET, align 4
  %42 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %43 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  store %struct.test_parman* %44, %struct.test_parman** %2, align 8
  br label %53

45:                                               ; preds = %31
  %46 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %47 = call i32 @test_parman_resize(%struct.test_parman* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %20
  %49 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %50 = call i32 @kfree(%struct.test_parman* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.test_parman* @ERR_PTR(i32 %51)
  store %struct.test_parman* %52, %struct.test_parman** %2, align 8
  br label %53

53:                                               ; preds = %48, %34, %10
  %54 = load %struct.test_parman*, %struct.test_parman** %2, align 8
  ret %struct.test_parman* %54
}

declare dso_local %struct.test_parman* @kzalloc(i32, i32) #1

declare dso_local %struct.test_parman* @ERR_PTR(i32) #1

declare dso_local i32 @test_parman_resize(%struct.test_parman*, i32) #1

declare dso_local i32 @parman_create(%struct.parman_ops*, %struct.test_parman*) #1

declare dso_local i32 @test_parman_rnd_init(%struct.test_parman*) #1

declare dso_local i32 @test_parman_prios_init(%struct.test_parman*) #1

declare dso_local i32 @test_parman_items_init(%struct.test_parman*) #1

declare dso_local i32 @kfree(%struct.test_parman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
