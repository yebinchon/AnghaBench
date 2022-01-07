; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_register_pernet_operations.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_register_pernet_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.pernet_operations = type { i32* }

@net_generic_ids = common dso_local global i32 0, align 4
@MIN_PERNET_OPS_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@max_gen_ptrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.pernet_operations*)* @register_pernet_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pernet_operations(%struct.list_head* %0, %struct.pernet_operations* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.pernet_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.pernet_operations* %1, %struct.pernet_operations** %5, align 8
  %7 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %8 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32, i32* @MIN_PERNET_OPS_ID, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @ida_alloc_min(i32* @net_generic_ids, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %22 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @max_gen_ptrs, align 4
  %25 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %26 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @max(i32 %24, i32 %29)
  store i32 %30, i32* @max_gen_ptrs, align 4
  br label %31

31:                                               ; preds = %19, %2
  %32 = load %struct.list_head*, %struct.list_head** %4, align 8
  %33 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %34 = call i32 @__register_pernet_operations(%struct.list_head* %32, %struct.pernet_operations* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = call i32 (...) @rcu_barrier()
  %39 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %40 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.pernet_operations*, %struct.pernet_operations** %5, align 8
  %45 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ida_free(i32* @net_generic_ids, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ida_alloc_min(i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @__register_pernet_operations(%struct.list_head*, %struct.pernet_operations*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
