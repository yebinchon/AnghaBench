; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta_obj_put.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta_obj_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32 }
%struct.objagg = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Key %u: Root was not destroyed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Key %u: Root was incorrectly destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.world*, %struct.objagg*, i32, i32)* @test_nodelta_obj_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_nodelta_obj_put(%struct.world* %0, %struct.objagg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.world*, align 8
  %7 = alloca %struct.objagg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.world* %0, %struct.world** %6, align 8
  store %struct.objagg* %1, %struct.objagg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.world*, %struct.world** %6, align 8
  %12 = getelementptr inbounds %struct.world, %struct.world* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.world*, %struct.world** %6, align 8
  %15 = load %struct.objagg*, %struct.objagg** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @world_obj_put(%struct.world* %14, %struct.objagg* %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.world*, %struct.world** %6, align 8
  %22 = getelementptr inbounds %struct.world, %struct.world* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub i32 %24, 1
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %20
  br label %45

33:                                               ; preds = %4
  %34 = load %struct.world*, %struct.world** %6, align 8
  %35 = getelementptr inbounds %struct.world, %struct.world* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %32
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @world_obj_put(%struct.world*, %struct.objagg*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
