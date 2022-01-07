; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_pool_map = type { i32, i32* }
%struct.svc_pool = type { i32 }
%struct.svc_serv = type { i32, %struct.svc_pool* }

@svc_pool_map = common dso_local global %struct.svc_pool_map zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_pool* @svc_pool_for_cpu(%struct.svc_serv* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_pool_map*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.svc_pool_map* @svc_pool_map, %struct.svc_pool_map** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %8 = call i64 @svc_serv_is_pooled(%struct.svc_serv* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %12 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %10
  %15 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %16 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %10
  %23 = load %struct.svc_pool_map*, %struct.svc_pool_map** %5, align 8
  %24 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @cpu_to_node(i32 %26)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %10, %22, %14
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %33 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %32, i32 0, i32 1
  %34 = load %struct.svc_pool*, %struct.svc_pool** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %37 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = urem i32 %35, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %34, i64 %40
  ret %struct.svc_pool* %41
}

declare dso_local i64 @svc_serv_is_pooled(%struct.svc_serv*) #1

declare dso_local i64 @cpu_to_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
