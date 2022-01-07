; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c___release_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c___release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { %struct.resource*, %struct.TYPE_2__*, %struct.resource* }
%struct.TYPE_2__ = type { %struct.resource* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i32)* @__release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__release_resource(%struct.resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource**, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.resource** %12, %struct.resource*** %7, align 8
  br label %13

13:                                               ; preds = %69, %2
  %14 = load %struct.resource**, %struct.resource*** %7, align 8
  %15 = load %struct.resource*, %struct.resource** %14, align 8
  store %struct.resource* %15, %struct.resource** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %72

19:                                               ; preds = %13
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = icmp eq %struct.resource* %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 2
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load %struct.resource*, %struct.resource** %33, align 8
  %35 = load %struct.resource**, %struct.resource*** %7, align 8
  store %struct.resource* %34, %struct.resource** %35, align 8
  br label %66

36:                                               ; preds = %26
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 2
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  store %struct.resource* %39, %struct.resource** %8, align 8
  br label %40

40:                                               ; preds = %52, %36
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 1
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  %49 = icmp ne %struct.resource* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %56

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %54, align 8
  store %struct.resource* %55, %struct.resource** %8, align 8
  br label %40

56:                                               ; preds = %50
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 2
  %59 = load %struct.resource*, %struct.resource** %58, align 8
  %60 = load %struct.resource**, %struct.resource*** %7, align 8
  store %struct.resource* %59, %struct.resource** %60, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %62, align 8
  %64 = load %struct.resource*, %struct.resource** %8, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  store %struct.resource* %63, %struct.resource** %65, align 8
  br label %66

66:                                               ; preds = %56, %31
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %68, align 8
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %19
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  store %struct.resource** %71, %struct.resource*** %7, align 8
  br label %13

72:                                               ; preds = %18
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
