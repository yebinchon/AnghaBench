; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_find_next_iomem_res.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_find_next_iomem_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@resource_lock = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IORES_DESC_NONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32, %struct.resource*)* @find_next_iomem_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_iomem_res(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.resource* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.resource*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.resource* %5, %struct.resource** %13, align 8
  store i32 1, i32* %14, align 4
  %16 = load %struct.resource*, %struct.resource** %13, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %112

21:                                               ; preds = %6
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %112

28:                                               ; preds = %21
  %29 = call i32 @read_lock(i32* @resource_lock)
  %30 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iomem_resource, i32 0, i32 0), align 8
  store %struct.resource* %30, %struct.resource** %15, align 8
  br label %31

31:                                               ; preds = %70, %28
  %32 = load %struct.resource*, %struct.resource** %15, align 8
  %33 = icmp ne %struct.resource* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load %struct.resource*, %struct.resource** %15, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.resource* null, %struct.resource** %15, align 8
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.resource*, %struct.resource** %15, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.resource*, %struct.resource** %15, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %70

58:                                               ; preds = %48
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @IORES_DESC_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.resource*, %struct.resource** %15, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %70

69:                                               ; preds = %62, %58
  br label %74

70:                                               ; preds = %68, %57, %47
  %71 = load %struct.resource*, %struct.resource** %15, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call %struct.resource* @next_resource(%struct.resource* %71, i32 %72)
  store %struct.resource* %73, %struct.resource** %15, align 8
  br label %31

74:                                               ; preds = %69, %40, %31
  %75 = load %struct.resource*, %struct.resource** %15, align 8
  %76 = icmp ne %struct.resource* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.resource*, %struct.resource** %15, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @max(i64 %78, i64 %81)
  %83 = load %struct.resource*, %struct.resource** %13, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.resource*, %struct.resource** %15, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @min(i64 %85, i64 %88)
  %90 = load %struct.resource*, %struct.resource** %13, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.resource*, %struct.resource** %15, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.resource*, %struct.resource** %13, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.resource*, %struct.resource** %15, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource*, %struct.resource** %13, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %77, %74
  %103 = call i32 @read_unlock(i32* @resource_lock)
  %104 = load %struct.resource*, %struct.resource** %15, align 8
  %105 = icmp ne %struct.resource* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  br label %110

110:                                              ; preds = %107, %106
  %111 = phi i32 [ 0, %106 ], [ %109, %107 ]
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %25, %18
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.resource* @next_resource(%struct.resource*, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
