; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_bind_app.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_bind_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_protocol = type { i32 (%struct.ip_vs_conn.0*)* }
%struct.ip_vs_conn.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_bind_app(%struct.ip_vs_conn* %0, %struct.ip_vs_protocol* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %4, align 8
  %5 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %4, align 8
  %6 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %5, i32 0, i32 0
  %7 = load i32 (%struct.ip_vs_conn.0*)*, i32 (%struct.ip_vs_conn.0*)** %6, align 8
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %9 = bitcast %struct.ip_vs_conn* %8 to %struct.ip_vs_conn.0*
  %10 = call i32 %7(%struct.ip_vs_conn.0* %9)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
