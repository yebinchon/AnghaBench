; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_in_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_in_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.ip_ct_tcp = type { i64, i32, i32, i32, i32, i64, i64, %struct.ip_ct_tcp_state* }
%struct.ip_ct_tcp_state = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i64, i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.nf_tcp_net = type { i64 }

@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tcp_in_window: START\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"tcp_in_window: \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i receiver end=%u maxend=%u maxwin=%u scale=%i\0A\00", align 1
@IP_CT_TCP_FLAG_WINDOW_SCALE = common dso_local global i32 0, align 4
@TCP_CONNTRACK_SYN_SENT = common dso_local global i64 0, align 8
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@TCP_CONNTRACK_SYN_RECV = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCP_FLAG_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"tcp_in_window: I=%i II=%i III=%i IV=%i\0A\00", align 1
@IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_MAXACK_SET = common dso_local global i32 0, align 4
@TCP_ACK_SET = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_BE_LIBERAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"BUG\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"ACK is under the lower bound (possible overly delayed ACK)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"ACK is over the upper bound (ACKed data not seen yet)\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"SEQ is under the lower bound (already ACKed data retransmitted)\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"SEQ is over the upper bound (over the window of the receiver)\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"tcp_in_window: res=%u sender end=%u maxend=%u maxwin=%u receiver end=%u maxend=%u maxwin=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.ip_ct_tcp*, i32, i32, %struct.sk_buff*, i32, %struct.tcphdr*)* @tcp_in_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_in_window(%struct.nf_conn* %0, %struct.ip_ct_tcp* %1, i32 %2, i32 %3, %struct.sk_buff* %4, i32 %5, %struct.tcphdr* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca %struct.ip_ct_tcp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.nf_tcp_net*, align 8
  %18 = alloca %struct.ip_ct_tcp_state*, align 8
  %19 = alloca %struct.ip_ct_tcp_state*, align 8
  %20 = alloca %struct.nf_conntrack_tuple*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %9, align 8
  store %struct.ip_ct_tcp* %1, %struct.ip_ct_tcp** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.tcphdr* %6, %struct.tcphdr** %15, align 8
  %31 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %32 = call %struct.net* @nf_ct_net(%struct.nf_conn* %31)
  store %struct.net* %32, %struct.net** %16, align 8
  %33 = load %struct.net*, %struct.net** %16, align 8
  %34 = call %struct.nf_tcp_net* @nf_tcp_pernet(%struct.net* %33)
  store %struct.nf_tcp_net* %34, %struct.nf_tcp_net** %17, align 8
  %35 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %36 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %35, i32 0, i32 7
  %37 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %37, i64 %39
  store %struct.ip_ct_tcp_state* %40, %struct.ip_ct_tcp_state** %18, align 8
  %41 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %42 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %41, i32 0, i32 7
  %43 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %43, i64 %48
  store %struct.ip_ct_tcp_state* %49, %struct.ip_ct_tcp_state** %19, align 8
  %50 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %56, %struct.nf_conntrack_tuple** %20, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ntohl(i32 %59)
  store i32 %60, i32* %21, align 4
  %61 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohl(i32 %63)
  store i32 %64, i32* %23, align 4
  store i32 %64, i32* %22, align 4
  %65 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ntohs(i32 %67)
  store i64 %68, i64* %27, align 8
  %69 = load i64, i64* %27, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %77 = call i32 @segment_seq_plus_len(i32 %71, i32 %74, i32 %75, %struct.tcphdr* %76)
  store i32 %77, i32* %24, align 4
  %78 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %79 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %7
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %88 = call i32 @tcp_sack(%struct.sk_buff* %85, i32 %86, %struct.tcphdr* %87, i32* %23)
  br label %89

89:                                               ; preds = %84, %7
  %90 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %22, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @nf_ct_seq_offset(%struct.nf_conn* %90, i32 %94, i32 %96)
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %22, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %23, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %23, align 4
  %104 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %20, align 8
  %107 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %106)
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %28, align 4
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %117 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %120 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %123 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %126 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %129 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %132 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %135 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %138 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136, i32 %139)
  %141 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %142 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %232

