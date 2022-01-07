; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_verdict_apply.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_verdict_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_psock = type { i32, i32, %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_skb_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@SK_PSOCK_TX_ENABLED = common dso_local global i32 0, align 4
@BPF_F_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_psock*, %struct.sk_buff*, i32)* @sk_psock_verdict_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_psock_verdict_apply(%struct.sk_psock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_psock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_psock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_skb_cb*, align 8
  store %struct.sk_psock* %0, %struct.sk_psock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %114 [
    i32 129, label %12
    i32 128, label %51
    i32 130, label %113
  ]

12:                                               ; preds = %3
  %13 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %14 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %13, i32 0, i32 2
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = load i32, i32* @SOCK_DEAD, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %22 = load i32, i32* @SK_PSOCK_TX_ENABLED, align 4
  %23 = call i32 @sk_psock_test_state(%struct.sk_psock* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %12
  br label %115

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = call i32 @atomic_read(i32* %28)
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %35)
  store %struct.tcp_skb_cb* %36, %struct.tcp_skb_cb** %10, align 8
  %37 = load i32, i32* @BPF_F_INGRESS, align 4
  %38 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %10, align 8
  %39 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %44 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @skb_queue_tail(i32* %44, %struct.sk_buff* %45)
  %47 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %48 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %47, i32 0, i32 0
  %49 = call i32 @schedule_work(i32* %48)
  br label %118

50:                                               ; preds = %26
  br label %115

51:                                               ; preds = %3
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.sock* @tcp_skb_bpf_redirect_fetch(%struct.sk_buff* %52)
  store %struct.sock* %53, %struct.sock** %8, align 8
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = icmp ne %struct.sock* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @unlikely(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %115

61:                                               ; preds = %51
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = call %struct.sk_psock* @sk_psock(%struct.sock* %62)
  store %struct.sk_psock* %63, %struct.sk_psock** %7, align 8
  %64 = load %struct.sk_psock*, %struct.sk_psock** %7, align 8
  %65 = icmp ne %struct.sk_psock* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.sock*, %struct.sock** %8, align 8
  %68 = load i32, i32* @SOCK_DEAD, align 4
  %69 = call i32 @sock_flag(%struct.sock* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.sk_psock*, %struct.sk_psock** %7, align 8
  %73 = load i32, i32* @SK_PSOCK_TX_ENABLED, align 4
  %74 = call i32 @sk_psock_test_state(%struct.sk_psock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %66, %61
  br label %115

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @tcp_skb_bpf_ingress(%struct.sk_buff* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  %84 = call i32 @sock_writeable(%struct.sock* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load %struct.sock*, %struct.sock** %8, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 1
  %92 = call i32 @atomic_read(i32* %91)
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %89, %82
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.sock*, %struct.sock** %8, align 8
  %103 = call i32 @skb_set_owner_w(%struct.sk_buff* %101, %struct.sock* %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.sk_psock*, %struct.sk_psock** %7, align 8
  %106 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %105, i32 0, i32 1
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @skb_queue_tail(i32* %106, %struct.sk_buff* %107)
  %109 = load %struct.sk_psock*, %struct.sk_psock** %7, align 8
  %110 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %109, i32 0, i32 0
  %111 = call i32 @schedule_work(i32* %110)
  br label %118

112:                                              ; preds = %89, %86
  br label %113

113:                                              ; preds = %3, %112
  br label %114

114:                                              ; preds = %3, %113
  br label %115

115:                                              ; preds = %114, %76, %60, %50, %25
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @kfree_skb(%struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %115, %104, %34
  ret void
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_psock_test_state(%struct.sk_psock*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.sock* @tcp_skb_bpf_redirect_fetch(%struct.sk_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i32 @tcp_skb_bpf_ingress(%struct.sk_buff*) #1

declare dso_local i32 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
