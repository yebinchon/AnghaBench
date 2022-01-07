; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_state_transition.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_state_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"UDP no ns data\0A\00", align 1
@IP_VS_UDP_S_NORMAL = common dso_local global i64 0, align 8
@IP_VS_DIR_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*)* @udp_state_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_state_transition(%struct.ip_vs_conn* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_proto_data* %3) #0 {
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_proto_data* %3, %struct.ip_vs_proto_data** %8, align 8
  %9 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %10 = icmp ne %struct.ip_vs_proto_data* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %32

17:                                               ; preds = %4
  %18 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %8, align 8
  %19 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @IP_VS_UDP_S_NORMAL, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IP_VS_DIR_OUTPUT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %31 = call i32 @ip_vs_control_assure_ct(%struct.ip_vs_conn* %30)
  br label %32

32:                                               ; preds = %15, %29, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ip_vs_control_assure_ct(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
