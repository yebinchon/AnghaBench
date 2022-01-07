; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i32, i32, i32, i32, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@DN_O = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DN_CR = common dso_local global i64 0, align 8
@NSP_FC_MASK = common dso_local global i32 0, align 4
@NSP_FC_NONE = common dso_local global i32 0, align 4
@decnet_no_fc_max_cwnd = common dso_local global i32 0, align 4
@SDF_WILD = common dso_local global i32 0, align 4
@DN_MENUVER_ACC = common dso_local global i8 0, align 1
@DN_MENUVER_USR = common dso_local global i8 0, align 1
@DN_MENUVER_PRX = common dso_local global i8 0, align 1
@SDF_PROXY = common dso_local global i32 0, align 4
@DN_MENUVER_UIC = common dso_local global i8 0, align 1
@SDF_UICPROXY = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ACC_IMMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @dn_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.dn_skb_cb*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca %struct.dst_entry*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @sock_rcvtimeo(%struct.sock* %22, i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_LISTEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %4
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DN_O, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %4
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %326

46:                                               ; preds = %34
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 3
  %49 = call %struct.sk_buff* @skb_dequeue(i32* %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %12, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = icmp eq %struct.sk_buff* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = call %struct.sk_buff* @dn_wait_for_connect(%struct.sock* %53, i64* %17)
  store %struct.sk_buff* %54, %struct.sk_buff** %12, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = call i64 @IS_ERR(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @release_sock(%struct.sock* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = call i32 @PTR_ERR(%struct.sk_buff* %61)
  store i32 %62, i32* %5, align 4
  br label %326

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %65)
  store %struct.dn_skb_cb* %66, %struct.dn_skb_cb** %13, align 8
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sock*, %struct.sock** %10, align 8
  %72 = call i32 @sock_net(%struct.sock* %71)
  %73 = load %struct.socket*, %struct.socket** %7, align 8
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.sock* @dn_alloc_sock(i32 %72, %struct.socket* %73, i32 %76, i32 %77)
  store %struct.sock* %78, %struct.sock** %11, align 8
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = icmp eq %struct.sock* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %64
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  %83 = call i32 @release_sock(%struct.sock* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  %86 = load i32, i32* @ENOBUFS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %326

88:                                               ; preds = %64
  %89 = load %struct.sock*, %struct.sock** %10, align 8
  %90 = call i32 @release_sock(%struct.sock* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %92 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %91)
  store %struct.dst_entry* %92, %struct.dst_entry** %18, align 8
  %93 = load %struct.sock*, %struct.sock** %11, align 8
  %94 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %95 = call i32 @sk_dst_set(%struct.sock* %93, %struct.dst_entry* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = call i32 @skb_dst_set(%struct.sk_buff* %96, i32* null)
  %98 = load i64, i64* @DN_CR, align 8
  %99 = load %struct.sock*, %struct.sock** %11, align 8
  %100 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %99)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %103 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sock*, %struct.sock** %11, align 8
  %106 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 12
  store i32 %104, i32* %107, align 8
  %108 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %109 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sock*, %struct.sock** %11, align 8
  %112 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %115 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sock*, %struct.sock** %11, align 8
  %118 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 11
  store i32 %116, i32* %119, align 4
  %120 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %121 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sock*, %struct.sock** %11, align 8
  %124 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.sock*, %struct.sock** %10, align 8
  %127 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.sock*, %struct.sock** %11, align 8
  %131 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i64 %129, i64* %132, align 8
  %133 = load %struct.sock*, %struct.sock** %11, align 8
  %134 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 230
  br i1 %137, label %138, label %142

138:                                              ; preds = %88
  %139 = load %struct.sock*, %struct.sock** %11, align 8
  %140 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %139)
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 230, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %88
  %143 = load %struct.sock*, %struct.sock** %11, align 8
  %144 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %143)
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NSP_FC_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @NSP_FC_NONE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load i32, i32* @decnet_no_fc_max_cwnd, align 4
  %153 = load %struct.sock*, %struct.sock** %11, align 8
  %154 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %153)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 10
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %142
  %157 = load i64, i64* @TCP_LISTEN, align 8
  %158 = load %struct.sock*, %struct.sock** %11, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.sock*, %struct.sock** %11, align 8
  %161 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  %163 = load %struct.sock*, %struct.sock** %10, align 8
  %164 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 9
  %166 = call i32 @memcpy(%struct.TYPE_7__* %162, %struct.TYPE_7__* %165, i32 4)
  %167 = load i32, i32* @SDF_WILD, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.sock*, %struct.sock** %11, align 8
  %170 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %169)
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %168
  store i32 %174, i32* %172, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.sock*, %struct.sock** %11, align 8
  %183 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %182)
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 9
  %185 = call i32 @dn_username2sockaddr(i8* %178, i32 %181, %struct.TYPE_7__* %184, i8* %16)
  %186 = call i32 @skb_pull(%struct.sk_buff* %175, i32 %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.sock*, %struct.sock** %11, align 8
  %195 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %194)
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 6
  %197 = call i32 @dn_username2sockaddr(i8* %190, i32 %193, %struct.TYPE_7__* %196, i8* %16)
  %198 = call i32 @skb_pull(%struct.sk_buff* %187, i32 %197)
  %199 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %200 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.sock*, %struct.sock** %11, align 8
  %203 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %202)
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  store i32 %201, i32* %208, align 4
  %209 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %13, align 8
  %210 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sock*, %struct.sock** %11, align 8
  %213 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %212)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 9
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  store i32 %211, i32* %218, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i8, i8* %221, align 1
  store i8 %222, i8* %14, align 1
  %223 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %224 = call i32 @skb_pull(%struct.sk_buff* %223, i32 1)
  %225 = load i8, i8* %14, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* @DN_MENUVER_ACC, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %226, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %156
  %232 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %233 = load %struct.sock*, %struct.sock** %11, align 8
  %234 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %233)
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 8
  %236 = call i32 @dn_access_copy(%struct.sk_buff* %232, i32* %235)
  br label %237

