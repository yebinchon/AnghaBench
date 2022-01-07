; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_find_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_find_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i32, i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fib6_node* }
%struct.fib6_table = type { i32 }
%struct.fib6_node = type { i32, i32, i32, i32 }

@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_info* (%struct.net*, %struct.fib6_table*, %struct.fib6_node*)* @fib6_find_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_info* @fib6_find_prefix(%struct.net* %0, %struct.fib6_table* %1, %struct.fib6_node* %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib6_table*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca %struct.fib6_node*, align 8
  %9 = alloca %struct.fib6_node*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %6, align 8
  store %struct.fib6_node* %2, %struct.fib6_node** %7, align 8
  %10 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %11 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTN_ROOT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.fib6_node*, %struct.fib6_node** %19, align 8
  %21 = bitcast %struct.fib6_node* %20 to %struct.fib6_info*
  store %struct.fib6_info* %21, %struct.fib6_info** %4, align 8
  br label %68

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %64, %22
  %24 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %25 = icmp ne %struct.fib6_node* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %28 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %31 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %30, i32 0, i32 0
  %32 = call i32 @lockdep_is_held(i32* %31)
  %33 = call %struct.fib6_node* @rcu_dereference_protected(i32 %29, i32 %32)
  store %struct.fib6_node* %33, %struct.fib6_node** %8, align 8
  %34 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %35 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %38 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %37, i32 0, i32 0
  %39 = call i32 @lockdep_is_held(i32* %38)
  %40 = call %struct.fib6_node* @rcu_dereference_protected(i32 %36, i32 %39)
  store %struct.fib6_node* %40, %struct.fib6_node** %9, align 8
  %41 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  %42 = icmp ne %struct.fib6_node* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %26
  %44 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  %45 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %48 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %47, i32 0, i32 0
  %49 = call i32 @lockdep_is_held(i32* %48)
  %50 = call %struct.fib6_node* @rcu_dereference_protected(i32 %46, i32 %49)
  %51 = bitcast %struct.fib6_node* %50 to %struct.fib6_info*
  store %struct.fib6_info* %51, %struct.fib6_info** %4, align 8
  br label %68

52:                                               ; preds = %26
  %53 = load %struct.fib6_node*, %struct.fib6_node** %9, align 8
  %54 = icmp ne %struct.fib6_node* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.fib6_node*, %struct.fib6_node** %9, align 8
  %57 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %60 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %59, i32 0, i32 0
  %61 = call i32 @lockdep_is_held(i32* %60)
  %62 = call %struct.fib6_node* @rcu_dereference_protected(i32 %58, i32 %61)
  %63 = bitcast %struct.fib6_node* %62 to %struct.fib6_info*
  store %struct.fib6_info* %63, %struct.fib6_info** %4, align 8
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %66 = call %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node* %65)
  store %struct.fib6_node* %66, %struct.fib6_node** %7, align 8
  br label %23

67:                                               ; preds = %23
  store %struct.fib6_info* null, %struct.fib6_info** %4, align 8
  br label %68

68:                                               ; preds = %67, %55, %43, %16
  %69 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  ret %struct.fib6_info* %69
}

declare dso_local %struct.fib6_node* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
