; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_output.c_llc_build_and_send_ui_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_output.c_llc_build_and_send_ui_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_build_and_send_ui_pkt(%struct.llc_sap* %0, %struct.sk_buff* %1, i8* %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.llc_sap*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.llc_sap* %0, %struct.llc_sap** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %12 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %13 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8, i8* %8, align 1
  %17 = load i32, i32* @LLC_PDU_CMD, align 4
  %18 = call i32 @llc_pdu_header_init(%struct.sk_buff* %10, i32 %11, i32 %15, i8 zeroext %16, i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @llc_pdu_init_as_ui_cmd(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %21, i32 %26, i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @dev_queue_xmit(%struct.sk_buff* %36)
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i8 zeroext, i32) #1

declare dso_local i32 @llc_pdu_init_as_ui_cmd(%struct.sk_buff*) #1

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
