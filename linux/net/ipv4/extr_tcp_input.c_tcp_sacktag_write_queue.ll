; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_write_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_write_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sacktag_state = type { i32, i32, i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i64, i64, %struct.tcp_sack_block*, i32, i32, i32 }
%struct.tcp_sack_block = type { i64, i64 }
%struct.tcp_sack_block_wire = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@TCP_NUM_SACKS = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i8 0, align 1
@FLAG_DSACKING_ACK = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKIGNOREDNOUNDO = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKIGNOREDOLD = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSACKDISCARD = common dso_local global i32 0, align 4
@TCP_CA_Loss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i64, %struct.tcp_sacktag_state*)* @tcp_sacktag_write_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sacktag_write_queue(%struct.sock* %0, %struct.sk_buff* %1, i64 %2, %struct.tcp_sacktag_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcp_sacktag_state*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tcp_sack_block_wire*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tcp_sack_block*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.tcp_sack_block*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.tcp_sacktag_state* %3, %struct.tcp_sacktag_state** %9, align 8
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %30)
  store %struct.tcp_sock* %31, %struct.tcp_sock** %10, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i8* @skb_transport_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = bitcast i8* %41 to %struct.tcp_sack_block_wire*
  store %struct.tcp_sack_block_wire* %42, %struct.tcp_sack_block_wire** %12, align 8
  %43 = load i32, i32* @TCP_NUM_SACKS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %13, align 8
  %46 = alloca %struct.tcp_sack_block, i64 %44, align 16
  store i64 %44, i64* %14, align 8
  %47 = load i32, i32* @TCP_NUM_SACKS, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @TCPOLEN_SACK_BASE, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %51, %53
  %55 = ashr i32 %54, 3
  %56 = trunc i32 %55 to i8
  %57 = call i32 @min(i32 %47, i8 zeroext %56)
  store i32 %57, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %58 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %59 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %64 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %4
  %70 = load %struct.sock*, %struct.sock** %6, align 8
  %71 = call i32 @tcp_highest_sack_reset(%struct.sock* %70)
  br label %72

