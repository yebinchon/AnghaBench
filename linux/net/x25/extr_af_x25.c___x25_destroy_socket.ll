; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c___x25_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c___x25_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_3__ = type { i32 }

@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@X25_STATE_0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@x25_destroy_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__x25_destroy_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__x25_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @x25_stop_heartbeat(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @x25_stop_timer(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @x25_remove_socket(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @x25_clear_queues(%struct.sock* %10)
  br label %12

12:                                               ; preds = %44, %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 2
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = icmp ne %struct.sock* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load i32, i32* @TCP_LISTEN, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  %32 = load i32, i32* @SOCK_DEAD, align 4
  %33 = call i32 @sock_set_flag(%struct.sock* %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  %37 = call i32 @x25_start_heartbeat(%struct.sock* %36)
  %38 = load i32, i32* @X25_STATE_0, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load %struct.sock*, %struct.sock** %40, align 8
  %42 = call %struct.TYPE_3__* @x25_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 4
  br label %44

44:                                               ; preds = %23, %17
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = call i64 @sk_has_allocations(%struct.sock* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 10, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* @x25_destroy_timer, align 4
  %61 = load %struct.sock*, %struct.sock** %2, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.sock*, %struct.sock** %2, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  %66 = call i32 @add_timer(%struct.TYPE_4__* %65)
  br label %70

67:                                               ; preds = %47
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = call i32 @__sock_put(%struct.sock* %68)
  br label %70

70:                                               ; preds = %67, %51
  ret void
}

declare dso_local i32 @x25_stop_heartbeat(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @x25_remove_socket(%struct.sock*) #1

declare dso_local i32 @x25_clear_queues(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @x25_start_heartbeat(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
