; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 (%struct.sk_buff*)* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_6__*, i32 }

@MAC_PROTO_ETHERNET = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@MAC_PROTO_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: dropped over-mtu packet: %d > %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_vport_send(%struct.vport* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vport*, %struct.vport** %4, align 8
  %9 = getelementptr inbounds %struct.vport, %struct.vport* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.vport*, %struct.vport** %4, align 8
  %14 = getelementptr inbounds %struct.vport, %struct.vport* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %45 [
    i32 128, label %18
    i32 129, label %39
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAC_PROTO_ETHERNET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @skb_reset_network_header(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_reset_mac_len(%struct.sk_buff* %25)
  %27 = load i32, i32* @ETH_P_TEB, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAC_PROTO_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @WARN_ON_ONCE(i32 1)
  br label %97

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAC_PROTO_ETHERNET, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %97

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %3
  br label %97

46:                                               ; preds = %44, %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.vport*, %struct.vport** %4, align 8
  %49 = getelementptr inbounds %struct.vport, %struct.vport* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @packet_length(%struct.sk_buff* %47, %struct.TYPE_6__* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_is_gso(%struct.sk_buff* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i1 [ false, %46 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.vport*, %struct.vport** %4, align 8
  %66 = getelementptr inbounds %struct.vport, %struct.vport* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.vport*, %struct.vport** %4, align 8
  %72 = getelementptr inbounds %struct.vport, %struct.vport* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @packet_length(%struct.sk_buff* %70, %struct.TYPE_6__* %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %74, i32 %75)
  %77 = load %struct.vport*, %struct.vport** %4, align 8
  %78 = getelementptr inbounds %struct.vport, %struct.vport* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %97

84:                                               ; preds = %59
  %85 = load %struct.vport*, %struct.vport** %4, align 8
  %86 = getelementptr inbounds %struct.vport, %struct.vport* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %89, align 8
  %90 = load %struct.vport*, %struct.vport** %4, align 8
  %91 = getelementptr inbounds %struct.vport, %struct.vport* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %93, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 %94(%struct.sk_buff* %95)
  br label %100

97:                                               ; preds = %64, %45, %43, %35
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %97, %84
  ret void
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @packet_length(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
