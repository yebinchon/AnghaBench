; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i32 }

@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @ip_vs_conn_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_unlink(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 3
  %15 = call i32 @refcount_dec_if_one(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %18 = call i32 @ip_vs_conn_hashkey_conn(%struct.ip_vs_conn* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ct_write_lock_bh(i32 %19)
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %16
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 3
  %33 = call i32 @refcount_dec_if_one(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %37 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %36, i32 0, i32 2
  %38 = call i32 @hlist_del_rcu(i32* %37)
  %39 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %30
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ct_write_unlock_bh(i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @refcount_dec_if_one(i32*) #1

declare dso_local i32 @ip_vs_conn_hashkey_conn(%struct.ip_vs_conn*) #1

declare dso_local i32 @ct_write_lock_bh(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ct_write_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
