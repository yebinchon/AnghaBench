; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_delta_action_item.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_delta_action_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32, i32 }
%struct.objagg = type { i32 }
%struct.action_item = type { i32, i32, i32 }
%struct.objagg_obj = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Key %u: Stats: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.world*, %struct.objagg*, %struct.action_item*, i32)* @test_delta_action_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_delta_action_item(%struct.world* %0, %struct.objagg* %1, %struct.action_item* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.world*, align 8
  %7 = alloca %struct.objagg*, align 8
  %8 = alloca %struct.action_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.objagg_obj*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.world* %0, %struct.world** %6, align 8
  store %struct.objagg* %1, %struct.objagg** %7, align 8
  store %struct.action_item* %2, %struct.action_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.world*, %struct.world** %6, align 8
  %18 = getelementptr inbounds %struct.world, %struct.world* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.world*, %struct.world** %6, align 8
  %21 = getelementptr inbounds %struct.world, %struct.world* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.action_item*, %struct.action_item** %8, align 8
  %24 = getelementptr inbounds %struct.action_item, %struct.action_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.action_item*, %struct.action_item** %8, align 8
  %27 = getelementptr inbounds %struct.action_item, %struct.action_item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 129
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 128, i32 129
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %31, %4
  %37 = load i32, i32* %13, align 4
  switch i32 %37, label %55 [
    i32 129, label %38
    i32 128, label %50
  ]

38:                                               ; preds = %36
  %39 = load %struct.world*, %struct.world** %6, align 8
  %40 = load %struct.objagg*, %struct.objagg** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call %struct.objagg_obj* @world_obj_get(%struct.world* %39, %struct.objagg* %40, i32 %41)
  store %struct.objagg_obj* %42, %struct.objagg_obj** %14, align 8
  %43 = load %struct.objagg_obj*, %struct.objagg_obj** %14, align 8
  %44 = call i32 @IS_ERR(%struct.objagg_obj* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.objagg_obj*, %struct.objagg_obj** %14, align 8
  %48 = call i32 @PTR_ERR(%struct.objagg_obj* %47)
  store i32 %48, i32* %5, align 4
  br label %88

49:                                               ; preds = %38
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.world*, %struct.world** %6, align 8
  %52 = load %struct.objagg*, %struct.objagg** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @world_obj_put(%struct.world* %51, %struct.objagg* %52, i32 %53)
  br label %55

55:                                               ; preds = %36, %50, %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %88

59:                                               ; preds = %55
  %60 = load %struct.world*, %struct.world** %6, align 8
  %61 = load %struct.action_item*, %struct.action_item** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @check_expect(%struct.world* %60, %struct.action_item* %61, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %82

68:                                               ; preds = %59
  %69 = load %struct.objagg*, %struct.objagg** %7, align 8
  %70 = load %struct.action_item*, %struct.action_item** %8, align 8
  %71 = getelementptr inbounds %struct.action_item, %struct.action_item* %70, i32 0, i32 2
  %72 = call i32 @check_expect_stats(%struct.objagg* %69, i32* %71, i8** %15)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.action_item*, %struct.action_item** %8, align 8
  %77 = getelementptr inbounds %struct.action_item, %struct.action_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %78, i8* %79)
  br label %82

81:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %88

82:                                               ; preds = %75, %67
  %83 = load %struct.world*, %struct.world** %6, align 8
  %84 = load %struct.objagg*, %struct.objagg** %7, align 8
  %85 = load %struct.action_item*, %struct.action_item** %8, align 8
  %86 = call i32 @test_delta_action_item(%struct.world* %83, %struct.objagg* %84, %struct.action_item* %85, i32 1)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %81, %58, %46
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.objagg_obj* @world_obj_get(%struct.world*, %struct.objagg*, i32) #1

declare dso_local i32 @IS_ERR(%struct.objagg_obj*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_obj*) #1

declare dso_local i32 @world_obj_put(%struct.world*, %struct.objagg*, i32) #1

declare dso_local i32 @check_expect(%struct.world*, %struct.action_item*, i32, i32) #1

declare dso_local i32 @check_expect_stats(%struct.objagg*, i32*, i8**) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
