; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.udp_table* }
%struct.udp_table = type { i32 }
%struct.udp_hslot = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_lib_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_table*, align 8
  %4 = alloca %struct.udp_hslot*, align 8
  %5 = alloca %struct.udp_hslot*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i64 @sk_hashed(%struct.sock* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.udp_table*, %struct.udp_table** %14, align 8
  store %struct.udp_table* %15, %struct.udp_table** %3, align 8
  %16 = load %struct.udp_table*, %struct.udp_table** %3, align 8
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.udp_hslot* @udp_hashslot(%struct.udp_table* %16, i32 %18, i32 %22)
  store %struct.udp_hslot* %23, %struct.udp_hslot** %4, align 8
  %24 = load %struct.udp_table*, %struct.udp_table** %3, align 8
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %24, i32 %28)
  store %struct.udp_hslot* %29, %struct.udp_hslot** %5, align 8
  %30 = load %struct.udp_hslot*, %struct.udp_hslot** %4, align 8
  %31 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @rcu_access_pointer(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i32 @reuseport_detach_sock(%struct.sock* %39)
  br label %41

41:                                               ; preds = %38, %9
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i64 @sk_del_node_init_rcu(%struct.sock* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.udp_hslot*, %struct.udp_hslot** %4, align 8
  %47 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = call i32 @sock_net(%struct.sock* %53)
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @sock_prot_inuse_add(i32 %54, %struct.TYPE_7__* %57, i32 -1)
  %59 = load %struct.udp_hslot*, %struct.udp_hslot** %5, align 8
  %60 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @hlist_del_init_rcu(i32* %64)
  %66 = load %struct.udp_hslot*, %struct.udp_hslot** %5, align 8
  %67 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.udp_hslot*, %struct.udp_hslot** %5, align 8
  %71 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  br label %73

73:                                               ; preds = %45, %41
  %74 = load %struct.udp_hslot*, %struct.udp_hslot** %4, align 8
  %75 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  br label %77

77:                                               ; preds = %73, %1
  ret void
}

declare dso_local i64 @sk_hashed(%struct.sock*) #1

declare dso_local %struct.udp_hslot* @udp_hashslot(%struct.udp_table*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @udp_sk(%struct.sock*) #1

declare dso_local %struct.udp_hslot* @udp_hashslot2(%struct.udp_table*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @reuseport_detach_sock(%struct.sock*) #1

declare dso_local i64 @sk_del_node_init_rcu(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
