; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_set_resource_limit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_set_resource_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdmacg_resource_pool = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@S32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdmacg_resource_pool*, i32, i32)* @set_resource_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_resource_limit(%struct.rdmacg_resource_pool* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rdmacg_resource_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdmacg_resource_pool* %0, %struct.rdmacg_resource_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @S32_MAX, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %12 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S32_MAX, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %23 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %21, %10
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %29 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @S32_MAX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %40 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %27
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %47 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
