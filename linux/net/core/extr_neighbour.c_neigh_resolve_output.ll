; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_resolve_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_resolve_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_resolve_output(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @neigh_event_send(%struct.neighbour* %9, %struct.sk_buff* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %68, label %13

13:                                               ; preds = %2
  %14 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %15 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %31 = call i32 @neigh_hh_init(%struct.neighbour* %30)
  br label %32

32:                                               ; preds = %29, %23, %13
  br label %33

33:                                               ; preds = %54, %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @skb_network_offset(%struct.sk_buff* %35)
  %37 = call i32 @__skb_pull(%struct.sk_buff* %34, i32 %36)
  %38 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 1
  %40 = call i32 @read_seqbegin(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_hard_header(%struct.sk_buff* %41, %struct.net_device* %42, i32 %46, i32 %49, i32* null, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %33
  %55 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 1
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @read_seqretry(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %33, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @dev_queue_xmit(%struct.sk_buff* %64)
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %2
  br label %69

69:                                               ; preds = %71, %68
  %70 = load i32, i32* %5, align 4
  ret i32 %70

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %69
}

declare dso_local i32 @neigh_event_send(%struct.neighbour*, %struct.sk_buff*) #1

declare dso_local i32 @neigh_hh_init(%struct.neighbour*) #1

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
