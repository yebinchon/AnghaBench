; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_next_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_next_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { %struct.resource*, %struct.resource*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.resource*, i32)* @next_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @next_resource(%struct.resource* %0, i32 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %11 = load %struct.resource*, %struct.resource** %10, align 8
  store %struct.resource* %11, %struct.resource** %3, align 8
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 2
  %15 = load %struct.resource*, %struct.resource** %14, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 2
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %20, %struct.resource** %3, align 8
  br label %42

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %34, %21
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %24, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  %31 = icmp ne %struct.resource* %30, null
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  %37 = load %struct.resource*, %struct.resource** %36, align 8
  store %struct.resource* %37, %struct.resource** %4, align 8
  br label %22

38:                                               ; preds = %32
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %40, align 8
  store %struct.resource* %41, %struct.resource** %3, align 8
  br label %42

42:                                               ; preds = %38, %17, %8
  %43 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
