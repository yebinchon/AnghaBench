; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_init_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_init_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_app = type { i32 }
%struct.ip_vs_conn = type { i32 }

@IP_VS_CONN_F_NFCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*)* @ip_vs_ftp_init_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_ftp_init_conn(%struct.ip_vs_app* %0, %struct.ip_vs_conn* %1) #0 {
  %3 = alloca %struct.ip_vs_app*, align 8
  %4 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_app* %0, %struct.ip_vs_app** %3, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %4, align 8
  %5 = load i32, i32* @IP_VS_CONN_F_NFCT, align 4
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
