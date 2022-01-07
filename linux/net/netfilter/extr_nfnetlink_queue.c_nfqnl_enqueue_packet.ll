; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_enqueue_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_enqueue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { %struct.TYPE_2__, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i8* }
%struct.nfqnl_instance = type { i64, i32 }
%struct.nfnl_queue_net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@NFQNL_COPY_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NFQA_CFG_F_GSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_queue_entry*, i32)* @nfqnl_enqueue_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_enqueue_packet(%struct.nf_queue_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfqnl_instance*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nfnl_queue_net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %17 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.net*, %struct.net** %18, align 8
  store %struct.net* %19, %struct.net** %11, align 8
  %20 = load %struct.net*, %struct.net** %11, align 8
  %21 = call %struct.nfnl_queue_net* @nfnl_queue_pernet(%struct.net* %20)
  store %struct.nfnl_queue_net* %21, %struct.nfnl_queue_net** %12, align 8
  %22 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %12, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.nfqnl_instance* @instance_lookup(%struct.nfnl_queue_net* %22, i32 %23)
  store %struct.nfqnl_instance* %24, %struct.nfqnl_instance** %7, align 8
  %25 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %26 = icmp ne %struct.nfqnl_instance* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ESRCH, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %126

30:                                               ; preds = %2
  %31 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %32 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NFQNL_COPY_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %126

39:                                               ; preds = %30
  %40 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %41 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %8, align 8
  %43 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %44 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %57 [
    i32 129, label %47
    i32 128, label %52
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* @ETH_P_IP, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %57

52:                                               ; preds = %39
  %53 = load i32, i32* @ETH_P_IPV6, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %39, %52, %47
  %58 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %59 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NFQA_CFG_F_GSO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @skb_is_gso(%struct.sk_buff* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.net*, %struct.net** %11, align 8
  %70 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %71 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %72 = call i32 @__nfqnl_enqueue_packet(%struct.net* %69, %struct.nfqnl_instance* %70, %struct.nf_queue_entry* %71)
  store i32 %72, i32* %3, align 4
  br label %126

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = call i32 @nf_bridge_adjust_skb_data(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %76, i32 0)
  store %struct.sk_buff* %77, %struct.sk_buff** %9, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %122

82:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %106, %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load %struct.sk_buff*, %struct.sk_buff** %85, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %13, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.net*, %struct.net** %11, align 8
  %91 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %7, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %94 = call i32 @__nfqnl_enqueue_packet_gso(%struct.net* %90, %struct.nfqnl_instance* %91, %struct.sk_buff* %92, %struct.nf_queue_entry* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %104

101:                                              ; preds = %95
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %105, %struct.sk_buff** %9, align 8
  br label %106

106:                                              ; preds = %104
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = icmp ne %struct.sk_buff* %107, null
  br i1 %108, label %83, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %117 = call i32 @free_entry(%struct.nf_queue_entry* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = call i32 @kfree_skb(%struct.sk_buff* %119)
  store i32 0, i32* %3, align 4
  br label %126

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %81
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i32 @nf_bridge_adjust_segmented_data(%struct.sk_buff* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %118, %68, %36, %27
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.nfnl_queue_net* @nfnl_queue_pernet(%struct.net*) #1

declare dso_local %struct.nfqnl_instance* @instance_lookup(%struct.nfnl_queue_net*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @__nfqnl_enqueue_packet(%struct.net*, %struct.nfqnl_instance*, %struct.nf_queue_entry*) #1

declare dso_local i32 @nf_bridge_adjust_skb_data(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @__nfqnl_enqueue_packet_gso(%struct.net*, %struct.nfqnl_instance*, %struct.sk_buff*, %struct.nf_queue_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @free_entry(%struct.nf_queue_entry*) #1

declare dso_local i32 @nf_bridge_adjust_segmented_data(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
