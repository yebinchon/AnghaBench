; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)* @ip_vs_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_set_state(%struct.ip_vs_conn* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_proto_data* %3) #0 {
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_proto_data* %3, %struct.ip_vs_proto_data** %8, align 8
  %9 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %10 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)*, i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)** %12, align 8
  %14 = call i64 @likely(i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %18 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)*, i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)** %20, align 8
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %26 = call i32 %21(%struct.ip_vs_conn* %22, i32 %23, %struct.sk_buff* %24, %struct.ip_vs_proto_data* %25)
  br label %27

27:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @likely(i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
