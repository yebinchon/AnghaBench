; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_get_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_pool_map = type { i64, i32*, i64 }

@svc_pool_map = common dso_local global %struct.svc_pool_map zeroinitializer, align 8
@SVC_POOL_PERCPU = common dso_local global i64 0, align 8
@SVC_POOL_PERNODE = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @svc_pool_map_get_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_pool_map_get_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_pool_map*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.svc_pool_map* @svc_pool_map, %struct.svc_pool_map** %4, align 8
  %5 = load %struct.svc_pool_map*, %struct.svc_pool_map** %4, align 8
  %6 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.svc_pool_map*, %struct.svc_pool_map** %4, align 8
  %11 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SVC_POOL_PERCPU, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.svc_pool_map*, %struct.svc_pool_map** %4, align 8
  %17 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_node(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %9
  %25 = load %struct.svc_pool_map*, %struct.svc_pool_map** %4, align 8
  %26 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SVC_POOL_PERNODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.svc_pool_map*, %struct.svc_pool_map** %4, align 8
  %32 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %30, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @cpu_to_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
