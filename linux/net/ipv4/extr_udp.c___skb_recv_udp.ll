; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___skb_recv_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___skb_recv_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@udp_skb_destructor = common dso_local global i32 0, align 4
@udp_skb_dtor_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__skb_recv_udp(%struct.sock* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sk_buff_head*, align 8
  %13 = alloca %struct.sk_buff_head*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  store %struct.sk_buff_head* %19, %struct.sk_buff_head** %12, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.sk_buff_head* %22, %struct.sk_buff_head** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MSG_DONTWAIT, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @sock_rcvtimeo(%struct.sock* %32, i32 %35)
  store i64 %36, i64* %15, align 8
  br label %37

37:                                               ; preds = %124, %28
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = call i32 @sock_error(%struct.sock* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %126

43:                                               ; preds = %37
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %108, %43
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @udp_skb_destructor, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call %struct.sk_buff* @__skb_try_recv_from_queue(%struct.sock* %50, %struct.sk_buff_head* %51, i32 %52, i32 %53, i32* %54, i32* %55, %struct.sk_buff** %14)
  store %struct.sk_buff* %56, %struct.sk_buff** %17, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %61 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  br label %129

64:                                               ; preds = %46
  %65 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %66 = call i64 @skb_queue_empty_lockless(%struct.sk_buff_head* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %70 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  br label %97

72:                                               ; preds = %64
  %73 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %74 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %73, i32 0, i32 0
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %77 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %78 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %76, %struct.sk_buff_head* %77)
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @udp_skb_dtor_locked, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call %struct.sk_buff* @__skb_try_recv_from_queue(%struct.sock* %79, %struct.sk_buff_head* %80, i32 %81, i32 %82, i32* %83, i32* %84, %struct.sk_buff** %14)
  store %struct.sk_buff* %85, %struct.sk_buff** %17, align 8
  %86 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %87 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %90 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %72
  %95 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %95, %struct.sk_buff** %6, align 8
  br label %129

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %96, %68
  %98 = load %struct.sock*, %struct.sock** %7, align 8
  %99 = call i32 @sk_can_busy_loop(%struct.sock* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %113

102:                                              ; preds = %97
  %103 = load %struct.sock*, %struct.sock** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MSG_DONTWAIT, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @sk_busy_loop(%struct.sock* %103, i32 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %110 = call i64 @skb_queue_empty_lockless(%struct.sk_buff_head* %109)
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %46, label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.sock*, %struct.sock** %7, align 8
  %119 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %120 = bitcast %struct.sk_buff_head* %119 to %struct.sk_buff*
  %121 = call i32 @__skb_wait_for_more_packets(%struct.sock* %118, i32* %16, i64* %15, %struct.sk_buff* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i1 [ false, %114 ], [ %123, %117 ]
  br i1 %125, label %37, label %126

126:                                              ; preds = %124, %42
  %127 = load i32, i32* %16, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 %127, i32* %128, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %129

129:                                              ; preds = %126, %94, %59
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %130
}

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_try_recv_from_queue(%struct.sock*, %struct.sk_buff_head*, i32, i32, i32*, i32*, %struct.sk_buff**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @skb_queue_empty_lockless(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sk_can_busy_loop(%struct.sock*) #1

declare dso_local i32 @sk_busy_loop(%struct.sock*, i32) #1

declare dso_local i32 @__skb_wait_for_more_packets(%struct.sock*, i32*, i64*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
