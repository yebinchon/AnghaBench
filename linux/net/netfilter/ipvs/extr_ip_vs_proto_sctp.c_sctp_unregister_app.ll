; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_unregister_app.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_unregister_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_app = type { i32 }
%struct.ip_vs_proto_data = type { i32 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_app*)* @sctp_unregister_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_unregister_app(%struct.netns_ipvs* %0, %struct.ip_vs_app* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ip_vs_app*, align 8
  %5 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ip_vs_app* %1, %struct.ip_vs_app** %4, align 8
  %6 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %7 = load i32, i32* @IPPROTO_SCTP, align 4
  %8 = call %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs* %6, i32 %7)
  store %struct.ip_vs_proto_data* %8, %struct.ip_vs_proto_data** %5, align 8
  %9 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %10 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %9, i32 0, i32 0
  %11 = call i32 @atomic_dec(i32* %10)
  %12 = load %struct.ip_vs_app*, %struct.ip_vs_app** %4, align 8
  %13 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %12, i32 0, i32 0
  %14 = call i32 @list_del_rcu(i32* %13)
  ret void
}

declare dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
