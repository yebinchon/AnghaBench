; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_table = type { i32 }
%struct.sock = type { i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@nl_table = common dso_local global %struct.netlink_table* null, align 8
@netlink_rhashtable_params = common dso_local global i32 0, align 4
@NETLINK_GENERIC = common dso_local global i64 0, align 8
@genl_sk_destructing_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @netlink_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlink_remove(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.netlink_table*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.netlink_table*, %struct.netlink_table** @nl_table, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %4, i64 %7
  store %struct.netlink_table* %8, %struct.netlink_table** %3, align 8
  %9 = load %struct.netlink_table*, %struct.netlink_table** %3, align 8
  %10 = getelementptr inbounds %struct.netlink_table, %struct.netlink_table* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* @netlink_rhashtable_params, align 4
  %15 = call i32 @rhashtable_remove_fast(i32* %10, i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = call i32 @refcount_read(i32* %19)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @__sock_put(%struct.sock* %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = call i32 (...) @netlink_table_grab()
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call %struct.TYPE_2__* @nlk_sk(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = call i32 @__sk_del_bind_node(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = call i32 @netlink_update_listeners(%struct.sock* %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NETLINK_GENERIC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @atomic_inc(i32* @genl_sk_destructing_cnt)
  br label %46

46:                                               ; preds = %44, %38
  %47 = call i32 (...) @netlink_table_ungrab()
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @__sk_del_bind_node(%struct.sock*) #1

declare dso_local i32 @netlink_update_listeners(%struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
