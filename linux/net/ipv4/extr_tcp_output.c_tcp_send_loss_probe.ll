; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_loss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_loss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tcp_sock = type { i32, i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"invalid inflight: %u state %u cwnd %u mss %d\0A\00", align 1
@TCP_FRAG_IN_RTX_QUEUE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPLOSSPROBES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_send_loss_probe(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @tcp_current_mss(%struct.sock* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @tcp_snd_wnd_test(%struct.tcp_sock* %16, %struct.sk_buff* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i32 @tcp_write_xmit(%struct.sock* %25, i32 %26, i32 %27, i32 2, i32 %28)
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %142

36:                                               ; preds = %21
  br label %150

37:                                               ; preds = %15, %1
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = call %struct.sk_buff* @skb_rb_last(i32* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %37
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @WARN_ONCE(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %153

65:                                               ; preds = %37
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %150

71:                                               ; preds = %65
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i64 @skb_still_in_host_queue(%struct.sock* %72, %struct.sk_buff* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %150

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @tcp_skb_pcount(%struct.sk_buff* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @WARN_ON(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %150

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %95, %96
  %98 = icmp sgt i32 %93, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %90
  %100 = load %struct.sock*, %struct.sock** %2, align 8
  %101 = load i32, i32* @TCP_FRAG_IN_RTX_QUEUE, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call i32 @tcp_fragment(%struct.sock* %100, i32 %101, %struct.sk_buff* %102, i32 %106, i32 %107, i32 %108)
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %150

113:                                              ; preds = %99
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call %struct.sk_buff* @skb_rb_next(%struct.sk_buff* %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %4, align 8
  br label %116

116:                                              ; preds = %113, %90, %87
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @tcp_skb_pcount(%struct.sk_buff* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi i1 [ true, %116 ], [ %123, %119 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 @WARN_ON(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %150

130:                                              ; preds = %124
  %131 = load %struct.sock*, %struct.sock** %2, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = call i64 @__tcp_retransmit_skb(%struct.sock* %131, %struct.sk_buff* %132, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %150

136:                                              ; preds = %130
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %35
  %143 = load %struct.sock*, %struct.sock** %2, align 8
  %144 = call i32 @sock_net(%struct.sock* %143)
  %145 = load i32, i32* @LINUX_MIB_TCPLOSSPROBES, align 4
  %146 = call i32 @NET_INC_STATS(i32 %144, i32 %145)
  %147 = load %struct.sock*, %struct.sock** %2, align 8
  %148 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %147)
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %142, %135, %129, %112, %86, %76, %70, %36
  %151 = load %struct.sock*, %struct.sock** %2, align 8
  %152 = call i32 @tcp_rearm_rto(%struct.sock* %151)
  br label %153

153:                                              ; preds = %150, %47
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local i64 @tcp_snd_wnd_test(%struct.tcp_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_write_xmit(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_rb_last(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @skb_still_in_host_queue(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tcp_fragment(%struct.sock*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_rb_next(%struct.sk_buff*) #1

declare dso_local i64 @__tcp_retransmit_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_rearm_rto(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
