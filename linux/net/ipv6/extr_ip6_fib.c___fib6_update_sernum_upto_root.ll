; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c___fib6_update_sernum_upto_root.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c___fib6_update_sernum_upto_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_info*, i32)* @__fib6_update_sernum_upto_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fib6_update_sernum_upto_root(%struct.fib6_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_node*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %7 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %10 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @lockdep_is_held(i32* %12)
  %14 = call %struct.fib6_node* @rcu_dereference_protected(i32 %8, i32 %13)
  store %struct.fib6_node* %14, %struct.fib6_node** %5, align 8
  %15 = call i32 (...) @smp_wmb()
  br label %16

16:                                               ; preds = %19, %2
  %17 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %18 = icmp ne %struct.fib6_node* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %22 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %24 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %27 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @lockdep_is_held(i32* %29)
  %31 = call %struct.fib6_node* @rcu_dereference_protected(i32 %25, i32 %30)
  store %struct.fib6_node* %31, %struct.fib6_node** %5, align 8
  br label %16

32:                                               ; preds = %16
  ret void
}

declare dso_local %struct.fib6_node* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