145:                                              ; preds = %89
  %146 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %147 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %195

150:                                              ; preds = %145
  %151 = load i32, i32* %24, align 4
  %152 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %153 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %155 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %25, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %161

159:                                              ; preds = %150
  %160 = load i32, i32* %25, align 4
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i32 [ 1, %158 ], [ %160, %159 ]
  %163 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %164 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %168 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %169 = call i32 @tcp_options(%struct.sk_buff* %165, i32 %166, %struct.tcphdr* %167, %struct.ip_ct_tcp_state* %168)
  %170 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %171 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %161
  %177 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %178 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %176, %161
  %184 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %185 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %184, i32 0, i32 4
  store i32 0, i32* %185, align 4
  %186 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %187 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %186, i32 0, i32 4
  store i32 0, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %176
  %189 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  store i32 1, i32* %8, align 4
  br label %714

194:                                              ; preds = %188
  br label %231

195:                                              ; preds = %145
  %196 = load i32, i32* %24, align 4
  %197 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %198 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %25, align 4
  %200 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %201 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %199, %202
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  br label %209

207:                                              ; preds = %195
  %208 = load i32, i32* %26, align 4
  br label %209

209:                                              ; preds = %207, %206
  %210 = phi i32 [ 1, %206 ], [ %208, %207 ]
  %211 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %212 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %24, align 4
  %214 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %215 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %213, %216
  %218 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %219 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %221 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %209
  %225 = load i32, i32* %23, align 4
  %226 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %227 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %229 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %228, i32 0, i32 1
  store i32 %225, i32* %229, align 4
  br label %230

230:                                              ; preds = %224, %209
  br label %231

231:                                              ; preds = %230, %194
  br label %280

232:                                              ; preds = %89
  %233 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %234 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TCP_CONNTRACK_SYN_SENT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %252, label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %244 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @TCP_CONNTRACK_SYN_RECV, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %279

248:                                              ; preds = %242
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %279

252:                                              ; preds = %248, %238
  %253 = load i32, i32* %24, align 4
  %254 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %255 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @after(i32 %253, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %252
  %260 = load i32, i32* %24, align 4
  %261 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %262 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  %263 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %264 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %263, i32 0, i32 1
  store i32 %260, i32* %264, align 4
  %265 = load i32, i32* %25, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %270

268:                                              ; preds = %259
  %269 = load i32, i32* %25, align 4
  br label %270

270:                                              ; preds = %268, %267
  %271 = phi i32 [ 1, %267 ], [ %269, %268 ]
  %272 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %273 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %277 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %278 = call i32 @tcp_options(%struct.sk_buff* %274, i32 %275, %struct.tcphdr* %276, %struct.ip_ct_tcp_state* %277)
  br label %279

279:                                              ; preds = %270, %252, %248, %242
  br label %280

280:                                              ; preds = %279, %231
  %281 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %282 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %280
  %286 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %287 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %23, align 4
  store i32 %288, i32* %22, align 4
  br label %308

289:                                              ; preds = %280
  %290 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %291 = call i32 @tcp_flag_word(%struct.tcphdr* %290)
  %292 = load i32, i32* @TCP_FLAG_ACK, align 4
  %293 = load i32, i32* @TCP_FLAG_RST, align 4
  %294 = or i32 %292, %293
  %295 = and i32 %291, %294
  %296 = load i32, i32* @TCP_FLAG_ACK, align 4
  %297 = load i32, i32* @TCP_FLAG_RST, align 4
  %298 = or i32 %296, %297
  %299 = icmp eq i32 %295, %298
  br i1 %299, label %300, label %307

300:                                              ; preds = %289
  %301 = load i32, i32* %22, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %305 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %23, align 4
  store i32 %306, i32* %22, align 4
  br label %307

307:                                              ; preds = %303, %300, %289
  br label %308

308:                                              ; preds = %307, %285
  %309 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %310 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %326

313:                                              ; preds = %308
  %314 = load i32, i32* %21, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %313
  %317 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %318 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @TCP_CONNTRACK_SYN_SENT, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  %323 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %324 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %24, align 4
  store i32 %325, i32* %21, align 4
  br label %326

326:                                              ; preds = %322, %316, %313, %308
  %327 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %328 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %20, align 8
  %329 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %328)
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %28, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %28, align 4
  %335 = load i32, i32* %25, align 4
  %336 = load i32, i32* %24, align 4
  %337 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %339 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %342 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %345 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %348 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %351 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %354 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %357 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %360 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %340, i32 %343, i32 %346, i32 %349, i32 %352, i32 %355, i32 %358, i32 %361)
  %363 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %364 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %326
  %368 = load i32, i32* %24, align 4
  %369 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %370 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %373 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %371, %374
  %376 = sub nsw i32 %375, 1
  %377 = call i32 @after(i32 %368, i32 %376)
  %378 = icmp ne i32 %377, 0
  br label %379

