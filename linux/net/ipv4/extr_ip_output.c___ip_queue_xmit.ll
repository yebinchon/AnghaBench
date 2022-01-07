; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64 }
%struct.rtable = type { i32, i64 }
%struct.iphdr = type { i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i64 }

@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_queue_xmit(%struct.sock* %0, %struct.sk_buff* %1, %struct.flowi* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.ip_options_rcu*, align 8
  %13 = alloca %struct.flowi4*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.flowi* %2, %struct.flowi** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.inet_sock* @inet_sk(%struct.sock* %18)
  store %struct.inet_sock* %19, %struct.inet_sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call %struct.net* @sock_net(%struct.sock* %20)
  store %struct.net* %21, %struct.net** %11, align 8
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %24 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ip_options_rcu* @rcu_dereference(i32 %25)
  store %struct.ip_options_rcu* %26, %struct.ip_options_rcu** %12, align 8
  %27 = load %struct.flowi*, %struct.flowi** %8, align 8
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.flowi4* %29, %struct.flowi4** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %30)
  store %struct.rtable* %31, %struct.rtable** %14, align 8
  %32 = load %struct.rtable*, %struct.rtable** %14, align 8
  %33 = icmp ne %struct.rtable* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %96

35:                                               ; preds = %4
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = call i64 @__sk_dst_check(%struct.sock* %36, i32 0)
  %38 = inttoptr i64 %37 to %struct.rtable*
  store %struct.rtable* %38, %struct.rtable** %14, align 8
  %39 = load %struct.rtable*, %struct.rtable** %14, align 8
  %40 = icmp ne %struct.rtable* %39, null
  br i1 %40, label %91, label %41

41:                                               ; preds = %35
  %42 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %46 = icmp ne %struct.ip_options_rcu* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %49 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %55 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %53, %47, %41
  %59 = load %struct.net*, %struct.net** %11, align 8
  %60 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %64 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %70 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @RT_CONN_FLAGS_TOS(%struct.sock* %75, i32 %76)
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.rtable* @ip_route_output_ports(%struct.net* %59, %struct.flowi4* %60, %struct.sock* %61, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  store %struct.rtable* %81, %struct.rtable** %14, align 8
  %82 = load %struct.rtable*, %struct.rtable** %14, align 8
  %83 = call i64 @IS_ERR(%struct.rtable* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %58
  br label %227

86:                                               ; preds = %58
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = load %struct.rtable*, %struct.rtable** %14, align 8
  %89 = getelementptr inbounds %struct.rtable, %struct.rtable* %88, i32 0, i32 0
  %90 = call i32 @sk_setup_caps(%struct.sock* %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %35
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load %struct.rtable*, %struct.rtable** %14, align 8
  %94 = getelementptr inbounds %struct.rtable, %struct.rtable* %93, i32 0, i32 0
  %95 = call i32 @skb_dst_set_noref(%struct.sk_buff* %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %34
  %97 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %98 = icmp ne %struct.ip_options_rcu* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %101 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.rtable*, %struct.rtable** %14, align 8
  %107 = getelementptr inbounds %struct.rtable, %struct.rtable* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %227

111:                                              ; preds = %105, %99, %96
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %114 = icmp ne %struct.ip_options_rcu* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %117 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i32 [ %119, %115 ], [ 0, %120 ]
  %123 = sext i32 %122 to i64
  %124 = add i64 24, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @skb_push(%struct.sk_buff* %112, i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = call i32 @skb_reset_network_header(%struct.sk_buff* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %129)
  store %struct.iphdr* %130, %struct.iphdr** %15, align 8
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 255
  %133 = or i32 17664, %132
  %134 = call i8* @htons(i32 %133)
  %135 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %136 = bitcast %struct.iphdr* %135 to i8**
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sock*, %struct.sock** %6, align 8
  %138 = load %struct.rtable*, %struct.rtable** %14, align 8
  %139 = getelementptr inbounds %struct.rtable, %struct.rtable* %138, i32 0, i32 0
  %140 = call i64 @ip_dont_fragment(%struct.sock* %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %121
  %143 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @IP_DF, align 4
  %149 = call i8* @htons(i32 %148)
  %150 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  br label %155

152:                                              ; preds = %142, %121
  %153 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 3
  store i8* null, i8** %154, align 8
  br label %155

155:                                              ; preds = %152, %147
  %156 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %157 = load %struct.rtable*, %struct.rtable** %14, align 8
  %158 = getelementptr inbounds %struct.rtable, %struct.rtable* %157, i32 0, i32 0
  %159 = call i32 @ip_select_ttl(%struct.inet_sock* %156, i32* %158)
  %160 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.sock*, %struct.sock** %6, align 8
  %163 = getelementptr inbounds %struct.sock, %struct.sock* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %168 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %169 = call i32 @ip_copy_addrs(%struct.iphdr* %167, %struct.flowi4* %168)
  %170 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %171 = icmp ne %struct.ip_options_rcu* %170, null
  br i1 %171, label %172, label %196

172:                                              ; preds = %155
  %173 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %174 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %180 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = ashr i32 %182, 2
  %184 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %189 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %12, align 8
  %190 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %189, i32 0, i32 0
  %191 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %192 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rtable*, %struct.rtable** %14, align 8
  %195 = call i32 @ip_options_build(%struct.sk_buff* %188, %struct.TYPE_6__* %190, i32 %193, %struct.rtable* %194, i32 0)
  br label %196

196:                                              ; preds = %178, %172, %155
  %197 = load %struct.net*, %struct.net** %11, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = load %struct.sock*, %struct.sock** %6, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %200)
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %207

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206, %205
  %208 = phi i64 [ %203, %205 ], [ 1, %206 ]
  %209 = trunc i64 %208 to i32
  %210 = call i32 @ip_select_ident_segs(%struct.net* %197, %struct.sk_buff* %198, %struct.sock* %199, i32 %209)
  %211 = load %struct.sock*, %struct.sock** %6, align 8
  %212 = getelementptr inbounds %struct.sock, %struct.sock* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.sock*, %struct.sock** %6, align 8
  %217 = getelementptr inbounds %struct.sock, %struct.sock* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  %221 = load %struct.net*, %struct.net** %11, align 8
  %222 = load %struct.sock*, %struct.sock** %6, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %224 = call i32 @ip_local_out(%struct.net* %221, %struct.sock* %222, %struct.sk_buff* %223)
  store i32 %224, i32* %16, align 4
  %225 = call i32 (...) @rcu_read_unlock()
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %5, align 4
  br label %236

227:                                              ; preds = %110, %85
  %228 = call i32 (...) @rcu_read_unlock()
  %229 = load %struct.net*, %struct.net** %11, align 8
  %230 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %231 = call i32 @IP_INC_STATS(%struct.net* %229, i32 %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = call i32 @kfree_skb(%struct.sk_buff* %232)
  %234 = load i32, i32* @EHOSTUNREACH, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %227, %207
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.rtable* @ip_route_output_ports(%struct.net*, %struct.flowi4*, %struct.sock*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_CONN_FLAGS_TOS(%struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, i32*) #1

declare dso_local i32 @ip_select_ttl(%struct.inet_sock*, i32*) #1

declare dso_local i32 @ip_copy_addrs(%struct.iphdr*, %struct.flowi4*) #1

declare dso_local i32 @ip_options_build(%struct.sk_buff*, %struct.TYPE_6__*, i32, %struct.rtable*, i32) #1

declare dso_local i32 @ip_select_ident_segs(%struct.net*, %struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ip_local_out(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
