; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_try_recv_datagram.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_try_recv_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__skb_try_recv_datagram(%struct.sock* %0, i32 %1, void (%struct.sock*, %struct.sk_buff*)* %2, i32* %3, i32* %4, %struct.sk_buff** %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.sock*, %struct.sk_buff*)*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca %struct.sk_buff_head*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.sock*, %struct.sk_buff*)* %2, void (%struct.sock*, %struct.sk_buff*)** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %13, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  store %struct.sk_buff_head* %19, %struct.sk_buff_head** %14, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call i32 @sock_error(%struct.sock* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %73

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %61, %25
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %28 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %27, i32 0, i32 0
  %29 = load i64, i64* %16, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %37 = call %struct.sk_buff* @__skb_try_recv_from_queue(%struct.sock* %31, %struct.sk_buff_head* %32, i32 %33, void (%struct.sock*, %struct.sk_buff*)* %34, i32* %35, i32* %17, %struct.sk_buff** %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %15, align 8
  %38 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %39 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %38, i32 0, i32 0
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %73

45:                                               ; preds = %26
  %46 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %7, align 8
  br label %76

50:                                               ; preds = %45
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = call i32 @sk_can_busy_loop(%struct.sock* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %70

55:                                               ; preds = %50
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MSG_DONTWAIT, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @sk_busy_loop(%struct.sock* %56, i32 %59)
  br label %61

61:                                               ; preds = %55
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.sk_buff* @READ_ONCE(i32 %65)
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = icmp ne %struct.sk_buff* %66, %68
  br i1 %69, label %26, label %70

70:                                               ; preds = %61, %54
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %70, %44, %24
  %74 = load i32, i32* %17, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %76

76:                                               ; preds = %73, %48
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %77
}

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_try_recv_from_queue(%struct.sock*, %struct.sk_buff_head*, i32, void (%struct.sock*, %struct.sk_buff*)*, i32*, i32*, %struct.sk_buff**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sk_can_busy_loop(%struct.sock*) #1

declare dso_local i32 @sk_busy_loop(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
