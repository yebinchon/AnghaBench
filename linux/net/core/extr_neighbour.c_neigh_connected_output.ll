; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_connected_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_connected_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_connected_output(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %9 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_network_offset(%struct.sk_buff* %13)
  %15 = call i32 @__skb_pull(%struct.sk_buff* %12, i32 %14)
  %16 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 1
  %18 = call i32 @read_seqbegin(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_hard_header(%struct.sk_buff* %19, %struct.net_device* %20, i32 %24, i32 %27, i32* null, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %11
  %33 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %34 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %33, i32 0, i32 1
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @read_seqretry(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %11, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @dev_queue_xmit(%struct.sk_buff* %42)
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
