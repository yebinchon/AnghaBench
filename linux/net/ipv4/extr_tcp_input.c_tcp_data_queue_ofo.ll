; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_data_queue_ofo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_data_queue_ofo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.rb_node, i32 }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.tcp_sock = type { %struct.sk_buff*, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_12__ = type { %struct.rb_node* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@LINUX_MIB_TCPOFODROP = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@LINUX_MIB_TCPOFOQUEUE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPOFOMERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_data_queue_ofo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_data_queue_ofo(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.rb_node**, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @tcp_ecn_check_ce(%struct.sock* %14, %struct.sk_buff* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @tcp_try_rmem_schedule(%struct.sock* %17, %struct.sk_buff* %18, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @sock_net(%struct.sock* %26)
  %28 = load i32, i32* @LINUX_MIB_TCPOFODROP, align 4
  %29 = call i32 @NET_INC_STATS(i32 %27, i32 %28)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @tcp_drop(%struct.sock* %30, %struct.sk_buff* %31)
  br label %331

33:                                               ; preds = %2
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @inet_csk_schedule_ack(%struct.sock* %36)
  %38 = load i32, i32* @u16, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @max_t(i32 %38, i32 1, i32 %42)
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @sock_net(%struct.sock* %50)
  %52 = load i32, i32* @LINUX_MIB_TCPOFOQUEUE, align 4
  %53 = call i32 @NET_INC_STATS(i32 %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store %struct.rb_node** %64, %struct.rb_node*** %6, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 1
  %67 = call i64 @RB_EMPTY_ROOT(%struct.TYPE_12__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %33
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %71 = call i64 @tcp_is_sack(%struct.tcp_sock* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i8* %77, i8** %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i8* %83, i8** %88, align 8
  br label %89

89:                                               ; preds = %73, %69
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %93 = call i32 @rb_link_node(%struct.rb_node* %91, %struct.rb_node* null, %struct.rb_node** %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %96, i32 0, i32 1
  %98 = call i32 @rb_insert_color(%struct.rb_node* %95, %struct.TYPE_12__* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 0
  store %struct.sk_buff* %99, %struct.sk_buff** %101, align 8
  br label %319

102:                                              ; preds = %33
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  %106 = load %struct.sk_buff*, %struct.sk_buff** %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i64 @tcp_ooo_try_coalesce(%struct.sock* %103, %struct.sk_buff* %106, %struct.sk_buff* %107, i32* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %231, %110
  %112 = load %struct.sock*, %struct.sock** %3, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @tcp_grow_window(%struct.sock* %112, %struct.sk_buff* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @kfree_skb_partial(%struct.sk_buff* %115, i32 %116)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %309

118:                                              ; preds = %102
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 0
  %122 = load %struct.sk_buff*, %struct.sk_buff** %121, align 8
  %123 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @before(i8* %119, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %118
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 0
  %131 = load %struct.sk_buff*, %struct.sk_buff** %130, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  store %struct.rb_node* %132, %struct.rb_node** %7, align 8
  %133 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %134 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %133, i32 0, i32 0
  store %struct.rb_node** %134, %struct.rb_node*** %6, align 8
  br label %237

135:                                              ; preds = %118
  store %struct.rb_node* null, %struct.rb_node** %7, align 8
  br label %136

136:                                              ; preds = %233, %152, %135
  %137 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %138 = load %struct.rb_node*, %struct.rb_node** %137, align 8
  %139 = icmp ne %struct.rb_node* %138, null
  br i1 %139, label %140, label %236

140:                                              ; preds = %136
  %141 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %142 = load %struct.rb_node*, %struct.rb_node** %141, align 8
  store %struct.rb_node* %142, %struct.rb_node** %7, align 8
  %143 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %144 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %143)
  store %struct.sk_buff* %144, %struct.sk_buff** %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @before(i8* %145, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %154 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %153, i32 0, i32 1
  store %struct.rb_node** %154, %struct.rb_node*** %6, align 8
  br label %136

155:                                              ; preds = %140
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @before(i8* %156, i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %225

163:                                              ; preds = %155
  %164 = load i8*, i8** %10, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %165)
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @after(i8* %164, i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %163
  %172 = load %struct.sock*, %struct.sock** %3, align 8
  %173 = call i32 @sock_net(%struct.sock* %172)
  %174 = load i32, i32* @LINUX_MIB_TCPOFOMERGE, align 4
  %175 = call i32 @NET_INC_STATS(i32 %173, i32 %174)
  %176 = load %struct.sock*, %struct.sock** %3, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = call i32 @tcp_drop(%struct.sock* %176, %struct.sk_buff* %177)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %179 = load %struct.sock*, %struct.sock** %3, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 @tcp_dsack_set(%struct.sock* %179, i8* %180, i8* %181)
  br label %309

183:                                              ; preds = %163
  %184 = load i8*, i8** %9, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %185)
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @after(i8* %184, i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.sock*, %struct.sock** %3, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %194)
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @tcp_dsack_set(%struct.sock* %192, i8* %193, i8* %197)
  br label %224

199:                                              ; preds = %183
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 0
  %204 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %204, i32 0, i32 1
  %206 = call i32 @rb_replace_node(%struct.rb_node* %201, %struct.rb_node* %203, %struct.TYPE_12__* %205)
  %207 = load %struct.sock*, %struct.sock** %3, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %213 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %212)
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @tcp_dsack_extend(%struct.sock* %207, i8* %211, i8* %215)
  %217 = load %struct.sock*, %struct.sock** %3, align 8
  %218 = call i32 @sock_net(%struct.sock* %217)
  %219 = load i32, i32* @LINUX_MIB_TCPOFOMERGE, align 4
  %220 = call i32 @NET_INC_STATS(i32 %218, i32 %219)
  %221 = load %struct.sock*, %struct.sock** %3, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %223 = call i32 @tcp_drop(%struct.sock* %221, %struct.sk_buff* %222)
  br label %248

224:                                              ; preds = %191
  br label %233

225:                                              ; preds = %155
  %226 = load %struct.sock*, %struct.sock** %3, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = call i64 @tcp_ooo_try_coalesce(%struct.sock* %226, %struct.sk_buff* %227, %struct.sk_buff* %228, i32* %11)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  br label %111

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %224
  %234 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %235 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %234, i32 0, i32 0
  store %struct.rb_node** %235, %struct.rb_node*** %6, align 8
  br label %136

236:                                              ; preds = %136
  br label %237

237:                                              ; preds = %236, %128
  %238 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  %240 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %241 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %242 = call i32 @rb_link_node(%struct.rb_node* %239, %struct.rb_node* %240, %struct.rb_node** %241)
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %246 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %245, i32 0, i32 1
  %247 = call i32 @rb_insert_color(%struct.rb_node* %244, %struct.TYPE_12__* %246)
  br label %248

248:                                              ; preds = %237, %199
  br label %249

249:                                              ; preds = %278, %248
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = call %struct.sk_buff* @skb_rb_next(%struct.sk_buff* %250)
  store %struct.sk_buff* %251, %struct.sk_buff** %8, align 8
  %252 = icmp ne %struct.sk_buff* %251, null
  br i1 %252, label %253, label %301

253:                                              ; preds = %249
  %254 = load i8*, i8** %10, align 8
  %255 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %256 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %255)
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i64 @after(i8* %254, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %253
  br label %301

262:                                              ; preds = %253
  %263 = load i8*, i8** %10, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %265 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %264)
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @before(i8* %263, i8* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %262
  %271 = load %struct.sock*, %struct.sock** %3, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %273 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %272)
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = call i32 @tcp_dsack_extend(%struct.sock* %271, i8* %275, i8* %276)
  br label %301

278:                                              ; preds = %262
  %279 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 0
  %281 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %282 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %281, i32 0, i32 1
  %283 = call i32 @rb_erase(%struct.rb_node* %280, %struct.TYPE_12__* %282)
  %284 = load %struct.sock*, %struct.sock** %3, align 8
  %285 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %286 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %285)
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %290 = call %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff* %289)
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @tcp_dsack_extend(%struct.sock* %284, i8* %288, i8* %292)
  %294 = load %struct.sock*, %struct.sock** %3, align 8
  %295 = call i32 @sock_net(%struct.sock* %294)
  %296 = load i32, i32* @LINUX_MIB_TCPOFOMERGE, align 4
  %297 = call i32 @NET_INC_STATS(i32 %295, i32 %296)
  %298 = load %struct.sock*, %struct.sock** %3, align 8
  %299 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %300 = call i32 @tcp_drop(%struct.sock* %298, %struct.sk_buff* %299)
  br label %249

301:                                              ; preds = %270, %261, %249
  %302 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %303 = icmp ne %struct.sk_buff* %302, null
  br i1 %303, label %308, label %304

304:                                              ; preds = %301
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %307 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %306, i32 0, i32 0
  store %struct.sk_buff* %305, %struct.sk_buff** %307, align 8
  br label %308

308:                                              ; preds = %304, %301
  br label %309

309:                                              ; preds = %308, %171, %111
  %310 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %311 = call i64 @tcp_is_sack(%struct.tcp_sock* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  %314 = load %struct.sock*, %struct.sock** %3, align 8
  %315 = load i8*, i8** %9, align 8
  %316 = load i8*, i8** %10, align 8
  %317 = call i32 @tcp_sack_new_ofo_skb(%struct.sock* %314, i8* %315, i8* %316)
  br label %318

318:                                              ; preds = %313, %309
  br label %319

319:                                              ; preds = %318, %89
  %320 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %321 = icmp ne %struct.sk_buff* %320, null
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load %struct.sock*, %struct.sock** %3, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %325 = call i32 @tcp_grow_window(%struct.sock* %323, %struct.sk_buff* %324)
  %326 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %327 = call i32 @skb_condense(%struct.sk_buff* %326)
  %328 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %329 = load %struct.sock*, %struct.sock** %3, align 8
  %330 = call i32 @skb_set_owner_r(%struct.sk_buff* %328, %struct.sock* %329)
  br label %331

331:                                              ; preds = %25, %322, %319
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_ecn_check_ce(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_try_rmem_schedule(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_drop(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i64 @max_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_13__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @RB_EMPTY_ROOT(%struct.TYPE_12__*) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(%struct.rb_node*, %struct.TYPE_12__*) #1

declare dso_local i64 @tcp_ooo_try_coalesce(%struct.sock*, %struct.sk_buff*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @tcp_grow_window(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb_partial(%struct.sk_buff*, i32) #1

declare dso_local i64 @before(i8*, i8*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i64 @after(i8*, i8*) #1

declare dso_local i32 @tcp_dsack_set(%struct.sock*, i8*, i8*) #1

declare dso_local i32 @rb_replace_node(%struct.rb_node*, %struct.rb_node*, %struct.TYPE_12__*) #1

declare dso_local i32 @tcp_dsack_extend(%struct.sock*, i8*, i8*) #1

declare dso_local %struct.sk_buff* @skb_rb_next(%struct.sk_buff*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, %struct.TYPE_12__*) #1

declare dso_local i32 @tcp_sack_new_ofo_skb(%struct.sock*, i8*, i8*) #1

declare dso_local i32 @skb_condense(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