379:                                              ; preds = %367, %326
  %380 = phi i1 [ true, %326 ], [ %378, %367 ]
  %381 = zext i1 %380 to i32
  store i32 %381, i32* %30, align 4
  %382 = load i32, i32* %21, align 4
  %383 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %384 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 1
  %387 = call i64 @before(i32 %382, i32 %386)
  %388 = load i32, i32* %30, align 4
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i32 1, i32 0
  %392 = load i32, i32* %23, align 4
  %393 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %394 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %395, 1
  %397 = call i64 @before(i32 %392, i32 %396)
  %398 = load i32, i32* %23, align 4
  %399 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %400 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %403 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %402)
  %404 = sub nsw i32 %401, %403
  %405 = sub nsw i32 %404, 1
  %406 = call i32 @after(i32 %398, i32 %405)
  %407 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %387, i32 %391, i64 %397, i32 %406)
  %408 = load i32, i32* %21, align 4
  %409 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %410 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, 1
  %413 = call i64 @before(i32 %408, i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %631

415:                                              ; preds = %379
  %416 = load i32, i32* %30, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %631

418:                                              ; preds = %415
  %419 = load i32, i32* %23, align 4
  %420 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %421 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, 1
  %424 = call i64 @before(i32 %419, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %631

426:                                              ; preds = %418
  %427 = load i32, i32* %23, align 4
  %428 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %429 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %432 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %431)
  %433 = sub nsw i32 %430, %432
  %434 = sub nsw i32 %433, 1
  %435 = call i32 @after(i32 %427, i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %631

437:                                              ; preds = %426
  %438 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %439 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %448, label %442

442:                                              ; preds = %437
  %443 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %444 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %25, align 4
  %447 = shl i32 %446, %445
  store i32 %447, i32* %25, align 4
  br label %448

448:                                              ; preds = %442, %437
  %449 = load i32, i32* %25, align 4
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* %22, align 4
  %452 = sub nsw i32 %450, %451
  %453 = add nsw i32 %449, %452
  store i32 %453, i32* %26, align 4
  %454 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %455 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %26, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %448
  %460 = load i32, i32* %26, align 4
  %461 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %462 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %461, i32 0, i32 3
  store i32 %460, i32* %462, align 4
  br label %463

463:                                              ; preds = %459, %448
  %464 = load i32, i32* %24, align 4
  %465 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %466 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @after(i32 %464, i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %479

470:                                              ; preds = %463
  %471 = load i32, i32* %24, align 4
  %472 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %473 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %472, i32 0, i32 1
  store i32 %471, i32* %473, align 4
  %474 = load i32, i32* @IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED, align 4
  %475 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %476 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = or i32 %477, %474
  store i32 %478, i32* %476, align 4
  br label %479

479:                                              ; preds = %470, %463
  %480 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %481 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %513

484:                                              ; preds = %479
  %485 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %486 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @IP_CT_TCP_FLAG_MAXACK_SET, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %500, label %491

491:                                              ; preds = %484
  %492 = load i32, i32* %22, align 4
  %493 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %494 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %493, i32 0, i32 5
  store i32 %492, i32* %494, align 4
  %495 = load i32, i32* @IP_CT_TCP_FLAG_MAXACK_SET, align 4
  %496 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %497 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = or i32 %498, %495
  store i32 %499, i32* %497, align 4
  br label %512

500:                                              ; preds = %484
  %501 = load i32, i32* %22, align 4
  %502 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %503 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %502, i32 0, i32 5
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @after(i32 %501, i32 %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %500
  %508 = load i32, i32* %22, align 4
  %509 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %510 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %509, i32 0, i32 5
  store i32 %508, i32* %510, align 4
  br label %511

511:                                              ; preds = %507, %500
  br label %512

512:                                              ; preds = %511, %491
  br label %513

513:                                              ; preds = %512, %479
  %514 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %515 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %535

518:                                              ; preds = %513
  %519 = load i32, i32* %24, align 4
  %520 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %521 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @after(i32 %519, i32 %522)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %535

525:                                              ; preds = %518
  %526 = load i32, i32* %24, align 4
  %527 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %528 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = sub nsw i32 %526, %529
  %531 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %532 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = add nsw i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %525, %518, %513
  %536 = load i32, i32* %23, align 4
  %537 = load i32, i32* %25, align 4
  %538 = add nsw i32 %536, %537
  %539 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %540 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 4
  %542 = sub nsw i32 %541, 1
  %543 = call i32 @after(i32 %538, i32 %542)
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %559

545:                                              ; preds = %535
  %546 = load i32, i32* %23, align 4
  %547 = load i32, i32* %25, align 4
  %548 = add nsw i32 %546, %547
  %549 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %550 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 4
  %551 = load i32, i32* %25, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %545
  %554 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %555 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %555, align 4
  br label %558

558:                                              ; preds = %553, %545
  br label %559

559:                                              ; preds = %558, %535
  %560 = load i32, i32* %22, align 4
  %561 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %562 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = icmp eq i32 %560, %563
  br i1 %564, label %565, label %572

565:                                              ; preds = %559
  %566 = load i32, i32* @IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED, align 4
  %567 = xor i32 %566, -1
  %568 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %569 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = and i32 %570, %567
  store i32 %571, i32* %569, align 4
  br label %572

572:                                              ; preds = %565, %559
  %573 = load i32, i32* %12, align 4
  %574 = load i32, i32* @TCP_ACK_SET, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %630

576:                                              ; preds = %572
  %577 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %578 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 8
  %580 = load i32, i32* %11, align 4
  %581 = icmp eq i32 %579, %580
  br i1 %581, label %582, label %611

582:                                              ; preds = %576
  %583 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %584 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* %21, align 4
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %588, label %611

588:                                              ; preds = %582
  %589 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %590 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %589, i32 0, i32 3
  %591 = load i32, i32* %590, align 8
  %592 = load i32, i32* %22, align 4
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %611

594:                                              ; preds = %588
  %595 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %596 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %595, i32 0, i32 4
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* %24, align 4
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %600, label %611

600:                                              ; preds = %594
  %601 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %602 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %601, i32 0, i32 5
  %603 = load i64, i64* %602, align 8
  %604 = load i64, i64* %27, align 8
  %605 = icmp eq i64 %603, %604
  br i1 %605, label %606, label %611

606:                                              ; preds = %600
  %607 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %608 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %607, i32 0, i32 6
  %609 = load i64, i64* %608, align 8
  %610 = add nsw i64 %609, 1
  store i64 %610, i64* %608, align 8
  br label %629

611:                                              ; preds = %600, %594, %588, %582, %576
  %612 = load i32, i32* %11, align 4
  %613 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %614 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %613, i32 0, i32 1
  store i32 %612, i32* %614, align 8
  %615 = load i32, i32* %21, align 4
  %616 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %617 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %616, i32 0, i32 2
  store i32 %615, i32* %617, align 4
  %618 = load i32, i32* %22, align 4
  %619 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %620 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %619, i32 0, i32 3
  store i32 %618, i32* %620, align 8
  %621 = load i32, i32* %24, align 4
  %622 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %623 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %622, i32 0, i32 4
  store i32 %621, i32* %623, align 4
  %624 = load i64, i64* %27, align 8
  %625 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %626 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %625, i32 0, i32 5
  store i64 %624, i64* %626, align 8
  %627 = load %struct.ip_ct_tcp*, %struct.ip_ct_tcp** %10, align 8
  %628 = getelementptr inbounds %struct.ip_ct_tcp, %struct.ip_ct_tcp* %627, i32 0, i32 6
  store i64 0, i64* %628, align 8
  br label %629

629:                                              ; preds = %611, %606
  br label %630

630:                                              ; preds = %629, %572
  store i32 1, i32* %29, align 4
  br label %692

631:                                              ; preds = %426, %418, %415, %379
  store i32 0, i32* %29, align 4
  %632 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %633 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %636 = and i32 %634, %635
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %643, label %638

638:                                              ; preds = %631
  %639 = load %struct.nf_tcp_net*, %struct.nf_tcp_net** %17, align 8
  %640 = getelementptr inbounds %struct.nf_tcp_net, %struct.nf_tcp_net* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %638, %631
  store i32 1, i32* %29, align 4
  br label %644

644:                                              ; preds = %643, %638
  %645 = load i32, i32* %29, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %691, label %647

647:                                              ; preds = %644
  %648 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %649 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %650 = load i32, i32* %21, align 4
  %651 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %652 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %651, i32 0, i32 2
  %653 = load i32, i32* %652, align 4
  %654 = add nsw i32 %653, 1
  %655 = call i64 @before(i32 %650, i32 %654)
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %687

657:                                              ; preds = %647
  %658 = load i32, i32* %30, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %684

660:                                              ; preds = %657
  %661 = load i32, i32* %23, align 4
  %662 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %663 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = add nsw i32 %664, 1
  %666 = call i64 @before(i32 %661, i32 %665)
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %681

668:                                              ; preds = %660
  %669 = load i32, i32* %23, align 4
  %670 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %671 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %674 = call i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state* %673)
  %675 = sub nsw i32 %672, %674
  %676 = sub nsw i32 %675, 1
  %677 = call i32 @after(i32 %669, i32 %676)
  %678 = icmp ne i32 %677, 0
  %679 = zext i1 %678 to i64
  %680 = select i1 %678, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0)
  br label %682

681:                                              ; preds = %660
  br label %682

682:                                              ; preds = %681, %668
  %683 = phi i8* [ %680, %668 ], [ getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), %681 ]
  br label %685

684:                                              ; preds = %657
  br label %685

685:                                              ; preds = %684, %682
  %686 = phi i8* [ %683, %682 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), %684 ]
  br label %688

