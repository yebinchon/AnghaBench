; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_cport.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_cport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32 }

@IP_VS_CONN_F_NO_CPORT = common dso_local global i32 0, align 4
@ip_vs_conn_no_cport_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_conn_fill_cport(%struct.ip_vs_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %6 = call i64 @ip_vs_conn_unhash(%struct.ip_vs_conn* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IP_VS_CONN_F_NO_CPORT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = call i32 @atomic_dec(i32* @ip_vs_conn_no_cport_cnt)
  %20 = load i32, i32* @IP_VS_CONN_F_NO_CPORT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %8
  %30 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %31 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %34 = call i32 @ip_vs_conn_hash(%struct.ip_vs_conn* %33)
  br label %35

35:                                               ; preds = %29, %2
  ret void
}

declare dso_local i64 @ip_vs_conn_unhash(%struct.ip_vs_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip_vs_conn_hash(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
