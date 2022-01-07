; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_state_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i64, i32, i64, i32 }
%struct.tcp_options_received = type { i64, i64, i8*, i64, i64 }
%struct.tcp_timewait_sock = type { i64, i64, i64, i64, i8*, i64 }
%struct.sock = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@TCP_FIN_WAIT2 = common dso_local global i64 0, align 8
@LINUX_MIB_TCPACKSKIPPEDFINWAIT2 = common dso_local global i32 0, align 4
@TCP_TW_RST = common dso_local global i32 0, align 4
@TCP_TW_SUCCESS = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@TCP_TW_ACK = common dso_local global i32 0, align 4
@TCP_TW_SYN = common dso_local global i32 0, align 4
@LINUX_MIB_PAWSESTABREJECTED = common dso_local global i32 0, align 4
@LINUX_MIB_TCPACKSKIPPEDTIMEWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_timewait_state_process(%struct.inet_timewait_sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.tcp_options_received, align 8
  %9 = alloca %struct.tcp_timewait_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %13 = bitcast %struct.inet_timewait_sock* %12 to %struct.sock*
  %14 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %13)
  store %struct.tcp_timewait_sock* %14, %struct.tcp_timewait_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %19, 10
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %23 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %28 = call %struct.TYPE_7__* @twsk_net(%struct.inet_timewait_sock* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @tcp_parse_options(%struct.TYPE_7__* %28, %struct.sk_buff* %29, %struct.tcp_options_received* %8, i32 0, i32* null)
  %31 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %41
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %38, %34
  %46 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %47 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  %50 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %51 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %55 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tcp_paws_reject(%struct.tcp_options_received* %8, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %45, %26
  br label %59

59:                                               ; preds = %58, %21, %3
  %60 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %61 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCP_FIN_WAIT2, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %189

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %78 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %81 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %84 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 @tcp_in_window(i64 %72, i64 %76, i64 %79, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %68, %65
  %90 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load i32, i32* @LINUX_MIB_TCPACKSKIPPEDFINWAIT2, align 4
  %93 = call i32 @tcp_timewait_check_oow_rate_limit(%struct.inet_timewait_sock* %90, %struct.sk_buff* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %345

94:                                               ; preds = %68
  %95 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %229

100:                                              ; preds = %94
  %101 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %111 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @before(i64 %109, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* @TCP_TW_RST, align 4
  store i32 %116, i32* %4, align 4
  br label %345

117:                                              ; preds = %105, %100
  %118 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %119 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %128 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @after(i64 %126, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %122
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %136, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %132, %122, %117
  %143 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %144 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %143)
  %145 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %145, i32* %4, align 4
  br label %345

146:                                              ; preds = %132
  %147 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %148 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %157 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  %160 = icmp ne i64 %155, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %151, %146
  %162 = load i32, i32* @TCP_TW_RST, align 4
  store i32 %162, i32* %4, align 4
  br label %345

163:                                              ; preds = %151
  %164 = load i64, i64* @TCP_TIME_WAIT, align 8
  %165 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %166 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %172 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %163
  %177 = call i8* (...) @ktime_get_seconds()
  %178 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %179 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %183 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %176, %163
  %185 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %186 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %187 = call i32 @inet_twsk_reschedule(%struct.inet_timewait_sock* %185, i32 %186)
  %188 = load i32, i32* @TCP_TW_ACK, align 4
  store i32 %188, i32* %4, align 4
  br label %345

189:                                              ; preds = %59
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %254, label %192

192:                                              ; preds = %189
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %193)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %198 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %196, %199
  br i1 %200, label %201, label %254

201:                                              ; preds = %192
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %206)
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %205, %209
  br i1 %210, label %216, label %211

211:                                              ; preds = %201
  %212 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %254

216:                                              ; preds = %211, %201
  %217 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %223 = call %struct.TYPE_7__* @twsk_net(%struct.inet_timewait_sock* %222)
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228, %99
  %230 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %231 = call i32 @inet_twsk_deschedule_put(%struct.inet_timewait_sock* %230)
  %232 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %232, i32* %4, align 4
  br label %345

233:                                              ; preds = %221
  br label %238

234:                                              ; preds = %216
  %235 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %236 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %237 = call i32 @inet_twsk_reschedule(%struct.inet_timewait_sock* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %233
  %239 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %246 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %245, i32 0, i32 3
  store i64 %244, i64* %246, align 8
  %247 = call i8* (...) @ktime_get_seconds()
  %248 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %249 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %242, %238
  %251 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %252 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %251)
  %253 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %253, i32* %4, align 4
  br label %345

254:                                              ; preds = %211, %192, %189
  %255 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %256 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %311

259:                                              ; preds = %254
  %260 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %311, label %264

264:                                              ; preds = %259
  %265 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %266 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %311, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %10, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %311, label %272

272:                                              ; preds = %269
  %273 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %274 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %273)
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %278 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i64 @after(i64 %276, i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %272
  %283 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %311

286:                                              ; preds = %282
  %287 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %288 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %289, %291
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %286, %272
  %295 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %9, align 8
  %296 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, 65535
  %299 = add nsw i64 %298, 2
  store i64 %299, i64* %11, align 8
  %300 = load i64, i64* %11, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %294
  %303 = load i64, i64* %11, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %11, align 8
  br label %305

305:                                              ; preds = %302, %294
  %306 = load i64, i64* %11, align 8
  %307 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %308 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %307)
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 2
  store i64 %306, i64* %309, align 8
  %310 = load i32, i32* @TCP_TW_SYN, align 4
  store i32 %310, i32* %4, align 4
  br label %345

311:                                              ; preds = %286, %282, %269, %264, %259, %254
  %312 = load i32, i32* %10, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %316 = call %struct.TYPE_7__* @twsk_net(%struct.inet_timewait_sock* %315)
  %317 = load i32, i32* @LINUX_MIB_PAWSESTABREJECTED, align 4
  %318 = call i32 @__NET_INC_STATS(%struct.TYPE_7__* %316, i32 %317)
  br label %319

319:                                              ; preds = %314, %311
  %320 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %321 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %341, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %329 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %327, %324
  %333 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %334 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %335 = call i32 @inet_twsk_reschedule(%struct.inet_timewait_sock* %333, i32 %334)
  br label %336

336:                                              ; preds = %332, %327
  %337 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %339 = load i32, i32* @LINUX_MIB_TCPACKSKIPPEDTIMEWAIT, align 4
  %340 = call i32 @tcp_timewait_check_oow_rate_limit(%struct.inet_timewait_sock* %337, %struct.sk_buff* %338, i32 %339)
  store i32 %340, i32* %4, align 4
  br label %345

341:                                              ; preds = %319
  %342 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %343 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %342)
  %344 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %341, %336, %305, %250, %229, %184, %161, %142, %115, %89
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_parse_options(%struct.TYPE_7__*, %struct.sk_buff*, %struct.tcp_options_received*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @twsk_net(%struct.inet_timewait_sock*) #1

declare dso_local i32 @tcp_paws_reject(%struct.tcp_options_received*, i32) #1

declare dso_local i32 @tcp_in_window(i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_timewait_check_oow_rate_limit(%struct.inet_timewait_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @before(i64, i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

declare dso_local i8* @ktime_get_seconds(...) #1

declare dso_local i32 @inet_twsk_reschedule(%struct.inet_timewait_sock*, i32) #1

declare dso_local i32 @inet_twsk_deschedule_put(%struct.inet_timewait_sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
