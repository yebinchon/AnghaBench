; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_send_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_send_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.dccp_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_v4_send_check(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_sock* @inet_sk(%struct.sock* %7)
  store %struct.inet_sock* %8, %struct.inet_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %9)
  store %struct.dccp_hdr* %10, %struct.dccp_hdr** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @dccp_csum_outgoing(%struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %15 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %18 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dccp_v4_csum_finish(%struct.sk_buff* %13, i32 %16, i32 %19)
  %21 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_csum_outgoing(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
