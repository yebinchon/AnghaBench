; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_fin.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.tcp_sock = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@TCPHDR_FIN = common dso_local global i32 0, align 4
@MAX_TCP_HEADER = common dso_local global i32 0, align 4
@TCPHDR_ACK = common dso_local global i32 0, align 4
@TCP_NAGLE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_send_fin(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i64 @tcp_under_memory_pressure(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = call %struct.sk_buff* @skb_rb_last(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %20

20:                                               ; preds = %16, %12, %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load i32, i32* @TCPHDR_FIN, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i64 @tcp_write_queue_empty(%struct.sock* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %23
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @WRITE_ONCE(i64 %45, i64 %49)
  br label %94

51:                                               ; preds = %23
  br label %88

52:                                               ; preds = %20
  %53 = load i32, i32* @MAX_TCP_HEADER, align 4
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.sk_buff* @alloc_skb_fclone(i32 %53, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %94

65:                                               ; preds = %52
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load i32, i32* @MAX_TCP_HEADER, align 4
  %71 = call i32 @skb_reserve(%struct.sk_buff* %69, i32 %70)
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sk_forced_mem_schedule(%struct.sock* %72, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TCPHDR_ACK, align 4
  %82 = load i32, i32* @TCPHDR_FIN, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @tcp_init_nondata_skb(%struct.sk_buff* %77, i32 %80, i32 %83)
  %85 = load %struct.sock*, %struct.sock** %2, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = call i32 @tcp_queue_skb(%struct.sock* %85, %struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %65, %51
  %89 = load %struct.sock*, %struct.sock** %2, align 8
  %90 = load %struct.sock*, %struct.sock** %2, align 8
  %91 = call i32 @tcp_current_mss(%struct.sock* %90)
  %92 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %93 = call i32 @__tcp_push_pending_frames(%struct.sock* %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %64, %42
  ret void
}

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_under_memory_pressure(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_rb_last(i32*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_write_queue_empty(%struct.sock*) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb_fclone(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @sk_forced_mem_schedule(%struct.sock*, i32) #1

declare dso_local i32 @tcp_init_nondata_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_queue_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__tcp_push_pending_frames(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
