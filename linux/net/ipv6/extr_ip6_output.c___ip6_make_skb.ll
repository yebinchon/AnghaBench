; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c___ip6_make_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c___ip6_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32, i32, i32*, i32*, i64, i32, %struct.sk_buff* }
%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.inet_cork_full = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flowi6 }
%struct.flowi6 = type { i8, i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.inet6_cork = type { i32, i32, %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.ipv6_pinfo = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i8, %struct.in6_addr, i32, i32 }
%struct.rt6_info = type { i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_9__ = type { %struct.sk_buff* }
%struct.TYPE_10__ = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i8 0, align 1
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__ip6_make_skb(%struct.sock* %0, %struct.sk_buff_head* %1, %struct.inet_cork_full* %2, %struct.inet6_cork* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.inet_cork_full*, align 8
  %8 = alloca %struct.inet6_cork*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca %struct.ipv6_pinfo*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.ipv6_txoptions*, align 8
  %18 = alloca %struct.rt6_info*, align 8
  %19 = alloca %struct.flowi6*, align 8
  %20 = alloca i8, align 1
  %21 = alloca %struct.inet6_dev*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store %struct.inet_cork_full* %2, %struct.inet_cork_full** %7, align 8
  store %struct.inet6_cork* %3, %struct.inet6_cork** %8, align 8
  store %struct.in6_addr* %12, %struct.in6_addr** %13, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %22)
  store %struct.ipv6_pinfo* %23, %struct.ipv6_pinfo** %14, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.net* @sock_net(%struct.sock* %24)
  store %struct.net* %25, %struct.net** %15, align 8
  %26 = load %struct.inet6_cork*, %struct.inet6_cork** %8, align 8
  %27 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %26, i32 0, i32 2
  %28 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %27, align 8
  store %struct.ipv6_txoptions* %28, %struct.ipv6_txoptions** %17, align 8
  %29 = load %struct.inet_cork_full*, %struct.inet_cork_full** %7, align 8
  %30 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.rt6_info*
  store %struct.rt6_info* %33, %struct.rt6_info** %18, align 8
  %34 = load %struct.inet_cork_full*, %struct.inet_cork_full** %7, align 8
  %35 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.flowi6* %37, %struct.flowi6** %19, align 8
  %38 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %39 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  store i8 %40, i8* %20, align 1
  %41 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %42 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %4
  br label %236

46:                                               ; preds = %4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.sk_buff** %49, %struct.sk_buff*** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i64 @skb_network_header(%struct.sk_buff* %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = call i32 @skb_network_offset(%struct.sk_buff* %58)
  %60 = call i32 @__skb_pull(%struct.sk_buff* %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %46
  br label %62

62:                                               ; preds = %66, %61
  %63 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %64 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %10, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = call i32 @skb_network_header_len(%struct.sk_buff* %68)
  %70 = call i32 @__skb_pull(%struct.sk_buff* %67, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 10
  store %struct.sk_buff** %74, %struct.sk_buff*** %11, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 6
  store i32* null, i32** %101, align 8
  br label %62

102:                                              ; preds = %62
  %103 = load %struct.sock*, %struct.sock** %5, align 8
  %104 = call i32 @ip6_sk_ignore_df(%struct.sock* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %108 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %109 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %108, i32 0, i32 3
  %110 = bitcast %struct.in6_addr* %107 to i8*
  %111 = bitcast %struct.in6_addr* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = call i32 @skb_network_header_len(%struct.sk_buff* %113)
  %115 = call i32 @__skb_pull(%struct.sk_buff* %112, i32 %114)
  %116 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %117 = icmp ne %struct.ipv6_txoptions* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %102
  %119 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %120 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %126 = call i32 @ipv6_push_frag_opts(%struct.sk_buff* %124, %struct.ipv6_txoptions* %125, i8* %20)
  br label %127

127:                                              ; preds = %123, %118, %102
  %128 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %129 = icmp ne %struct.ipv6_txoptions* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %132 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %138 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %139 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %138, i32 0, i32 1
  %140 = call i32 @ipv6_push_nfrag_opts(%struct.sk_buff* %136, %struct.ipv6_txoptions* %137, i8* %20, %struct.in6_addr** %13, i32* %139)
  br label %141

141:                                              ; preds = %135, %130, %127
  %142 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %143 = call i32 @skb_push(%struct.sk_buff* %142, i32 16)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = call i32 @skb_reset_network_header(%struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %147 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %146)
  store %struct.ipv6hdr* %147, %struct.ipv6hdr** %16, align 8
  %148 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %149 = load %struct.inet6_cork*, %struct.inet6_cork** %8, align 8
  %150 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.net*, %struct.net** %15, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %154 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %155 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.net*, %struct.net** %15, align 8
  %158 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %159 = call i32 @ip6_autoflowlabel(%struct.net* %157, %struct.ipv6_pinfo* %158)
  %160 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %161 = call i32 @ip6_make_flowlabel(%struct.net* %152, %struct.sk_buff* %153, i32 %156, i32 %159, %struct.flowi6* %160)
  %162 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %148, i32 %151, i32 %161)
  %163 = load %struct.inet6_cork*, %struct.inet6_cork** %8, align 8
  %164 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %167 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i8, i8* %20, align 1
  %169 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %170 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %169, i32 0, i32 0
  store i8 %168, i8* %170, align 4
  %171 = load %struct.flowi6*, %struct.flowi6** %19, align 8
  %172 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %175 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %177 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %176, i32 0, i32 1
  %178 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %179 = bitcast %struct.in6_addr* %177 to i8*
  %180 = bitcast %struct.in6_addr* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 4, i1 false)
  %181 = load %struct.sock*, %struct.sock** %5, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.inet_cork_full*, %struct.inet_cork_full** %7, align 8
  %187 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.inet_cork_full*, %struct.inet_cork_full** %7, align 8
  %193 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = load %struct.rt6_info*, %struct.rt6_info** %18, align 8
  %200 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %199, i32 0, i32 1
  %201 = call i32 @dst_clone(i32* %200)
  %202 = call i32 @skb_dst_set(%struct.sk_buff* %198, i32 %201)
  %203 = load %struct.net*, %struct.net** %15, align 8
  %204 = load %struct.rt6_info*, %struct.rt6_info** %18, align 8
  %205 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @IP6_UPD_PO_STATS(%struct.net* %203, i32 %206, i32 %207, i64 %210)
  %212 = load i8, i8* %20, align 1
  %213 = zext i8 %212 to i32
  %214 = load i8, i8* @IPPROTO_ICMPV6, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %141
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = call i32 @skb_dst(%struct.sk_buff* %218)
  %220 = call %struct.inet6_dev* @ip6_dst_idev(i32 %219)
  store %struct.inet6_dev* %220, %struct.inet6_dev** %21, align 8
  %221 = load %struct.net*, %struct.net** %15, align 8
  %222 = load %struct.inet6_dev*, %struct.inet6_dev** %21, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %224 = call %struct.TYPE_10__* @icmp6_hdr(%struct.sk_buff* %223)
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %221, %struct.inet6_dev* %222, i32 %226)
  %228 = load %struct.net*, %struct.net** %15, align 8
  %229 = load %struct.inet6_dev*, %struct.inet6_dev** %21, align 8
  %230 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %231 = call i32 @ICMP6_INC_STATS(%struct.net* %228, %struct.inet6_dev* %229, i32 %230)
  br label %232

232:                                              ; preds = %217, %141
  %233 = load %struct.inet_cork_full*, %struct.inet_cork_full** %7, align 8
  %234 = load %struct.inet6_cork*, %struct.inet6_cork** %8, align 8
  %235 = call i32 @ip6_cork_release(%struct.inet_cork_full* %233, %struct.inet6_cork* %234)
  br label %236

236:                                              ; preds = %232, %45
  %237 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %237
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ip6_sk_ignore_df(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipv6_push_frag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i8*) #1

declare dso_local i32 @ipv6_push_nfrag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i8*, %struct.in6_addr**, i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @ip6_make_flowlabel(%struct.net*, %struct.sk_buff*, i32, i32, %struct.flowi6*) #1

declare dso_local i32 @ip6_autoflowlabel(%struct.net*, %struct.ipv6_pinfo*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, i32, i32, i64) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local %struct.TYPE_10__* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ip6_cork_release(%struct.inet_cork_full*, %struct.inet6_cork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
