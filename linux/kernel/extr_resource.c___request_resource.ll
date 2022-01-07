; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c___request_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c___request_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.resource*, %struct.resource*)* @__request_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__request_resource(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource**, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  store %struct.resource* %20, %struct.resource** %3, align 8
  br label %71

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  store %struct.resource* %28, %struct.resource** %3, align 8
  br label %71

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  store %struct.resource* %36, %struct.resource** %3, align 8
  br label %71

37:                                               ; preds = %29
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 4
  store %struct.resource** %39, %struct.resource*** %9, align 8
  br label %40

40:                                               ; preds = %68, %37
  %41 = load %struct.resource**, %struct.resource*** %9, align 8
  %42 = load %struct.resource*, %struct.resource** %41, align 8
  store %struct.resource* %42, %struct.resource** %8, align 8
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45, %40
  %52 = load %struct.resource*, %struct.resource** %8, align 8
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 2
  store %struct.resource* %52, %struct.resource** %54, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* %55, %struct.resource** %56, align 8
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = load %struct.resource*, %struct.resource** %5, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 3
  store %struct.resource* %57, %struct.resource** %59, align 8
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %71

60:                                               ; preds = %45
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 2
  store %struct.resource** %62, %struct.resource*** %9, align 8
  %63 = load %struct.resource*, %struct.resource** %8, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %40

69:                                               ; preds = %60
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  store %struct.resource* %70, %struct.resource** %3, align 8
  br label %71

71:                                               ; preds = %69, %51, %35, %27, %19
  %72 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