72:                                               ; preds = %69, %4
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %12, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @tcp_check_dsack(%struct.sock* %73, %struct.sk_buff* %74, %struct.tcp_sack_block_wire* %75, i32 %76, i64 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load i32, i32* @FLAG_DSACKING_ACK, align 4
  %83 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %84 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %81, %72
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %98 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = call i64 @before(i64 %95, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %563

104:                                              ; preds = %91
  %105 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %559

110:                                              ; preds = %104
  store i32 0, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %218, %110
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %221

115:                                              ; preds = %111
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %24, align 4
  %124 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %12, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %124, i64 %126
  %128 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %127, i32 0, i32 1
  %129 = call i8* @get_unaligned_be32(i32* %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %132
  %134 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %133, i32 0, i32 0
  store i64 %130, i64* %134, align 16
  %135 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %12, align 8
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %135, i64 %137
  %139 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %138, i32 0, i32 0
  %140 = call i8* @get_unaligned_be32(i32* %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %143
  %145 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %144, i32 0, i32 1
  store i64 %141, i64* %145, align 8
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %149
  %151 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 16
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %154
  %156 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @tcp_is_sackblock_valid(%struct.tcp_sock* %146, i32 %147, i64 %152, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %205, label %160

160:                                              ; preds = %121
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @LINUX_MIB_TCPDSACKIGNOREDNOUNDO, align 4
  store i32 %169, i32* %25, align 4
  br label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @LINUX_MIB_TCPDSACKIGNOREDOLD, align 4
  store i32 %171, i32* %25, align 4
  br label %172

172:                                              ; preds = %170, %168
  br label %196

173:                                              ; preds = %160
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %175 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %173
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %184
  %186 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @after(i64 %187, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %182
  br label %218

194:                                              ; preds = %182, %173
  %195 = load i32, i32* @LINUX_MIB_TCPSACKDISCARD, align 4
  store i32 %195, i32* %25, align 4
  br label %196

196:                                              ; preds = %194, %172
  %197 = load %struct.sock*, %struct.sock** %6, align 8
  %198 = call i32 @sock_net(%struct.sock* %197)
  %199 = load i32, i32* %25, align 4
  %200 = call i32 @NET_INC_STATS(i32 %198, i32 %199)
  %201 = load i32, i32* %20, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i32 -1, i32* %22, align 4
  br label %204

204:                                              ; preds = %203, %196
  br label %218

205:                                              ; preds = %121
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %207
  %209 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %8, align 8
  %212 = call i64 @after(i64 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %205
  br label %218

215:                                              ; preds = %205
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %218

218:                                              ; preds = %215, %214, %204, %193
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %20, align 4
  br label %111

221:                                              ; preds = %111
  %222 = load i32, i32* %18, align 4
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %277, %221
  %225 = load i32, i32* %20, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %280

227:                                              ; preds = %224
  store i32 0, i32* %21, align 4
  br label %228

228:                                              ; preds = %273, %227
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %276

232:                                              ; preds = %228
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %234
  %236 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 16
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %240
  %242 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 16
  %244 = call i64 @after(i64 %237, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %272

246:                                              ; preds = %232
  %247 = load i32, i32* %21, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %248
  %250 = load i32, i32* %21, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %252
  %254 = bitcast %struct.tcp_sack_block* %249 to { i64, i64 }*
  %255 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 16
  %257 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = bitcast %struct.tcp_sack_block* %253 to { i64, i64 }*
  %260 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 16
  %262 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %259, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @swap(i64 %256, i64 %258, i64 %261, i64 %263)
  %265 = load i32, i32* %21, align 4
  %266 = load i32, i32* %22, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %246
  %269 = load i32, i32* %21, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %22, align 4
  br label %271

271:                                              ; preds = %268, %246
  br label %272

272:                                              ; preds = %271, %232
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %21, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %21, align 4
  br label %228

276:                                              ; preds = %228
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %20, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %20, align 4
  br label %224

280:                                              ; preds = %224
  %281 = load %struct.sock*, %struct.sock** %6, align 8
  %282 = call i32 @tcp_current_mss(%struct.sock* %281)
  %283 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %284 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  store i32 0, i32* %20, align 4
  %285 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %286 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %299, label %289

289:                                              ; preds = %280
  %290 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %291 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %290, i32 0, i32 6
  %292 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %291, align 8
  %293 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %294 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %293, i32 0, i32 6
  %295 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %294, align 8
  %296 = call i32 @ARRAY_SIZE(%struct.tcp_sack_block* %295)
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %292, i64 %297
  store %struct.tcp_sack_block* %298, %struct.tcp_sack_block** %15, align 8
  br label %325

299:                                              ; preds = %280
  %300 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %301 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %300, i32 0, i32 6
  %302 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %301, align 8
  store %struct.tcp_sack_block* %302, %struct.tcp_sack_block** %15, align 8
  br label %303

303:                                              ; preds = %321, %299
  %304 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %305 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %306 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %304, %struct.tcp_sack_block* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %303
  %309 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %310 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %308
  %314 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %315 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  %318 = xor i1 %317, true
  br label %319

319:                                              ; preds = %313, %308, %303
  %320 = phi i1 [ false, %308 ], [ false, %303 ], [ %318, %313 ]
  br i1 %320, label %321, label %324

321:                                              ; preds = %319
  %322 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %323 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %322, i32 1
  store %struct.tcp_sack_block* %323, %struct.tcp_sack_block** %15, align 8
  br label %303

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324, %289
  br label %326

326:                                              ; preds = %486, %450, %325
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %18, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %489

330:                                              ; preds = %326
  %331 = load i32, i32* %20, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %332
  %334 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 16
  store i64 %335, i64* %26, align 8
  %336 = load i32, i32* %20, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %337
  %339 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %27, align 8
  %341 = load i32, i32* %19, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %330
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %22, align 4
  %346 = icmp eq i32 %344, %345
  br label %347

347:                                              ; preds = %343, %330
  %348 = phi i1 [ false, %330 ], [ %346, %343 ]
  %349 = zext i1 %348 to i32
  store i32 %349, i32* %28, align 4
  store %struct.tcp_sack_block* null, %struct.tcp_sack_block** %29, align 8
  %350 = load i32, i32* %19, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %347
  %353 = load i32, i32* %20, align 4
  %354 = add nsw i32 %353, 1
  %355 = load i32, i32* %22, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load i32, i32* %20, align 4
  %359 = add nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %360
  store %struct.tcp_sack_block* %361, %struct.tcp_sack_block** %29, align 8
  br label %362

362:                                              ; preds = %357, %352, %347
  br label %363

363:                                              ; preds = %378, %362
  %364 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %365 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %366 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %364, %struct.tcp_sack_block* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %363
  %369 = load i64, i64* %26, align 8
  %370 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %371 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = call i64 @before(i64 %369, i64 %372)
  %374 = icmp ne i64 %373, 0
  %375 = xor i1 %374, true
  br label %376

376:                                              ; preds = %368, %363
  %377 = phi i1 [ false, %363 ], [ %375, %368 ]
  br i1 %377, label %378, label %381

378:                                              ; preds = %376
  %379 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %380 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %379, i32 1
  store %struct.tcp_sack_block* %380, %struct.tcp_sack_block** %15, align 8
  br label %363

381:                                              ; preds = %376
  %382 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %383 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %384 = call i64 @tcp_sack_cache_ok(%struct.tcp_sock* %382, %struct.tcp_sack_block* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %459

386:                                              ; preds = %381
  %387 = load i32, i32* %28, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %459, label %389

389:                                              ; preds = %386
  %390 = load i64, i64* %27, align 8
  %391 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %392 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = call i64 @after(i64 %390, i64 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %459

396:                                              ; preds = %389
  %397 = load i64, i64* %26, align 8
  %398 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %399 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = call i64 @before(i64 %397, i64 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %418

403:                                              ; preds = %396
  %404 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %405 = load %struct.sock*, %struct.sock** %6, align 8
  %406 = load i64, i64* %26, align 8
  %407 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %404, %struct.sock* %405, i64 %406)
  store %struct.sk_buff* %407, %struct.sk_buff** %16, align 8
  %408 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %409 = load %struct.sock*, %struct.sock** %6, align 8
  %410 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %411 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %412 = load i64, i64* %26, align 8
  %413 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %414 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load i32, i32* %28, align 4
  %417 = call %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff* %408, %struct.sock* %409, %struct.tcp_sack_block* %410, %struct.tcp_sacktag_state* %411, i64 %412, i64 %415, i32 %416)
  store %struct.sk_buff* %417, %struct.sk_buff** %16, align 8
  br label %418

418:                                              ; preds = %403, %396
  %419 = load i64, i64* %27, align 8
  %420 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %421 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = call i64 @after(i64 %419, i64 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %418
  br label %486

426:                                              ; preds = %418
  %427 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %428 = load %struct.sock*, %struct.sock** %6, align 8
  %429 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %430 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %431 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %432 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = call %struct.sk_buff* @tcp_maybe_skipping_dsack(%struct.sk_buff* %427, %struct.sock* %428, %struct.tcp_sack_block* %429, %struct.tcp_sacktag_state* %430, i64 %433)
  store %struct.sk_buff* %434, %struct.sk_buff** %16, align 8
  %435 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %436 = call i64 @tcp_highest_sack_seq(%struct.tcp_sock* %435)
  %437 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %438 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp eq i64 %436, %439
  br i1 %440, label %441, label %450

441:                                              ; preds = %426
  %442 = load %struct.sock*, %struct.sock** %6, align 8
  %443 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %442)
  store %struct.sk_buff* %443, %struct.sk_buff** %16, align 8
  %444 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %445 = icmp ne %struct.sk_buff* %444, null
  br i1 %445, label %447, label %446

446:                                              ; preds = %441
  br label %489

447:                                              ; preds = %441
  %448 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %449 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %448, i32 1
  store %struct.tcp_sack_block* %449, %struct.tcp_sack_block** %15, align 8
  br label %477

450:                                              ; preds = %426
  %451 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %452 = load %struct.sock*, %struct.sock** %6, align 8
  %453 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %454 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %451, %struct.sock* %452, i64 %455)
  store %struct.sk_buff* %456, %struct.sk_buff** %16, align 8
  %457 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %15, align 8
  %458 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %457, i32 1
  store %struct.tcp_sack_block* %458, %struct.tcp_sack_block** %15, align 8
  br label %326

459:                                              ; preds = %389, %386, %381
  %460 = load i64, i64* %26, align 8
  %461 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %462 = call i64 @tcp_highest_sack_seq(%struct.tcp_sock* %461)
  %463 = call i64 @before(i64 %460, i64 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %472, label %465

465:                                              ; preds = %459
  %466 = load %struct.sock*, %struct.sock** %6, align 8
  %467 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %466)
  store %struct.sk_buff* %467, %struct.sk_buff** %16, align 8
  %468 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %469 = icmp ne %struct.sk_buff* %468, null
  br i1 %469, label %471, label %470

470:                                              ; preds = %465
  br label %489

471:                                              ; preds = %465
  br label %472

472:                                              ; preds = %471, %459
  %473 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %474 = load %struct.sock*, %struct.sock** %6, align 8
  %475 = load i64, i64* %26, align 8
  %476 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %473, %struct.sock* %474, i64 %475)
  store %struct.sk_buff* %476, %struct.sk_buff** %16, align 8
  br label %477

477:                                              ; preds = %472, %447
  %478 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %479 = load %struct.sock*, %struct.sock** %6, align 8
  %480 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %29, align 8
  %481 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %482 = load i64, i64* %26, align 8
  %483 = load i64, i64* %27, align 8
  %484 = load i32, i32* %28, align 4
  %485 = call %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff* %478, %struct.sock* %479, %struct.tcp_sack_block* %480, %struct.tcp_sacktag_state* %481, i64 %482, i64 %483, i32 %484)
  store %struct.sk_buff* %485, %struct.sk_buff** %16, align 8
  br label %486

486:                                              ; preds = %477, %425
  %487 = load i32, i32* %20, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %20, align 4
  br label %326

489:                                              ; preds = %470, %446, %326
  store i32 0, i32* %20, align 4
  br label %490

490:                                              ; preds = %514, %489
  %491 = load i32, i32* %20, align 4
  %492 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %493 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %492, i32 0, i32 6
  %494 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %493, align 8
  %495 = call i32 @ARRAY_SIZE(%struct.tcp_sack_block* %494)
  %496 = load i32, i32* %18, align 4
  %497 = sub nsw i32 %495, %496
  %498 = icmp slt i32 %491, %497
  br i1 %498, label %499, label %517

499:                                              ; preds = %490
  %500 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %501 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %500, i32 0, i32 6
  %502 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %501, align 8
  %503 = load i32, i32* %20, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %502, i64 %504
  %506 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %505, i32 0, i32 0
  store i64 0, i64* %506, align 8
  %507 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %508 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %507, i32 0, i32 6
  %509 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %508, align 8
  %510 = load i32, i32* %20, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %509, i64 %511
  %513 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %512, i32 0, i32 1
  store i64 0, i64* %513, align 8
  br label %514

514:                                              ; preds = %499
  %515 = load i32, i32* %20, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %20, align 4
  br label %490

517:                                              ; preds = %490
  store i32 0, i32* %21, align 4
  br label %518

518:                                              ; preds = %535, %517
  %519 = load i32, i32* %21, align 4
  %520 = load i32, i32* %18, align 4
  %521 = icmp slt i32 %519, %520
  br i1 %521, label %522, label %538

522:                                              ; preds = %518
  %523 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %524 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %523, i32 0, i32 6
  %525 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %524, align 8
  %526 = load i32, i32* %20, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %20, align 4
  %528 = sext i32 %526 to i64
  %529 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %525, i64 %528
  %530 = load i32, i32* %21, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %46, i64 %531
  %533 = bitcast %struct.tcp_sack_block* %529 to i8*
  %534 = bitcast %struct.tcp_sack_block* %532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %533, i8* align 16 %534, i64 16, i1 false)
  br label %535

535:                                              ; preds = %522
  %536 = load i32, i32* %21, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %21, align 4
  br label %518

538:                                              ; preds = %518
  %539 = load %struct.sock*, %struct.sock** %6, align 8
  %540 = call %struct.TYPE_3__* @inet_csk(%struct.sock* %539)
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @TCP_CA_Loss, align 8
  %544 = icmp ne i64 %542, %543
  br i1 %544, label %550, label %545

545:                                              ; preds = %538
  %546 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %547 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %546, i32 0, i32 5
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %545, %538
  %551 = load %struct.sock*, %struct.sock** %6, align 8
  %552 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %553 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @tcp_check_sack_reordering(%struct.sock* %551, i32 %554, i32 0)
  br label %556

556:                                              ; preds = %550, %545
  %557 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %558 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %557)
  br label %559

559:                                              ; preds = %556, %109
  %560 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %9, align 8
  %561 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  store i32 %562, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %563

563:                                              ; preds = %559, %103
  %564 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %564)
  %565 = load i32, i32* %5, align 4
  ret i32 %565
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @min(i32, i8 zeroext) #1

declare dso_local i32 @tcp_highest_sack_reset(%struct.sock*) #1

declare dso_local i32 @tcp_check_dsack(%struct.sock*, %struct.sk_buff*, %struct.tcp_sack_block_wire*, i32, i64) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i8* @get_unaligned_be32(i32*) #1

declare dso_local i32 @tcp_is_sackblock_valid(%struct.tcp_sock*, i32, i64, i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @swap(i64, i64, i64, i64) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tcp_sack_block*) #1

declare dso_local i64 @tcp_sack_cache_ok(%struct.tcp_sock*, %struct.tcp_sack_block*) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff*, %struct.sock*, i64) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff*, %struct.sock*, %struct.tcp_sack_block*, %struct.tcp_sacktag_state*, i64, i64, i32) #1

declare dso_local %struct.sk_buff* @tcp_maybe_skipping_dsack(%struct.sk_buff*, %struct.sock*, %struct.tcp_sack_block*, %struct.tcp_sacktag_state*, i64) #1

declare dso_local i64 @tcp_highest_sack_seq(%struct.tcp_sock*) #1

declare dso_local %struct.sk_buff* @tcp_highest_sack(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_3__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_check_sack_reordering(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
