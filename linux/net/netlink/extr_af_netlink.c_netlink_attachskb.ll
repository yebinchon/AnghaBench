; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_attachskb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_attachskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }
%struct.netlink_sock = type { i32, i32 }

@NETLINK_S_CONGESTED = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlink_attachskb(%struct.sock* %0, %struct.sk_buff* %1, i64* %2, %struct.sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.sock* %3, %struct.sock** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %11)
  store %struct.netlink_sock* %12, %struct.netlink_sock** %10, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @NETLINK_S_CONGESTED, align 4
  %22 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %23 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @wait, align 4
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @DECLARE_WAITQUEUE(i32 %27, i32 %28)
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = icmp ne %struct.sock* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = call i64 @netlink_is_kernel(%struct.sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = call i32 @netlink_overrun(%struct.sock* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = call i32 @sock_put(%struct.sock* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %101

50:                                               ; preds = %26
  %51 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %52 = call i32 @__set_current_state(i32 %51)
  %53 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %54 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %53, i32 0, i32 0
  %55 = call i32 @add_wait_queue(i32* %54, i32* @wait)
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = call i64 @atomic_read(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @NETLINK_S_CONGESTED, align 4
  %65 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %66 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %65, i32 0, i32 1
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63, %50
  %70 = load %struct.sock*, %struct.sock** %6, align 8
  %71 = load i32, i32* @SOCK_DEAD, align 4
  %72 = call i32 @sock_flag(%struct.sock* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @schedule_timeout(i64 %76)
  %78 = load i64*, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %69, %63
  %80 = load i32, i32* @TASK_RUNNING, align 4
  %81 = call i32 @__set_current_state(i32 %80)
  %82 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %83 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %82, i32 0, i32 0
  %84 = call i32 @remove_wait_queue(i32* %83, i32* @wait)
  %85 = load %struct.sock*, %struct.sock** %6, align 8
  %86 = call i32 @sock_put(%struct.sock* %85)
  %87 = load i32, i32* @current, align 4
  %88 = call i64 @signal_pending(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @sock_intr_errno(i64 %94)
  store i32 %95, i32* %5, align 4
  br label %101

96:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %101

97:                                               ; preds = %20
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = call i32 @netlink_skb_set_owner_r(%struct.sk_buff* %98, %struct.sock* %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %96, %90, %43
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @netlink_overrun(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @netlink_skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
