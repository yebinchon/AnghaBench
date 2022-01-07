; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }

@DCCP_OPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %7)
  store %struct.dccp_hdr* %8, %struct.dccp_hdr** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DCCP_OPEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dccp_rcv_established(%struct.sock* %15, %struct.sk_buff* %16, %struct.dccp_hdr* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %36

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @dccp_rcv_state_process(%struct.sock* %26, %struct.sk_buff* %27, %struct.dccp_hdr* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

36:                                               ; preds = %34, %23
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @dccp_v4_ctl_send_reset(%struct.sock* %37, %struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %35, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i64 @dccp_rcv_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @dccp_v4_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
