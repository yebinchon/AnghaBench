; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c___ip_vs_conn_put_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c___ip_vs_conn_put_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i64, i32 }

@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*)* @__ip_vs_conn_put_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_conn_put_timer(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca i64, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i64 [ 0, %10 ], [ %14, %11 ]
  store i64 %16, i64* %3, align 8
  %17 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %18 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %17, i32 0, i32 2
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @mod_timer(i32* %18, i64 %21)
  %23 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %24 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %23)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
