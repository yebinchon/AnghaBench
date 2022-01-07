; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_map_groups.c_check_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_map_groups.c_check_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_def = type { i64, i64, i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"wrong map start\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wrong map end\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wrong map name\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong map refcnt\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"less maps expected\00", align 1
@TEST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_def*, i32, %struct.map_groups*)* @check_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_maps(%struct.map_def* %0, i32 %1, %struct.map_groups* %2) #0 {
  %4 = alloca %struct.map_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_groups*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i32, align 4
  store %struct.map_def* %0, %struct.map_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.map_groups* %2, %struct.map_groups** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.map_groups*, %struct.map_groups** %6, align 8
  %10 = call %struct.map* @map_groups__first(%struct.map_groups* %9)
  store %struct.map* %10, %struct.map** %7, align 8
  br label %11

11:                                               ; preds = %80, %3
  %12 = load %struct.map*, %struct.map** %7, align 8
  %13 = icmp ne %struct.map* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %11
  %15 = load %struct.map*, %struct.map** %7, align 8
  %16 = getelementptr inbounds %struct.map, %struct.map* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.map_def*, %struct.map_def** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.map_def, %struct.map_def* %18, i64 %20
  %22 = getelementptr inbounds %struct.map_def, %struct.map_def* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.map*, %struct.map** %7, align 8
  %28 = getelementptr inbounds %struct.map, %struct.map* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.map_def*, %struct.map_def** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.map_def, %struct.map_def* %30, i64 %32
  %34 = getelementptr inbounds %struct.map_def, %struct.map_def* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.map*, %struct.map** %7, align 8
  %40 = getelementptr inbounds %struct.map, %struct.map* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.map_def*, %struct.map_def** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.map_def, %struct.map_def* %44, i64 %46
  %48 = getelementptr inbounds %struct.map_def, %struct.map_def* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcmp(i32 %43, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.map*, %struct.map** %7, align 8
  %56 = getelementptr inbounds %struct.map, %struct.map* %55, i32 0, i32 2
  %57 = call i32 @refcount_read(i32* %56)
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load %struct.map*, %struct.map** %7, align 8
  %64 = call %struct.map* @map_groups__next(%struct.map* %63)
  store %struct.map* %64, %struct.map** %7, align 8
  %65 = load %struct.map*, %struct.map** %7, align 8
  %66 = icmp ne %struct.map* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %14
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %67, %14
  %72 = load %struct.map*, %struct.map** %7, align 8
  %73 = icmp ne %struct.map* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br label %80

80:                                               ; preds = %78, %67
  %81 = phi i1 [ true, %67 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %11

84:                                               ; preds = %11
  %85 = load i32, i32* @TEST_OK, align 4
  ret i32 %85
}

declare dso_local %struct.map* @map_groups__first(%struct.map_groups*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.map* @map_groups__next(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
