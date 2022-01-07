; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_established.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_rcv_established(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sock*, %struct.sock** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call i64 @dccp_check_seqno(%struct.sock* %10, %struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %33

15:                                               ; preds = %4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call i64 @dccp_parse_options(%struct.sock* %16, i32* null, %struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @dccp_handle_ackvec_processing(%struct.sock* %22, %struct.sk_buff* %23)
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @dccp_deliver_input_to_ccids(%struct.sock* %25, %struct.sk_buff* %26)
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @__dccp_rcv_established(%struct.sock* %28, %struct.sk_buff* %29, %struct.dccp_hdr* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %14
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @__kfree_skb(%struct.sk_buff* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %21, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @dccp_check_seqno(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_handle_ackvec_processing(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_deliver_input_to_ccids(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
