; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_region_intersects.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_region_intersects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i64, i64, %struct.resource*, i8*, i8* }

@resource_lock = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IORES_DESC_NONE = common dso_local global i64 0, align 8
@REGION_INTERSECTS = common dso_local global i32 0, align 4
@REGION_DISJOINT = common dso_local global i32 0, align 4
@REGION_MIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @region_intersects(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 4
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = getelementptr i8, i8* %19, i64 -1
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = call i32 @read_lock(i32* @resource_lock)
  %23 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iomem_resource, i32 0, i32 0), align 8
  store %struct.resource* %23, %struct.resource** %13, align 8
  br label %24

24:                                               ; preds = %65, %4
  %25 = load %struct.resource*, %struct.resource** %13, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load %struct.resource*, %struct.resource** %13, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @IORES_DESC_NONE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.resource*, %struct.resource** %13, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ true, %35 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %27
  %48 = phi i1 [ false, %27 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load %struct.resource*, %struct.resource** %13, align 8
  %51 = call i64 @resource_overlaps(%struct.resource* %50, %struct.resource* %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %57, %56 ], [ %60, %59 ]
  br label %64

64:                                               ; preds = %62, %47
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.resource*, %struct.resource** %13, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 2
  %68 = load %struct.resource*, %struct.resource** %67, align 8
  store %struct.resource* %68, %struct.resource** %13, align 8
  br label %24

69:                                               ; preds = %24
  %70 = call i32 @read_unlock(i32* @resource_lock)
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @REGION_INTERSECTS, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @REGION_DISJOINT, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %5, align 4
  br label %89

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @REGION_MIXED, align 4
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @REGION_DISJOINT, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %85, %80
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @resource_overlaps(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
