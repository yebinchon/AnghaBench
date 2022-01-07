; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_lib_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udp_table* }
%struct.udp_table = type { i32 }
%struct.udp_hslot = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_lib_rehash(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_table*, align 8
  %6 = alloca %struct.udp_hslot*, align 8
  %7 = alloca %struct.udp_hslot*, align 8
  %8 = alloca %struct.udp_hslot*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i64 @sk_hashed(%struct.sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %101

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.udp_table*, %struct.udp_table** %17, align 8
  store %struct.udp_table* %18, %struct.udp_table** %5, align 8
  %19 = load %struct.udp_table*, %struct.udp_table** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %19, i32 %23)
  store %struct.udp_hslot* %24, %struct.udp_hslot** %7, align 8
  %25 = load %struct.udp_table*, %struct.udp_table** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.udp_hslot* @udp_hashslot2(%struct.udp_table* %25, i32 %26)
  store %struct.udp_hslot* %27, %struct.udp_hslot** %8, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %33 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %34 = icmp ne %struct.udp_hslot* %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %12
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @rcu_access_pointer(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %35, %12
  %42 = load %struct.udp_table*, %struct.udp_table** %5, align 8
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @sock_net(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.udp_hslot* @udp_hashslot(%struct.udp_table* %42, i32 %44, i32 %48)
  store %struct.udp_hslot* %49, %struct.udp_hslot** %6, align 8
  %50 = load %struct.udp_hslot*, %struct.udp_hslot** %6, align 8
  %51 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @rcu_access_pointer(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @reuseport_detach_sock(%struct.sock* %59)
  br label %61

61:                                               ; preds = %58, %41
  %62 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %63 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %64 = icmp ne %struct.udp_hslot* %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %67 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @hlist_del_init_rcu(i32* %71)
  %73 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %74 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %78 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %81 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %87 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %86, i32 0, i32 2
  %88 = call i32 @hlist_add_head_rcu(i32* %85, i32* %87)
  %89 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %90 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.udp_hslot*, %struct.udp_hslot** %8, align 8
  %94 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  br label %96

96:                                               ; preds = %65, %61
  %97 = load %struct.udp_hslot*, %struct.udp_hslot** %6, align 8
  %98 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %35
  br label %101

101:                                              ; preds = %100, %2
  ret void
}

declare dso_local i64 @sk_hashed(%struct.sock*) #1

declare dso_local %struct.udp_hslot* @udp_hashslot2(%struct.udp_table*, i32) #1

declare dso_local %struct.TYPE_6__* @udp_sk(%struct.sock*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local %struct.udp_hslot* @udp_hashslot(%struct.udp_table*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @reuseport_detach_sock(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
