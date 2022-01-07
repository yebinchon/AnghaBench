; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_send_unicast_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_send_unicast_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.ip_options = type { i32 }
%struct.ip_reply_arg = type { i32, i64, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ip_options_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.ipcm_cookie = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@sysctl_wmem_default = common dso_local global i32 0, align 4
@ip_reply_glue_bits = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_send_unicast_reply(%struct.sock* %0, %struct.sk_buff* %1, %struct.ip_options* %2, i32 %3, i32 %4, %struct.ip_reply_arg* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ip_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_reply_arg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_options_data, align 8
  %18 = alloca %struct.ipcm_cookie, align 8
  %19 = alloca %struct.flowi4, align 4
  %20 = alloca %struct.rtable*, align 8
  %21 = alloca %struct.net*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.ip_options* %2, %struct.ip_options** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ip_reply_arg* %5, %struct.ip_reply_arg** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %25)
  store %struct.rtable* %26, %struct.rtable** %20, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call %struct.net* @sock_net(%struct.sock* %27)
  store %struct.net* %28, %struct.net** %21, align 8
  %29 = load %struct.net*, %struct.net** %21, align 8
  %30 = getelementptr inbounds %struct.ip_options_data, %struct.ip_options_data* %17, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load %struct.ip_options*, %struct.ip_options** %11, align 8
  %34 = call i64 @__ip_options_echo(%struct.net* %29, %struct.TYPE_14__* %31, %struct.sk_buff* %32, %struct.ip_options* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %8
  br label %209

37:                                               ; preds = %8
  %38 = call i32 @ipcm_init(%struct.ipcm_cookie* %18)
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %18, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %18, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.ip_options_data, %struct.ip_options_data* %17, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.ip_options_data, %struct.ip_options_data* %17, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %18, i32 0, i32 0
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %51, align 8
  %52 = getelementptr inbounds %struct.ip_options_data, %struct.ip_options_data* %17, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ip_options_data, %struct.ip_options_data* %17, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %49
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %65 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = load %struct.net*, %struct.net** %21, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @netif_index_is_l3_master(%struct.net* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %24, align 4
  br label %80

80:                                               ; preds = %76, %69, %63
  %81 = load i32, i32* %24, align 4
  %82 = load %struct.net*, %struct.net** %21, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IP4_REPLY_MARK(%struct.net* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.sock*, %struct.sock** %9, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  br label %94

94:                                               ; preds = %89, %88
  %95 = phi i64 [ %86, %88 ], [ %93, %89 ]
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %98 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @RT_TOS(i32 %99)
  %101 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %107 = call i32 @ip_reply_arg_flowi_flags(%struct.ip_reply_arg* %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = call %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %119 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @flowi4_init_output(%struct.flowi4* %19, i32 %81, i32 %96, i32 %100, i32 %101, i32 %105, i32 %107, i32 %108, i32 %109, i32 %113, i32 %117, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call i32 @flowi4_to_flowi(%struct.flowi4* %19)
  %124 = call i32 @security_skb_classify_flow(%struct.sk_buff* %122, i32 %123)
  %125 = load %struct.net*, %struct.net** %21, align 8
  %126 = call %struct.rtable* @ip_route_output_key(%struct.net* %125, %struct.flowi4* %19)
  store %struct.rtable* %126, %struct.rtable** %20, align 8
  %127 = load %struct.rtable*, %struct.rtable** %20, align 8
  %128 = call i64 @IS_ERR(%struct.rtable* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %94
  br label %209

131:                                              ; preds = %94
  %132 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %133 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sock*, %struct.sock** %9, align 8
  %136 = call %struct.TYPE_13__* @inet_sk(%struct.sock* %135)
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sock*, %struct.sock** %9, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %145 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sock*, %struct.sock** %9, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @sysctl_wmem_default, align 4
  %150 = load %struct.sock*, %struct.sock** %9, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sock*, %struct.sock** %9, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sock*, %struct.sock** %9, align 8
  %157 = load i32, i32* @ip_reply_glue_bits, align 4
  %158 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %159 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %158, i32 0, i32 3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @MSG_DONTWAIT, align 4
  %165 = call i32 @ip_append_data(%struct.sock* %156, %struct.flowi4* %19, i32 %157, i32 %162, i32 %163, i32 0, %struct.ipcm_cookie* %18, %struct.rtable** %20, i32 %164)
  store i32 %165, i32* %23, align 4
  %166 = load i32, i32* %23, align 4
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %131
  %170 = load %struct.sock*, %struct.sock** %9, align 8
  %171 = call i32 @ip_flush_pending_frames(%struct.sock* %170)
  br label %206

172:                                              ; preds = %131
  %173 = load %struct.sock*, %struct.sock** %9, align 8
  %174 = getelementptr inbounds %struct.sock, %struct.sock* %173, i32 0, i32 1
  %175 = call %struct.sk_buff* @skb_peek(i32* %174)
  store %struct.sk_buff* %175, %struct.sk_buff** %22, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %177 = icmp ne %struct.sk_buff* %176, null
  br i1 %177, label %178, label %205

178:                                              ; preds = %172
  %179 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %180 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %188 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @csum_add(i32 %186, i32 %189)
  %191 = call i32 @csum_fold(i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %193 = call i64 @skb_transport_header(%struct.sk_buff* %192)
  %194 = inttoptr i64 %193 to i32*
  %195 = load %struct.ip_reply_arg*, %struct.ip_reply_arg** %14, align 8
  %196 = getelementptr inbounds %struct.ip_reply_arg, %struct.ip_reply_arg* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %191, i32* %198, align 4
  br label %199

199:                                              ; preds = %183, %178
  %200 = load i32, i32* @CHECKSUM_NONE, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.sock*, %struct.sock** %9, align 8
  %204 = call i32 @ip_push_pending_frames(%struct.sock* %203, %struct.flowi4* %19)
  br label %205

205:                                              ; preds = %199, %172
  br label %206

206:                                              ; preds = %205, %169
  %207 = load %struct.rtable*, %struct.rtable** %20, align 8
  %208 = call i32 @ip_rt_put(%struct.rtable* %207)
  br label %209

209:                                              ; preds = %206, %130, %36
  ret void
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @__ip_options_echo(%struct.net*, %struct.TYPE_14__*, %struct.sk_buff*, %struct.ip_options*) #1

declare dso_local i32 @ipcm_init(%struct.ipcm_cookie*) #1

declare dso_local i64 @netif_index_is_l3_master(%struct.net*, i32) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IP4_REPLY_MARK(%struct.net*, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_reply_arg_flowi_flags(%struct.ip_reply_arg*) #1

declare dso_local %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local %struct.TYPE_13__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_append_data(%struct.sock*, %struct.flowi4*, i32, i32, i32, i32, %struct.ipcm_cookie*, %struct.rtable**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_flush_pending_frames(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_push_pending_frames(%struct.sock*, %struct.flowi4*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
