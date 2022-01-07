; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c___adjust_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c___adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i64, i64)* @__adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__adjust_resource(%struct.resource* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 4
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.resource*, %struct.resource** %8, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %77

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23
  br label %109

36:                                               ; preds = %29
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 2
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 2
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %109

50:                                               ; preds = %41, %36
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 3
  %53 = load %struct.resource*, %struct.resource** %52, align 8
  store %struct.resource* %53, %struct.resource** %7, align 8
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = icmp ne %struct.resource* %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %64, %57
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 2
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = load %struct.resource*, %struct.resource** %4, align 8
  %63 = icmp ne %struct.resource* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 2
  %67 = load %struct.resource*, %struct.resource** %66, align 8
  store %struct.resource* %67, %struct.resource** %7, align 8
  br label %58

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.resource*, %struct.resource** %7, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %109

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %22
  %78 = load %struct.resource*, %struct.resource** %4, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 3
  %80 = load %struct.resource*, %struct.resource** %79, align 8
  store %struct.resource* %80, %struct.resource** %7, align 8
  br label %81

81:                                               ; preds = %98, %77
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %84
  br label %109

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.resource*, %struct.resource** %7, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 2
  %101 = load %struct.resource*, %struct.resource** %100, align 8
  store %struct.resource* %101, %struct.resource** %7, align 8
  br label %81

102:                                              ; preds = %81
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.resource*, %struct.resource** %4, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.resource*, %struct.resource** %4, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %102, %96, %74, %49, %35
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
