; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_set_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_set_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_pool_map = type { i32*, i64, i32 }
%struct.task_struct = type { i32 }

@svc_pool_map = common dso_local global %struct.svc_pool_map zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @svc_pool_map_set_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_pool_map_set_cpumask(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_pool_map*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.svc_pool_map* @svc_pool_map, %struct.svc_pool_map** %5, align 8
  %7 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %8 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %15 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %21 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %27 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 128, label %34
  ]

29:                                               ; preds = %25
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cpumask_of(i32 %31)
  %33 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %30, i32 %32)
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpumask_of_node(i32 %36)
  %38 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %35, i32 %37)
  br label %39

39:                                               ; preds = %24, %25, %34, %29
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
