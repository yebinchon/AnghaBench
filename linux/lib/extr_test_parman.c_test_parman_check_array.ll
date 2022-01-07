; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_check_array.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_check_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i32, i32, %struct.test_parman_item** }
%struct.test_parman_item = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@TEST_PARMAN_BASE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Array limit is lower than the base count (%lu < %lu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Gap found in array even though they are forbidden\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Item belongs under higher priority then the last one (current: %lu, previous: %lu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Item has different index in compare to where it actually is (%lu != %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Number of used items in array does not match (%u != %u)\0A\00", align 1
@TEST_PARMAN_RESIZE_STEP_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [82 x i8] c"Number of unused item at the end of array is bigger than resize step (%u >= %lu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Priority array check successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_parman*, i32)* @test_parman_check_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parman_check_array(%struct.test_parman* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_parman*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.test_parman_item*, align 8
  store %struct.test_parman* %0, %struct.test_parman** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %12 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TEST_PARMAN_BASE_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %18 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TEST_PARMAN_BASE_COUNT, align 4
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %96, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %28 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %25
  %32 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %33 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %32, i32 0, i32 2
  %34 = load %struct.test_parman_item**, %struct.test_parman_item*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.test_parman_item*, %struct.test_parman_item** %34, i64 %36
  %38 = load %struct.test_parman_item*, %struct.test_parman_item** %37, align 8
  store %struct.test_parman_item* %38, %struct.test_parman_item** %10, align 8
  %39 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %40 = icmp ne %struct.test_parman_item* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %96

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %125

54:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %58 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %66 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %54
  %75 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %76 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  %80 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %81 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load %struct.test_parman_item*, %struct.test_parman_item** %10, align 8
  %88 = getelementptr inbounds %struct.test_parman_item, %struct.test_parman_item* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %125

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %95, %41
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %25

99:                                               ; preds = %25
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %102 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.test_parman*, %struct.test_parman** %4, align 8
  %108 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %125

113:                                              ; preds = %99
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @TEST_PARMAN_RESIZE_STEP_COUNT, align 4
  %116 = icmp uge i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @TEST_PARMAN_RESIZE_STEP_COUNT, align 4
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %113
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %117, %105, %86, %64, %50, %16
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
