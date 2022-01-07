; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_pick_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_pick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_pick_tx(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = call i32 @sk_tx_queue_get(%struct.sock* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi %struct.net_device* [ %15, %17 ], [ %19, %18 ]
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %29, %24, %20
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @get_xps_queue(%struct.net_device* %36, %struct.net_device* %37, %struct.sk_buff* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @skb_tx_hash(%struct.net_device* %43, %struct.net_device* %44, %struct.sk_buff* %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = call i64 @sk_fullsock(%struct.sock* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @rcu_access_pointer(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @sk_tx_queue_set(%struct.sock* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58, %54, %51, %47
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %29
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @sk_tx_queue_get(%struct.sock*) #1

declare dso_local i32 @get_xps_queue(%struct.net_device*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tx_hash(%struct.net_device*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @sk_tx_queue_set(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
