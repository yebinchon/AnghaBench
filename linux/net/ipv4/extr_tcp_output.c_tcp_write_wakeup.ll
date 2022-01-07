; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCP_CLOSE = common dso_local global i64 0, align 8
@TCPHDR_PSH = common dso_local global i32 0, align 4
@TCP_FRAG_IN_WRITE_QUEUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_write_wakeup(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_CLOSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %147

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %125

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %30 = call i32 @tcp_wnd_end(%struct.tcp_sock* %29)
  %31 = call i64 @before(i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %125

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @tcp_current_mss(%struct.sock* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %37 = call i32 @tcp_wnd_end(%struct.tcp_sock* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %37, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @before(i32 %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %52, %33
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %64, %68
  %70 = icmp ult i32 %60, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %59
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71, %59
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @min(i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @TCPHDR_PSH, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = load i32, i32* @TCP_FRAG_IN_WRITE_QUEUE, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @GFP_ATOMIC, align 4
  %93 = call i64 @tcp_fragment(%struct.sock* %87, i32 %88, %struct.sk_buff* %89, i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %147

96:                                               ; preds = %77
  br label %106

97:                                               ; preds = %71
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call i32 @tcp_skb_pcount(%struct.sk_buff* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @tcp_set_skb_tso_segs(%struct.sk_buff* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %96
  %107 = load i32, i32* @TCPHDR_PSH, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load i32, i32* @GFP_ATOMIC, align 4
  %116 = call i32 @tcp_transmit_skb(%struct.sock* %113, %struct.sk_buff* %114, i32 1, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %106
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @tcp_event_new_data_sent(%struct.sock* %120, %struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %119, %106
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %147

125:                                              ; preds = %24, %19
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %134 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 65535
  %137 = call i64 @between(i32 %128, i64 %132, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load %struct.sock*, %struct.sock** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @tcp_xmit_probe_skb(%struct.sock* %140, i32 1, i32 %141)
  br label %143

143:                                              ; preds = %139, %125
  %144 = load %struct.sock*, %struct.sock** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @tcp_xmit_probe_skb(%struct.sock* %144, i32 0, i32 %145)
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %123, %95, %18
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @tcp_fragment(%struct.sock*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_set_skb_tso_segs(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_transmit_skb(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_event_new_data_sent(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @between(i32, i64, i64) #1

declare dso_local i32 @tcp_xmit_probe_skb(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
