; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta_obj_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_nodelta_obj_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32, i32 }
%struct.objagg = type { i32 }
%struct.objagg_obj = type { i32 }
%struct.root = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Key %u: Failed to get object.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Key %u: Root was not created\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Key %u: Root was incorrectly created\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Key %u: Root has unexpected key id\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Key %u: Buffer does not match the expected content\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.world*, %struct.objagg*, i32, i32)* @test_nodelta_obj_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_nodelta_obj_get(%struct.world* %0, %struct.objagg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.world*, align 8
  %7 = alloca %struct.objagg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.objagg_obj*, align 8
  %12 = alloca %struct.root*, align 8
  %13 = alloca i32, align 4
  store %struct.world* %0, %struct.world** %6, align 8
  store %struct.objagg* %1, %struct.objagg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.world*, %struct.world** %6, align 8
  %15 = getelementptr inbounds %struct.world, %struct.world* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.world*, %struct.world** %6, align 8
  %21 = getelementptr inbounds %struct.world, %struct.world* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @prandom_bytes(i32 %22, i32 4)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.world*, %struct.world** %6, align 8
  %26 = load %struct.objagg*, %struct.objagg** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.objagg_obj* @world_obj_get(%struct.world* %25, %struct.objagg* %26, i32 %27)
  store %struct.objagg_obj* %28, %struct.objagg_obj** %11, align 8
  %29 = load %struct.objagg_obj*, %struct.objagg_obj** %11, align 8
  %30 = call i64 @IS_ERR(%struct.objagg_obj* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.objagg_obj*, %struct.objagg_obj** %11, align 8
  %36 = call i32 @PTR_ERR(%struct.objagg_obj* %35)
  store i32 %36, i32* %5, align 4
  br label %104

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.world*, %struct.world** %6, align 8
  %42 = getelementptr inbounds %struct.world, %struct.world* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  br label %99

52:                                               ; preds = %40
  br label %65

53:                                               ; preds = %37
  %54 = load %struct.world*, %struct.world** %6, align 8
  %55 = getelementptr inbounds %struct.world, %struct.world* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %99

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.objagg_obj*, %struct.objagg_obj** %11, align 8
  %67 = call %struct.root* @objagg_obj_root_priv(%struct.objagg_obj* %66)
  store %struct.root* %67, %struct.root** %12, align 8
  %68 = load %struct.root*, %struct.root** %12, align 8
  %69 = getelementptr inbounds %struct.root, %struct.root* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %98

79:                                               ; preds = %65
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.world*, %struct.world** %6, align 8
  %84 = getelementptr inbounds %struct.world, %struct.world* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.root*, %struct.root** %12, align 8
  %87 = getelementptr inbounds %struct.root, %struct.root* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @memcmp(i32 %85, i32 %88, i32 4)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %97

96:                                               ; preds = %82, %79
  store i32 0, i32* %5, align 4
  br label %104

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %74
  br label %99

99:                                               ; preds = %98, %59, %47
  %100 = load %struct.objagg*, %struct.objagg** %7, align 8
  %101 = load %struct.objagg_obj*, %struct.objagg_obj** %11, align 8
  %102 = call i32 @objagg_obj_put(%struct.objagg* %100, %struct.objagg_obj* %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %96, %32
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @prandom_bytes(i32, i32) #1

declare dso_local %struct.objagg_obj* @world_obj_get(%struct.world*, %struct.objagg*, i32) #1

declare dso_local i64 @IS_ERR(%struct.objagg_obj*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_obj*) #1

declare dso_local %struct.root* @objagg_obj_root_priv(%struct.objagg_obj*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @objagg_obj_put(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
