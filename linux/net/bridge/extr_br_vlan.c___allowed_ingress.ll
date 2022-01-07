; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___allowed_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___allowed_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i64 }
%struct.br_vlan_stats = type { i32, i32, i32 }
%struct.net_bridge_vlan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@BROPT_VLAN_STATS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_vlan_group*, %struct.sk_buff*, i64*)* @__allowed_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__allowed_ingress(%struct.net_bridge* %0, %struct.net_bridge_vlan_group* %1, %struct.sk_buff* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_vlan_group*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.br_vlan_stats*, align 8
  %11 = alloca %struct.net_bridge_vlan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_vlan_group* %1, %struct.net_bridge_vlan_group** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br label %28

28:                                               ; preds = %20, %4
  %29 = phi i1 [ false, %4 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.sk_buff* @skb_vlan_untag(%struct.sk_buff* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %169

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @br_vlan_get_tag(%struct.sk_buff* %45, i64* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %54 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i32, i32* @ETH_HLEN, align 4
  %60 = call i32 @skb_push(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %65)
  %67 = call %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff* %61, i64 %64, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %8, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %169

75:                                               ; preds = %57
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* @ETH_HLEN, align 4
  %78 = call i32 @skb_pull(%struct.sk_buff* %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call i32 @skb_reset_mac_len(%struct.sk_buff* %79)
  %81 = load i64*, i64** %9, align 8
  store i64 0, i64* %81, align 8
  store i32 0, i32* %12, align 4
  br label %83

82:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %75
  br label %85

84:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %85
  %90 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %91 = call i64 @br_get_pvid(%struct.net_bridge_vlan_group* %90)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %166

95:                                               ; preds = %89
  %96 = load i64, i64* %13, align 8
  %97 = load i64*, i64** %9, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @likely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %107 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %105, i64 %108, i64 %109)
  br label %117

111:                                              ; preds = %95
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = or i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %119 = load i32, i32* @BROPT_VLAN_STATS_ENABLED, align 4
  %120 = call i64 @br_opt_get(%struct.net_bridge* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 1, i32* %5, align 4
  br label %169

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %85
  %125 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %126, align 8
  %128 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %125, i64 %127)
  store %struct.net_bridge_vlan* %128, %struct.net_bridge_vlan** %11, align 8
  %129 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %130 = icmp ne %struct.net_bridge_vlan* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %133 = call i32 @br_vlan_should_use(%struct.net_bridge_vlan* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131, %124
  br label %166

136:                                              ; preds = %131
  %137 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %138 = load i32, i32* @BROPT_VLAN_STATS_ENABLED, align 4
  %139 = call i64 @br_opt_get(%struct.net_bridge* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %136
  %142 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %143 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.br_vlan_stats* @this_cpu_ptr(i32 %144)
  store %struct.br_vlan_stats* %145, %struct.br_vlan_stats** %10, align 8
  %146 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %147 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %146, i32 0, i32 0
  %148 = call i32 @u64_stats_update_begin(i32* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %153 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %159 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %163 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %162, i32 0, i32 0
  %164 = call i32 @u64_stats_update_end(i32* %163)
  br label %165

165:                                              ; preds = %141, %136
  store i32 1, i32* %5, align 4
  br label %169

166:                                              ; preds = %135, %94
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = call i32 @kfree_skb(%struct.sk_buff* %167)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %166, %165, %122, %74, %42
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_vlan_untag(%struct.sk_buff*) #1

declare dso_local i32 @br_vlan_get_tag(%struct.sk_buff*, i64*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i64 @br_get_pvid(%struct.net_bridge_vlan_group*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i64) #1

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i64) #1

declare dso_local i32 @br_vlan_should_use(%struct.net_bridge_vlan*) #1

declare dso_local %struct.br_vlan_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
