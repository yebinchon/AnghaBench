; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c___xfrm6_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c___xfrm6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@__xfrm6_output_finish = common dso_local global i32 0, align 4
@IP6SKB_REROUTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @__xfrm6_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm6_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %12)
  store %struct.dst_entry* %13, %struct.dst_entry** %8, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %15 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %14, i32 0, i32 0
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  store %struct.xfrm_state* %16, %struct.xfrm_state** %9, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %103

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ETH_P_IPV6, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @ip6_skb_dst_mtu(%struct.sk_buff* %32)
  store i32 %33, i32* %10, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %35)
  %37 = call i32 @dst_mtu(%struct.dst_entry* %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @skb_is_gso(%struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ false, %38 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i64 @xfrm6_local_dontfrag(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @xfrm6_local_rxpmtu(%struct.sk_buff* %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  %64 = load i32, i32* @EMSGSIZE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %108

66:                                               ; preds = %54, %49
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @xfrm_local_error(%struct.sk_buff* %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %108

87:                                               ; preds = %74, %71, %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %92)
  %94 = call i64 @dst_allfrag(%struct.dst_entry* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91, %88
  %97 = load %struct.net*, %struct.net** %5, align 8
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load i32, i32* @__xfrm6_output_finish, align 4
  %101 = call i32 @ip6_fragment(%struct.net* %97, %struct.sock* %98, %struct.sk_buff* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %108

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %23
  %104 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %105 = load %struct.sock*, %struct.sock** %6, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call i32 @__xfrm6_output_state_finish(%struct.xfrm_state* %104, %struct.sock* %105, %struct.sk_buff* %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %96, %79, %58
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ip6_skb_dst_mtu(%struct.sk_buff*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @xfrm6_local_dontfrag(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_local_rxpmtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_local_error(%struct.sk_buff*, i32) #1

declare dso_local i64 @dst_allfrag(%struct.dst_entry*) #1

declare dso_local i32 @ip6_fragment(%struct.net*, %struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__xfrm6_output_state_finish(%struct.xfrm_state*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
