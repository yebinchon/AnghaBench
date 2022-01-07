; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_expire_now.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_expire_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_conn_expire_now(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %3 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %4 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %3, i32 0, i32 0
  %5 = call i64 @timer_pending(%struct.TYPE_3__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %9 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @jiffies, align 4
  %13 = call i64 @time_after(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 0
  %18 = load i32, i32* @jiffies, align 4
  %19 = call i32 @mod_timer_pending(%struct.TYPE_3__* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %7, %1
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @mod_timer_pending(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
