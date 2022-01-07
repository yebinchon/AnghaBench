; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_conntrack_find_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_conntrack_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_tuple_hash* (%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*, i32)* @__nf_conntrack_find_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find_get(%struct.net* %0, %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_conntrack_zone*, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %6, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %6, align 8
  %14 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.nf_conntrack_tuple_hash* @____nf_conntrack_find(%struct.net* %12, %struct.nf_conntrack_zone* %13, %struct.nf_conntrack_tuple* %14, i32 %15)
  store %struct.nf_conntrack_tuple_hash* %16, %struct.nf_conntrack_tuple_hash** %9, align 8
  %17 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %9, align 8
  %18 = icmp ne %struct.nf_conntrack_tuple_hash* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %9, align 8
  %21 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %20)
  store %struct.nf_conn* %21, %struct.nf_conn** %10, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc_not_zero(i32* %24)
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %9, align 8
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %31 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %6, align 8
  %32 = load %struct.net*, %struct.net** %5, align 8
  %33 = call i32 @nf_ct_key_equal(%struct.nf_conntrack_tuple_hash* %29, %struct.nf_conntrack_tuple* %30, %struct.nf_conntrack_zone* %31, %struct.net* %32)
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %39 = call i32 @nf_ct_put(%struct.nf_conn* %38)
  br label %40

40:                                               ; preds = %37, %19
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %9, align 8
  br label %41

41:                                               ; preds = %40, %4
  br label %42

42:                                               ; preds = %41, %36
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %9, align 8
  ret %struct.nf_conntrack_tuple_hash* %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @____nf_conntrack_find(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @nf_ct_key_equal(%struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_zone*, %struct.net*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
