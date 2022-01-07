; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.net = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state**, i32 }
%struct.TYPE_8__ = type { %struct.xfrm_state*, i32 }
%struct.TYPE_7__ = type { i32 }

@LINUX_MIB_XFRMOUTERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKB_GSO_ESP = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP_TX_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_output(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_path*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_8__* @skb_dst(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_8__* @skb_dst(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  store %struct.xfrm_state* %18, %struct.xfrm_state** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @secpath_reset(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %23 = call i64 @xfrm_dev_offload_ok(%struct.sk_buff* %21, %struct.xfrm_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.sec_path* @secpath_set(%struct.sk_buff* %26)
  store %struct.sec_path* %27, %struct.sec_path** %9, align 8
  %28 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %29 = icmp ne %struct.sec_path* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %33 = call i32 @XFRM_INC_STATS(%struct.net* %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %123

38:                                               ; preds = %25
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %42 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %46 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %47 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %46, i32 0, i32 1
  %48 = load %struct.xfrm_state**, %struct.xfrm_state*** %47, align 8
  %49 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %50 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %48, i64 %53
  store %struct.xfrm_state* %45, %struct.xfrm_state** %54, align 8
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %56 = call i32 @xfrm_state_hold(%struct.xfrm_state* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i64 @skb_is_gso(%struct.sk_buff* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %38
  %61 = load i32, i32* @SKB_GSO_ESP, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net*, %struct.net** %6, align 8
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @xfrm_output2(%struct.net* %67, %struct.sock* %68, %struct.sk_buff* %69)
  store i32 %70, i32* %3, align 4
  br label %123

71:                                               ; preds = %38
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NETIF_F_HW_ESP_TX_CSUM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %118

88:                                               ; preds = %77, %71
  br label %89

89:                                               ; preds = %88, %2
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i64 @skb_is_gso(%struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.net*, %struct.net** %6, align 8
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @xfrm_output_gso(%struct.net* %94, %struct.sock* %95, %struct.sk_buff* %96)
  store i32 %97, i32* %3, align 4
  br label %123

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @skb_checksum_help(%struct.sk_buff* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.net*, %struct.net** %6, align 8
  %111 = load i32, i32* @LINUX_MIB_XFRMOUTERROR, align 4
  %112 = call i32 @XFRM_INC_STATS(%struct.net* %110, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %87
  %119 = load %struct.net*, %struct.net** %6, align 8
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i32 @xfrm_output2(%struct.net* %119, %struct.sock* %120, %struct.sk_buff* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %109, %93, %60, %30
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_8__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i64 @xfrm_dev_offload_ok(%struct.sk_buff*, %struct.xfrm_state*) #1

declare dso_local %struct.sec_path* @secpath_set(%struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_output2(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_output_gso(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
