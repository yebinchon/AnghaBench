; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i64, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Too large msg, purging xmit list %d %d %d %d %d!\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s<%s>, link overflow\00", align 1
@link_rst_msg = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TIPC_BC_RETR_LIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_xmit(%struct.tipc_link* %0, %struct.sk_buff_head* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sk_buff_head*, align 8
  %16 = alloca %struct.sk_buff_head*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.sk_buff**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %23 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %22)
  %24 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %23)
  store %struct.tipc_msg* %24, %struct.tipc_msg** %8, align 8
  %25 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %26 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %29 = call i32 @msg_importance(%struct.tipc_msg* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  store i64 %36, i64* %12, align 8
  %37 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %38 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %40, i32 0, i32 11
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %14, align 8
  %46 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %47 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %46, i32 0, i32 10
  store %struct.sk_buff_head* %47, %struct.sk_buff_head** %15, align 8
  %48 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %49 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %48, i32 0, i32 9
  store %struct.sk_buff_head* %49, %struct.sk_buff_head** %16, align 8
  %50 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %51 = call i32 @skb_queue_len(%struct.sk_buff_head* %50)
  store i32 %51, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %53 = call i32 @msg_size(%struct.tipc_msg* %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ugt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %3
  %60 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %61 = call i32 @skb_queue_len(%struct.sk_buff_head* %60)
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %63 = call i32 @msg_user(%struct.tipc_msg* %62)
  %64 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %65 = call i32 @msg_type(%struct.tipc_msg* %64)
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %67 = call i32 @msg_size(%struct.tipc_msg* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %65, i32 %67, i32 %68)
  %70 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %71 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %70)
  %72 = load i32, i32* @EMSGSIZE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %283

74:                                               ; preds = %3
  %75 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %76 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %84 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %83, i32 0, i32 3
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %82, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %74
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @TIPC_SYSTEM_IMPORTANCE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* @link_rst_msg, align 4
  %101 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %102 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load i32, i32* @ENOBUFS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %283

107:                                              ; preds = %95
  %108 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %109 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %110 = call i32 @link_schedule_user(%struct.tipc_link* %108, %struct.tipc_msg* %109)
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %107, %74
  %112 = load i32, i32* %20, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %116 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %122 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %120
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %114, %111
  br label %127

127:                                              ; preds = %255, %228, %210, %177, %126
  %128 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %129 = call i32 @skb_queue_len(%struct.sk_buff_head* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %278

131:                                              ; preds = %127
  %132 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %133 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %17, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %135 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %134)
  store %struct.tipc_msg* %135, %struct.tipc_msg** %8, align 8
  %136 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @msg_set_seqno(%struct.tipc_msg* %136, i64 %137)
  %139 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @msg_set_ack(%struct.tipc_msg* %139, i64 %140)
  %142 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %143 = load i64, i64* %14, align 8
  %144 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %142, i64 %143)
  %145 = load %struct.sk_buff_head*, %struct.sk_buff_head** %15, align 8
  %146 = call i32 @skb_queue_len(%struct.sk_buff_head* %145)
  %147 = load i32, i32* %9, align 4
  %148 = icmp ult i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @likely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %196

152:                                              ; preds = %131
  %153 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %154 = load i32, i32* @GFP_ATOMIC, align 4
  %155 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %153, i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %18, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %157 = icmp ne %struct.sk_buff* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %152
  %159 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %160 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %159)
  %161 = load i32, i32* @ENOBUFS, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %283

163:                                              ; preds = %152
  %164 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %165 = call i32 @__skb_dequeue(%struct.sk_buff_head* %164)
  %166 = load %struct.sk_buff_head*, %struct.sk_buff_head** %15, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %168 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %166, %struct.sk_buff* %167)
  %169 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %170 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load i32, i32* @TIPC_BC_RETR_LIM, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %175 = call %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %163
  %178 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %180 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %178, %struct.sk_buff* %179)
  %181 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %182 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %185 = call %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff* %184)
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  %187 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %188 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %187, i32 0, i32 6
  store i64 0, i64* %188, align 8
  %189 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %190 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load i64, i64* %13, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %13, align 8
  br label %127

196:                                              ; preds = %131
  %197 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %198 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %197, i32 0, i32 3
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  store %struct.sk_buff** %203, %struct.sk_buff*** %19, align 8
  %204 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %204, align 8
  %206 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i64 @tipc_msg_bundle(%struct.sk_buff* %205, %struct.tipc_msg* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %196
  %211 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %212 = call i32 @__skb_dequeue(%struct.sk_buff_head* %211)
  %213 = call i32 @kfree_skb(i32 %212)
  %214 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %215 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %127

219:                                              ; preds = %196
  %220 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %221 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %224 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @tipc_msg_make_bundle(%struct.sk_buff** %220, %struct.tipc_msg* %221, i32 %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %255

228:                                              ; preds = %219
  %229 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %230 = call i32 @__skb_dequeue(%struct.sk_buff_head* %229)
  %231 = call i32 @kfree_skb(i32 %230)
  %232 = load %struct.sk_buff_head*, %struct.sk_buff_head** %16, align 8
  %233 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %233, align 8
  %235 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %232, %struct.sk_buff* %234)
  %236 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %237 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %236, i32 0, i32 3
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %242, align 8
  %245 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %246 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  %250 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %251 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %127

255:                                              ; preds = %219
  %256 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %257 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %256, i32 0, i32 3
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %262, align 8
  %263 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %264 = call i32 @skb_queue_len(%struct.sk_buff_head* %263)
  %265 = zext i32 %264 to i64
  %266 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %267 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %266, i32 0, i32 3
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %265
  store i64 %274, i64* %272, align 8
  %275 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %276 = load %struct.sk_buff_head*, %struct.sk_buff_head** %16, align 8
  %277 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %275, %struct.sk_buff_head* %276)
  br label %127

278:                                              ; preds = %127
  %279 = load i64, i64* %13, align 8
  %280 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %281 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %280, i32 0, i32 2
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* %21, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %278, %158, %99, %59
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @link_schedule_user(%struct.tipc_link*, %struct.tipc_msg*) #1

declare dso_local i32 @msg_set_seqno(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @link_is_bc_sndlink(%struct.tipc_link*) #1

declare dso_local %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tipc_msg_bundle(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i64 @tipc_msg_make_bundle(%struct.sk_buff**, %struct.tipc_msg*, i32, i32) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