687:                                              ; preds = %647
  br label %688

688:                                              ; preds = %687, %685
  %689 = phi i8* [ %686, %685 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), %687 ]
  %690 = call i32 @nf_ct_l4proto_log_invalid(%struct.sk_buff* %648, %struct.nf_conn* %649, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %689)
  br label %691

691:                                              ; preds = %688, %644
  br label %692

692:                                              ; preds = %691, %630
  %693 = load i32, i32* %29, align 4
  %694 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %695 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %698 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %697, i32 0, i32 2
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %18, align 8
  %701 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %700, i32 0, i32 3
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %704 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %707 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 4
  %709 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %19, align 8
  %710 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %709, i32 0, i32 3
  %711 = load i32, i32* %710, align 4
  %712 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0), i32 %693, i32 %696, i32 %699, i32 %702, i32 %705, i32 %708, i32 %711)
  %713 = load i32, i32* %29, align 4
  store i32 %713, i32* %8, align 4
  br label %714

714:                                              ; preds = %692, %193
  %715 = load i32, i32* %8, align 4
  ret i32 %715
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.nf_tcp_net* @nf_tcp_pernet(%struct.net*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @segment_seq_plus_len(i32, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @tcp_sack(%struct.sk_buff*, i32, %struct.tcphdr*, i32*) #1

declare dso_local i32 @nf_ct_seq_offset(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

declare dso_local i32 @tcp_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*) #1

declare dso_local i32 @after(i32, i32) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @MAXACKWINDOW(%struct.ip_ct_tcp_state*) #1

declare dso_local i32 @nf_ct_l4proto_log_invalid(%struct.sk_buff*, %struct.nf_conn*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
