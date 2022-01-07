; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c___unregister_pernet_operations.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c___unregister_pernet_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pernet_operations = type { i32 }

@init_net_initialized = common dso_local global i32 0, align 4
@net_exit_list = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pernet_operations*)* @__unregister_pernet_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unregister_pernet_operations(%struct.pernet_operations* %0) #0 {
  %2 = alloca %struct.pernet_operations*, align 8
  store %struct.pernet_operations* %0, %struct.pernet_operations** %2, align 8
  %3 = load i32, i32* @init_net_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.pernet_operations*, %struct.pernet_operations** %2, align 8
  %7 = getelementptr inbounds %struct.pernet_operations, %struct.pernet_operations* %6, i32 0, i32 0
  %8 = call i32 @list_del(i32* %7)
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @net_exit_list, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_net, i32 0, i32 0), i32* @net_exit_list)
  %13 = load %struct.pernet_operations*, %struct.pernet_operations** %2, align 8
  %14 = call i32 @ops_pre_exit_list(%struct.pernet_operations* %13, i32* @net_exit_list)
  %15 = call i32 (...) @synchronize_rcu()
  %16 = load %struct.pernet_operations*, %struct.pernet_operations** %2, align 8
  %17 = call i32 @ops_exit_list(%struct.pernet_operations* %16, i32* @net_exit_list)
  %18 = load %struct.pernet_operations*, %struct.pernet_operations** %2, align 8
  %19 = call i32 @ops_free_list(%struct.pernet_operations* %18, i32* @net_exit_list)
  br label %20

20:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ops_pre_exit_list(%struct.pernet_operations*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @ops_exit_list(%struct.pernet_operations*, i32*) #1

declare dso_local i32 @ops_free_list(%struct.pernet_operations*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
