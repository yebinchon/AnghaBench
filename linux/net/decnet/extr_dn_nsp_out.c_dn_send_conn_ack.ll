; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_send_conn_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_send_conn_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nsp_conn_ack_msg = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_send_conn_ack(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nsp_conn_ack_msg*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.dn_scp* @DN_SK(%struct.sock* %6)
  store %struct.dn_scp* %7, %struct.dn_scp** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %8, i32 3, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.nsp_conn_ack_msg* @skb_put(%struct.sk_buff* %16, i32 3)
  store %struct.nsp_conn_ack_msg* %17, %struct.nsp_conn_ack_msg** %5, align 8
  %18 = load %struct.nsp_conn_ack_msg*, %struct.nsp_conn_ack_msg** %5, align 8
  %19 = getelementptr inbounds %struct.nsp_conn_ack_msg, %struct.nsp_conn_ack_msg* %18, i32 0, i32 0
  store i32 36, i32* %19, align 4
  %20 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nsp_conn_ack_msg*, %struct.nsp_conn_ack_msg** %5, align 8
  %24 = getelementptr inbounds %struct.nsp_conn_ack_msg, %struct.nsp_conn_ack_msg* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @dn_nsp_send(%struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i32, i32) #1

declare dso_local %struct.nsp_conn_ack_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_nsp_send(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
