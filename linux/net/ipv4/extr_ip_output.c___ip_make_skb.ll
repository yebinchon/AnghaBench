; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_make_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32, i32, i32*, i32*, i64, i32, %struct.sk_buff* }
%struct.sock = type { i64, i32 }
%struct.flowi4 = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.inet_cork = type { i32, i64, i32, i32*, i32, i32, i32, i32, %struct.ip_options* }
%struct.ip_options = type { i32 }
%struct.inet_sock = type { i64, i64, i32 }
%struct.net = type { i32 }
%struct.rtable = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.icmphdr = type { i32 }

@IP_PMTUDISC_DO = common dso_local global i64 0, align 8
@IP_PMTUDISC_PROBE = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__ip_make_skb(%struct.sock* %0, %struct.flowi4* %1, %struct.sk_buff_head* %2, %struct.inet_cork* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.flowi4*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.inet_cork*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.ip_options*, align 8
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.flowi4* %1, %struct.flowi4** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store %struct.inet_cork* %3, %struct.inet_cork** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %12, align 8
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call %struct.net* @sock_net(%struct.sock* %21)
  store %struct.net* %22, %struct.net** %13, align 8
  store %struct.ip_options* null, %struct.ip_options** %14, align 8
  %23 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %24 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.rtable*
  store %struct.rtable* %26, %struct.rtable** %15, align 8
  store i32 0, i32* %17, align 4
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %265

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.sk_buff** %35, %struct.sk_buff*** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i64 @skb_network_header(%struct.sk_buff* %39)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = call i32 @skb_network_offset(%struct.sk_buff* %44)
  %46 = call i32 @__skb_pull(%struct.sk_buff* %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %32
  br label %48

48:                                               ; preds = %52, %47
  %49 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %50 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %10, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @skb_network_header_len(%struct.sk_buff* %54)
  %56 = call i32 @__skb_pull(%struct.sk_buff* %53, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 10
  store %struct.sk_buff** %60, %struct.sk_buff*** %11, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 7
  store i32* null, i32** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 6
  store i32* null, i32** %87, align 8
  br label %48

88:                                               ; preds = %48
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = call i32 @ip_sk_ignore_df(%struct.sock* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %94 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IP_PMTUDISC_DO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %118, label %98

98:                                               ; preds = %88
  %99 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %100 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IP_PMTUDISC_PROBE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rtable*, %struct.rtable** %15, align 8
  %109 = getelementptr inbounds %struct.rtable, %struct.rtable* %108, i32 0, i32 1
  %110 = call i64 @dst_mtu(i32* %109)
  %111 = icmp sle i64 %107, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = load %struct.rtable*, %struct.rtable** %15, align 8
  %115 = getelementptr inbounds %struct.rtable, %struct.rtable* %114, i32 0, i32 1
  %116 = call i64 @ip_dont_fragment(%struct.sock* %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %98, %88
  %119 = load i32, i32* @IP_DF, align 4
  %120 = call i32 @htons(i32 %119)
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %118, %112, %104
  %122 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %123 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IPCORK_OPT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %130 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %129, i32 0, i32 8
  %131 = load %struct.ip_options*, %struct.ip_options** %130, align 8
  store %struct.ip_options* %131, %struct.ip_options** %14, align 8
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %134 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %139 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %18, align 8
  br label %157

141:                                              ; preds = %132
  %142 = load %struct.rtable*, %struct.rtable** %15, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RTN_MULTICAST, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %149 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %18, align 8
  br label %156

151:                                              ; preds = %141
  %152 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %153 = load %struct.rtable*, %struct.rtable** %15, align 8
  %154 = getelementptr inbounds %struct.rtable, %struct.rtable* %153, i32 0, i32 1
  %155 = call i64 @ip_select_ttl(%struct.inet_sock* %152, i32* %154)
  store i64 %155, i64* %18, align 8
  br label %156

156:                                              ; preds = %151, %147
  br label %157

157:                                              ; preds = %156, %137
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %158)
  store %struct.iphdr* %159, %struct.iphdr** %16, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 0
  store i32 4, i32* %161, align 8
  %162 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 1
  store i32 5, i32* %163, align 4
  %164 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %165 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %170 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  br label %176

172:                                              ; preds = %157
  %173 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %174 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i32 [ %171, %168 ], [ %175, %172 ]
  %178 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  %186 = load %struct.sock*, %struct.sock** %5, align 8
  %187 = getelementptr inbounds %struct.sock, %struct.sock* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 4
  store i64 %188, i64* %190, align 8
  %191 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %192 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %193 = call i32 @ip_copy_addrs(%struct.iphdr* %191, %struct.flowi4* %192)
  %194 = load %struct.net*, %struct.net** %13, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load %struct.sock*, %struct.sock** %5, align 8
  %197 = call i32 @ip_select_ident(%struct.net* %194, %struct.sk_buff* %195, %struct.sock* %196)
  %198 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %199 = icmp ne %struct.ip_options* %198, null
  br i1 %199, label %200, label %216

200:                                              ; preds = %176
  %201 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %202 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 2
  %205 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %206 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %211 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %212 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.rtable*, %struct.rtable** %15, align 8
  %215 = call i32 @ip_options_build(%struct.sk_buff* %209, %struct.ip_options* %210, i32 %213, %struct.rtable* %214, i32 0)
  br label %216

216:                                              ; preds = %200, %176
  %217 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %218 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, -1
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %223 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  br label %229

225:                                              ; preds = %216
  %226 = load %struct.sock*, %struct.sock** %5, align 8
  %227 = getelementptr inbounds %struct.sock, %struct.sock* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi i32 [ %224, %221 ], [ %228, %225 ]
  %231 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %234 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %239 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %244 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %243, i32 0, i32 3
  store i32* null, i32** %244, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %246 = load %struct.rtable*, %struct.rtable** %15, align 8
  %247 = getelementptr inbounds %struct.rtable, %struct.rtable* %246, i32 0, i32 1
  %248 = call i32 @skb_dst_set(%struct.sk_buff* %245, i32* %247)
  %249 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %250 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @IPPROTO_ICMP, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %229
  %255 = load %struct.net*, %struct.net** %13, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %257 = call i64 @skb_transport_header(%struct.sk_buff* %256)
  %258 = inttoptr i64 %257 to %struct.icmphdr*
  %259 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @icmp_out_count(%struct.net* %255, i32 %260)
  br label %262

262:                                              ; preds = %254, %229
  %263 = load %struct.inet_cork*, %struct.inet_cork** %8, align 8
  %264 = call i32 @ip_cork_release(%struct.inet_cork* %263)
  br label %265

265:                                              ; preds = %262, %31
  %266 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %266
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ip_sk_ignore_df(%struct.sock*) #1

declare dso_local i64 @dst_mtu(i32*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_select_ttl(%struct.inet_sock*, i32*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_copy_addrs(%struct.iphdr*, %struct.flowi4*) #1

declare dso_local i32 @ip_select_ident(%struct.net*, %struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @ip_options_build(%struct.sk_buff*, %struct.ip_options*, i32, %struct.rtable*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @icmp_out_count(%struct.net*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_cork_release(%struct.inet_cork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