237:                                              ; preds = %231, %156
  %238 = load i8, i8* %14, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8, i8* @DN_MENUVER_USR, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %239, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %246 = load %struct.sock*, %struct.sock** %11, align 8
  %247 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %246)
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 7
  %249 = call i32 @dn_user_copy(%struct.sk_buff* %245, i32* %248)
  br label %250

250:                                              ; preds = %244, %237
  %251 = load i8, i8* %14, align 1
  %252 = zext i8 %251 to i32
  %253 = load i8, i8* @DN_MENUVER_PRX, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %250
  %258 = load i32, i32* @SDF_PROXY, align 4
  %259 = load %struct.sock*, %struct.sock** %11, align 8
  %260 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %259)
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %258
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %257, %250
  %266 = load i8, i8* %14, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, i8* @DN_MENUVER_UIC, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %267, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %265
  %273 = load i32, i32* @SDF_UICPROXY, align 4
  %274 = load %struct.sock*, %struct.sock** %11, align 8
  %275 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %274)
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %273
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %272, %265
  %281 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %282 = call i32 @kfree_skb(%struct.sk_buff* %281)
  %283 = load %struct.sock*, %struct.sock** %11, align 8
  %284 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %283)
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 5
  %286 = load %struct.sock*, %struct.sock** %10, align 8
  %287 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %286)
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 5
  %289 = call i32 @memcpy(%struct.TYPE_7__* %285, %struct.TYPE_7__* %288, i32 4)
  %290 = load %struct.sock*, %struct.sock** %11, align 8
  %291 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %290)
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 4
  %293 = load %struct.sock*, %struct.sock** %10, align 8
  %294 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %293)
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 4
  %296 = call i32 @memcpy(%struct.TYPE_7__* %292, %struct.TYPE_7__* %295, i32 4)
  %297 = load %struct.sock*, %struct.sock** %11, align 8
  %298 = call i32 @lock_sock(%struct.sock* %297)
  %299 = load %struct.sock*, %struct.sock** %11, align 8
  %300 = call i32 @dn_hash_sock(%struct.sock* %299)
  store i32 %300, i32* %15, align 4
  %301 = load i32, i32* %15, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %322

303:                                              ; preds = %280
  %304 = load %struct.sock*, %struct.sock** %11, align 8
  %305 = load i32, i32* @SOCK_ZAPPED, align 4
  %306 = call i32 @sock_reset_flag(%struct.sock* %304, i32 %305)
  %307 = load %struct.sock*, %struct.sock** %11, align 8
  %308 = call i32 @dn_send_conn_ack(%struct.sock* %307)
  %309 = load %struct.sock*, %struct.sock** %11, align 8
  %310 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %309)
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @ACC_IMMED, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %303
  %316 = load %struct.sock*, %struct.sock** %11, align 8
  %317 = load %struct.sock*, %struct.sock** %10, align 8
  %318 = getelementptr inbounds %struct.sock, %struct.sock* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @dn_confirm_accept(%struct.sock* %316, i64* %17, i32 %319)
  store i32 %320, i32* %15, align 4
  br label %321

321:                                              ; preds = %315, %303
  br label %322

322:                                              ; preds = %321, %280
  %323 = load %struct.sock*, %struct.sock** %11, align 8
  %324 = call i32 @release_sock(%struct.sock* %323)
  %325 = load i32, i32* %15, align 4
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %322, %81, %58, %41
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @DN_SK(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @dn_wait_for_connect(%struct.sock*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sock* @dn_alloc_sock(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @sk_dst_set(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_username2sockaddr(i8*, i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dn_access_copy(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dn_user_copy(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dn_hash_sock(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_send_conn_ack(%struct.sock*) #1

declare dso_local i32 @dn_confirm_accept(%struct.sock*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
