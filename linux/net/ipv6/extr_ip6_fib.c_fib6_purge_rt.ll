; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_purge_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_purge_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i32, i64, %struct.fib6_table* }
%struct.fib6_table = type { i32 }
%struct.fib6_node = type { i32, i32, i32 }
%struct.net = type { i32 }

@RTN_RTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_info*, %struct.fib6_node*, %struct.net*)* @fib6_purge_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_purge_rt(%struct.fib6_info* %0, %struct.fib6_node* %1, %struct.net* %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_table*, align 8
  %8 = alloca %struct.fib6_info*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %5, align 8
  store %struct.net* %2, %struct.net** %6, align 8
  %10 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %11 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %10, i32 0, i32 3
  %12 = load %struct.fib6_table*, %struct.fib6_table** %11, align 8
  store %struct.fib6_table* %12, %struct.fib6_table** %7, align 8
  %13 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %14 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %15 = call i32 @fib6_drop_pcpu_from(%struct.fib6_info* %13, %struct.fib6_table* %14)
  %16 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %17 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %22 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %27 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  br label %29

29:                                               ; preds = %25, %20, %3
  %30 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %31 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %30, i32 0, i32 0
  %32 = call i32 @refcount_read(i32* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %71, %34
  %36 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %37 = icmp ne %struct.fib6_node* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %40 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %43 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %42, i32 0, i32 0
  %44 = call i32 @lockdep_is_held(i32* %43)
  %45 = call i8* @rcu_dereference_protected(i32 %41, i32 %44)
  %46 = bitcast i8* %45 to %struct.fib6_info*
  store %struct.fib6_info* %46, %struct.fib6_info** %8, align 8
  %47 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %48 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RTN_RTINFO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %38
  %54 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %55 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %56 = icmp eq %struct.fib6_info* %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.net*, %struct.net** %6, align 8
  %59 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %60 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %61 = call %struct.fib6_info* @fib6_find_prefix(%struct.net* %58, %struct.fib6_table* %59, %struct.fib6_node* %60)
  store %struct.fib6_info* %61, %struct.fib6_info** %9, align 8
  %62 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %63 = call i32 @fib6_info_hold(%struct.fib6_info* %62)
  %64 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %65 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %68 = call i32 @rcu_assign_pointer(i32 %66, %struct.fib6_info* %67)
  %69 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %70 = call i32 @fib6_info_release(%struct.fib6_info* %69)
  br label %71

71:                                               ; preds = %57, %53, %38
  %72 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %73 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %76 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %75, i32 0, i32 0
  %77 = call i32 @lockdep_is_held(i32* %76)
  %78 = call i8* @rcu_dereference_protected(i32 %74, i32 %77)
  %79 = bitcast i8* %78 to %struct.fib6_node*
  store %struct.fib6_node* %79, %struct.fib6_node** %5, align 8
  br label %35

80:                                               ; preds = %35
  br label %81

81:                                               ; preds = %80, %29
  ret void
}

declare dso_local i32 @fib6_drop_pcpu_from(%struct.fib6_info*, %struct.fib6_table*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.fib6_info* @fib6_find_prefix(%struct.net*, %struct.fib6_table*, %struct.fib6_node*) #1

declare dso_local i32 @fib6_info_hold(%struct.fib6_info*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fib6_info*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
