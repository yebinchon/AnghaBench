; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_choose_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_choose_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_online_nodes = common dso_local global i32 0, align 4
@SVC_POOL_PERNODE = common dso_local global i32 0, align 4
@first_online_node = common dso_local global i32 0, align 4
@SVC_POOL_PERCPU = common dso_local global i32 0, align 4
@SVC_POOL_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @svc_pool_map_choose_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_pool_map_choose_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @nr_online_nodes, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @SVC_POOL_PERNODE, align 4
  store i32 %6, i32* %1, align 4
  br label %16

7:                                                ; preds = %0
  %8 = load i32, i32* @first_online_node, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @nr_cpus_node(i32 %9)
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @SVC_POOL_PERCPU, align 4
  store i32 %13, i32* %1, align 4
  br label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @SVC_POOL_GLOBAL, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %12, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @nr_cpus_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
