; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_amsdu_to_8023s.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_amsdu_to_8023s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, i32, i32, i64 }
%struct.sk_buff_head = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@rfc1042_header = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_amsdu_to_8023s(%struct.sk_buff* %0, %struct.sk_buff_head* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ethhdr, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 4)
  store i32 %29, i32* %15, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  store i32 0, i32* %19, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %7
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @skb_has_frag_list(%struct.sk_buff* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %7
  %40 = phi i1 [ false, %7 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %42

42:                                               ; preds = %193, %102, %39
  %43 = load i32, i32* %24, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %200

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* %19, align 4
  %49 = call i32 @skb_copy_bits(%struct.sk_buff* %47, i32 %48, %struct.ethhdr* %21, i32 12)
  %50 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  store i32 %52, i32* %26, align 4
  %53 = load i32, i32* %26, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 12, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %25, align 4
  %58 = sub i32 4, %57
  %59 = and i32 %58, 3
  store i32 %59, i32* %27, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %207

69:                                               ; preds = %46
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 12
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %27, align 4
  %77 = add i32 %75, %76
  %78 = icmp ule i32 %74, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %24, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @is_multicast_ether_addr(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ether_addr_equal(i32* %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87, %82, %69
  %94 = load i32*, i32** %14, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ether_addr_equal(i32* %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96, %87
  %103 = load i32, i32* %26, align 4
  %104 = load i32, i32* %27, align 4
  %105 = add i32 %103, %104
  %106 = load i32, i32* %19, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %19, align 4
  br label %42

108:                                              ; preds = %96, %93
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = call i32 @skb_is_nonlinear(%struct.sk_buff* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %22, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @skb_pull(%struct.sk_buff* %119, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %16, align 8
  store i32 1, i32* %23, align 4
  br label %139

123:                                              ; preds = %115, %112, %108
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %22, align 4
  %129 = call %struct.sk_buff* @__ieee80211_amsdu_copy(%struct.sk_buff* %124, i32 %125, i32 %126, i32 %127, i32 %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %16, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %131 = icmp ne %struct.sk_buff* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %207

133:                                              ; preds = %123
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %27, align 4
  %136 = add i32 %134, %135
  %137 = load i32, i32* %19, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %133, %118
  %140 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %141 = call i32 @skb_reset_network_header(%struct.sk_buff* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %18, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 6
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = load i32*, i32** %18, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 7
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %158, %161
  store i32 %162, i32* %17, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* @rfc1042_header, align 4
  %165 = call i64 @ether_addr_equal(i32* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %139
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @ETH_P_AARP, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @ETH_P_IPX, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %171, %167, %139
  %176 = load i32*, i32** %18, align 8
  %177 = load i32, i32* @bridge_tunnel_header, align 4
  %178 = call i64 @ether_addr_equal(i32* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %175, %171
  %181 = phi i1 [ true, %171 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = call i64 @likely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @htons(i32 %186)
  %188 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 0
  store i32 %187, i32* %188, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = add nsw i32 %190, 2
  %192 = call i32 @skb_pull(%struct.sk_buff* %189, i32 %191)
  br label %193

193:                                              ; preds = %185, %180
  %194 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %195 = call i32 @skb_push(%struct.sk_buff* %194, i32 12)
  %196 = call i32 @memcpy(i32 %195, %struct.ethhdr* %21, i32 12)
  %197 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %199 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %197, %struct.sk_buff* %198)
  br label %42

200:                                              ; preds = %42
  %201 = load i32, i32* %23, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = call i32 @dev_kfree_skb(%struct.sk_buff* %204)
  br label %206

206:                                              ; preds = %203, %200
  br label %212

207:                                              ; preds = %132, %68
  %208 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %209 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = call i32 @dev_kfree_skb(%struct.sk_buff* %210)
  br label %212

212:                                              ; preds = %207, %206
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, %struct.ethhdr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__ieee80211_amsdu_copy(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32, %struct.ethhdr*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
