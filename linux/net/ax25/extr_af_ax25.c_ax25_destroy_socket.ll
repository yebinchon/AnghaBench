; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.sock*, %struct.TYPE_16__, i32 }
%struct.sock = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.sk_buff = type { %struct.sock* }

@TCP_LISTEN = common dso_local global i32 0, align 4
@AX25_STATE_0 = common dso_local global i32 0, align 4
@ax25_destroy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_destroy_socket(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = call i32 @ax25_cb_del(%struct.TYPE_15__* %6)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = call i32 @ax25_stop_heartbeat(%struct.TYPE_15__* %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = call i32 @ax25_stop_t1timer(%struct.TYPE_15__* %10)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = call i32 @ax25_stop_t2timer(%struct.TYPE_15__* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call i32 @ax25_stop_t3timer(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 @ax25_stop_idletimer(%struct.TYPE_15__* %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = call i32 @ax25_clear_queues(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %59, %24
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  %30 = call %struct.sk_buff* @skb_dequeue(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load %struct.sock*, %struct.sock** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.sock*, %struct.sock** %37, align 8
  %39 = icmp ne %struct.sock* %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load %struct.sock*, %struct.sock** %42, align 8
  %44 = call %struct.TYPE_15__* @sk_to_ax25(%struct.sock* %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load %struct.sock*, %struct.sock** %46, align 8
  %48 = call i32 @sock_orphan(%struct.sock* %47)
  %49 = load i32, i32* @TCP_LISTEN, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load %struct.sock*, %struct.sock** %51, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @ax25_start_heartbeat(%struct.TYPE_15__* %54)
  %56 = load i32, i32* @AX25_STATE_0, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %40, %32
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %25

62:                                               ; preds = %25
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.sock*, %struct.sock** %64, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = call i32 @skb_queue_purge(i32* %66)
  br label %68

68:                                               ; preds = %62, %1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.sock*, %struct.sock** %70, align 8
  %72 = icmp ne %struct.sock* %71, null
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.sock*, %struct.sock** %75, align 8
  %77 = call i64 @sk_has_allocations(%struct.sock* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* @ax25_destroy_timer, align 4
  %83 = call i32 @timer_setup(%struct.TYPE_16__* %81, i32 %82, i32 0)
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = call i32 @add_timer(%struct.TYPE_16__* %93)
  br label %103

95:                                               ; preds = %73
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.sock*, %struct.sock** %97, align 8
  store %struct.sock* %98, %struct.sock** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %100, align 8
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = call i32 @sock_put(%struct.sock* %101)
  br label %103

103:                                              ; preds = %95, %79
  br label %107

104:                                              ; preds = %68
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = call i32 @ax25_cb_put(%struct.TYPE_15__* %105)
  br label %107

107:                                              ; preds = %104, %103
  ret void
}

declare dso_local i32 @ax25_cb_del(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_heartbeat(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t3timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_idletimer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_clear_queues(%struct.TYPE_15__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_15__* @sk_to_ax25(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @ax25_start_heartbeat(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_16__*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @ax25_cb_put(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
