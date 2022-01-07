; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_first_packet_length.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_first_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @first_packet_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_packet_length(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff_head*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.sk_buff_head* %10, %struct.sk_buff_head** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %18 = call %struct.sk_buff* @__first_packet_length(%struct.sock* %16, %struct.sk_buff_head* %17, i32* %6)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %1
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %23 = call i32 @skb_queue_empty_lockless(%struct.sk_buff_head* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %30 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %31 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %29, %struct.sk_buff_head* %30)
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %37 = call %struct.sk_buff* @__first_packet_length(%struct.sock* %35, %struct.sk_buff_head* %36, i32* %6)
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  br label %38

38:                                               ; preds = %25, %21, %1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ -1, %45 ]
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @udp_rmem_release(%struct.sock* %51, i32 %52, i32 1, i32 0)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %56 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__first_packet_length(%struct.sock*, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @udp_rmem_release(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
