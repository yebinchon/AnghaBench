; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_proto = type { %struct.garp_application* }
%struct.garp_application = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.garp_port = type { i32* }
%struct.garp_applicant = type { i32 }
%struct.garp_pdu_hdr = type { i32 }

@GARP_PROTOCOL_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stp_proto*, %struct.sk_buff*, %struct.net_device*)* @garp_pdu_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_pdu_rcv(%struct.stp_proto* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.stp_proto*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.garp_application*, align 8
  %8 = alloca %struct.garp_port*, align 8
  %9 = alloca %struct.garp_applicant*, align 8
  %10 = alloca %struct.garp_pdu_hdr*, align 8
  store %struct.stp_proto* %0, %struct.stp_proto** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %11 = load %struct.stp_proto*, %struct.stp_proto** %4, align 8
  %12 = getelementptr inbounds %struct.stp_proto, %struct.stp_proto* %11, i32 0, i32 0
  %13 = load %struct.garp_application*, %struct.garp_application** %12, align 8
  store %struct.garp_application* %13, %struct.garp_application** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @rcu_dereference(i32 %16)
  %18 = bitcast i8* %17 to %struct.garp_port*
  store %struct.garp_port* %18, %struct.garp_port** %8, align 8
  %19 = load %struct.garp_port*, %struct.garp_port** %8, align 8
  %20 = icmp ne %struct.garp_port* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %80

22:                                               ; preds = %3
  %23 = load %struct.garp_port*, %struct.garp_port** %8, align 8
  %24 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.garp_application*, %struct.garp_application** %7, align 8
  %27 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @rcu_dereference(i32 %30)
  %32 = bitcast i8* %31 to %struct.garp_applicant*
  store %struct.garp_applicant* %32, %struct.garp_applicant** %9, align 8
  %33 = load %struct.garp_applicant*, %struct.garp_applicant** %9, align 8
  %34 = icmp ne %struct.garp_applicant* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %80

36:                                               ; preds = %22
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @pskb_may_pull(%struct.sk_buff* %37, i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %80

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.garp_pdu_hdr*
  store %struct.garp_pdu_hdr* %45, %struct.garp_pdu_hdr** %10, align 8
  %46 = load %struct.garp_pdu_hdr*, %struct.garp_pdu_hdr** %10, align 8
  %47 = getelementptr inbounds %struct.garp_pdu_hdr, %struct.garp_pdu_hdr* %46, i32 0, i32 0
  %48 = call i64 @get_unaligned(i32* %47)
  %49 = load i32, i32* @GARP_PROTOCOL_ID, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %80

53:                                               ; preds = %41
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @skb_pull(%struct.sk_buff* %54, i32 4)
  %56 = load %struct.garp_applicant*, %struct.garp_applicant** %9, align 8
  %57 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  br label %59

59:                                               ; preds = %75, %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.garp_applicant*, %struct.garp_applicant** %9, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i64 @garp_pdu_parse_msg(%struct.garp_applicant* %65, %struct.sk_buff* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %76

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i64 @garp_pdu_parse_end_mark(%struct.sk_buff* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  br label %59

76:                                               ; preds = %74, %69, %59
  %77 = load %struct.garp_applicant*, %struct.garp_applicant** %9, align 8
  %78 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %52, %40, %35, %21
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  ret void
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @get_unaligned(i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @garp_pdu_parse_msg(%struct.garp_applicant*, %struct.sk_buff*) #1

declare dso_local i64 @garp_pdu_parse_end_mark(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
