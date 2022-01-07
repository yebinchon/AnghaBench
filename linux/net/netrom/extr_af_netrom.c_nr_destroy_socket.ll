; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_3__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@NR_STATE_0 = common dso_local global i32 0, align 4
@nr_destroy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @nr_remove_socket(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @nr_stop_heartbeat(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @nr_stop_t1timer(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @nr_stop_t2timer(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @nr_stop_t4timer(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @nr_stop_idletimer(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @nr_clear_queues(%struct.sock* %16)
  br label %18

18:                                               ; preds = %45, %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = call %struct.sk_buff* @skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = icmp ne %struct.sock* %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.sock*, %struct.sock** %31, align 8
  %33 = load i32, i32* @SOCK_DEAD, align 4
  %34 = call i32 @sock_set_flag(%struct.sock* %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load %struct.sock*, %struct.sock** %36, align 8
  %38 = call i32 @nr_start_heartbeat(%struct.sock* %37)
  %39 = load i32, i32* @NR_STATE_0, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load %struct.sock*, %struct.sock** %41, align 8
  %43 = call %struct.TYPE_3__* @nr_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %23
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = call i64 @sk_has_allocations(%struct.sock* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32, i32* @nr_destroy_timer, align 4
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = call i32 @add_timer(%struct.TYPE_4__* %66)
  br label %71

68:                                               ; preds = %48
  %69 = load %struct.sock*, %struct.sock** %2, align 8
  %70 = call i32 @sock_put(%struct.sock* %69)
  br label %71

71:                                               ; preds = %68, %52
  ret void
}

declare dso_local i32 @nr_remove_socket(%struct.sock*) #1

declare dso_local i32 @nr_stop_heartbeat(%struct.sock*) #1

declare dso_local i32 @nr_stop_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t2timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t4timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @nr_clear_queues(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @nr_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
