; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c___sock_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c___sock_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sock_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 4
  store %struct.sk_buff_head* %9, %struct.sk_buff_head** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 3
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 2
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @trace_sock_rcvqueue_full(%struct.sock* %21, %struct.sk_buff* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sk_rmem_schedule(%struct.sock* %27, %struct.sk_buff* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %73

40:                                               ; preds = %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @skb_set_owner_r(%struct.sk_buff* %43, %struct.sock* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_dst_force(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @sock_skb_set_dropcount(%struct.sock* %52, %struct.sk_buff* %53)
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %55, %struct.sk_buff* %56)
  %58 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load i32, i32* @SOCK_DEAD, align 4
  %64 = call i32 @sock_flag(%struct.sock* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %40
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %68, align 8
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = call i32 %69(%struct.sock* %70)
  br label %72

72:                                               ; preds = %66, %40
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %34, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_sock_rcvqueue_full(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_dst_force(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sock_skb_set_dropcount(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
