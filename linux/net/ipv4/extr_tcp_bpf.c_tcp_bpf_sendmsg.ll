; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sk_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sk_psock = type { i64, %struct.sk_msg*, i32 }

@MSG_SENDPAGE_DECRYPTED = common dso_local global i32 0, align 4
@MSG_NO_SHARED_FRAGS = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@__SK_NONE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64)* @tcp_bpf_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_msg, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_psock*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_msg* null, %struct.sk_msg** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSG_SENDPAGE_DECRYPTED, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @MSG_NO_SHARED_FRAGS, align 4
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %14, align 4
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %27)
  store %struct.sk_psock* %28, %struct.sk_psock** %12, align 8
  %29 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %30 = icmp ne %struct.sk_psock* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @tcp_sendmsg(%struct.sock* %36, %struct.msghdr* %37, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %236

40:                                               ; preds = %3
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call i32 @lock_sock(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MSG_DONTWAIT, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @sock_sndtimeo(%struct.sock* %43, i32 %48)
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %210, %183, %40
  %51 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %52 = call i64 @msg_data_left(%struct.msghdr* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %211

54:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %212

64:                                               ; preds = %54
  %65 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %66 = call i64 @msg_data_left(%struct.msghdr* %65)
  store i64 %66, i64* %16, align 8
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = call i32 @sk_stream_memory_free(%struct.sock* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %184

71:                                               ; preds = %64
  %72 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %73 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %72, i32 0, i32 1
  %74 = load %struct.sk_msg*, %struct.sk_msg** %73, align 8
  %75 = icmp ne %struct.sk_msg* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %78 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %77, i32 0, i32 1
  %79 = load %struct.sk_msg*, %struct.sk_msg** %78, align 8
  store %struct.sk_msg* %79, %struct.sk_msg** %9, align 8
  br label %83

80:                                               ; preds = %71
  store %struct.sk_msg* %8, %struct.sk_msg** %9, align 8
  %81 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %82 = call i32 @sk_msg_init(%struct.sk_msg* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %85 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %17, align 8
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %90 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %91 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %97 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @sk_msg_alloc(%struct.sock* %88, %struct.sk_msg* %89, i64 %95, i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %83
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %191

110:                                              ; preds = %104
  store i32 1, i32* %15, align 4
  %111 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %112 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %17, align 8
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %16, align 8
  br label %117

117:                                              ; preds = %110, %83
  %118 = load %struct.sock*, %struct.sock** %5, align 8
  %119 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %119, i32 0, i32 1
  %121 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @sk_msg_memcopy_from_iter(%struct.sock* %118, i32* %120, %struct.sk_msg* %121, i64 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.sock*, %struct.sock** %5, align 8
  %128 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @sk_msg_trim(%struct.sock* %127, %struct.sk_msg* %128, i64 %129)
  br label %212

131:                                              ; preds = %117
  %132 = load i64, i64* %16, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %10, align 4
  %137 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %138 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %171

141:                                              ; preds = %131
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %144 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %149 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %156

150:                                              ; preds = %141
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %153 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, %151
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %150, %147
  %157 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %158 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %212

165:                                              ; preds = %161, %156
  %166 = load i32, i32* @__SK_NONE, align 4
  %167 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %168 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %170 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %131
  %172 = load %struct.sock*, %struct.sock** %5, align 8
  %173 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %174 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @tcp_bpf_send_verdict(%struct.sock* %172, %struct.sk_psock* %173, %struct.sk_msg* %174, i32* %10, i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %212

183:                                              ; preds = %171
  br label %50

184:                                              ; preds = %70
  %185 = load i32, i32* @SOCK_NOSPACE, align 4
  %186 = load %struct.sock*, %struct.sock** %5, align 8
  %187 = getelementptr inbounds %struct.sock, %struct.sock* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = call i32 @set_bit(i32 %185, i32* %189)
  br label %191

191:                                              ; preds = %184, %109
  %192 = load %struct.sock*, %struct.sock** %5, align 8
  %193 = call i32 @sk_stream_wait_memory(%struct.sock* %192, i64* %13)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %198 = icmp ne %struct.sk_msg* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %201 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %202 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %201, i32 0, i32 1
  %203 = load %struct.sk_msg*, %struct.sk_msg** %202, align 8
  %204 = icmp ne %struct.sk_msg* %200, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.sock*, %struct.sock** %5, align 8
  %207 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %208 = call i32 @sk_msg_free(%struct.sock* %206, %struct.sk_msg* %207)
  br label %209

209:                                              ; preds = %205, %199, %196
  br label %212

210:                                              ; preds = %191
  br label %50

211:                                              ; preds = %50
  br label %212

212:                                              ; preds = %211, %209, %182, %164, %126, %59
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.sock*, %struct.sock** %5, align 8
  %217 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %218 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @sk_stream_error(%struct.sock* %216, i32 %219, i32 %220)
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %215, %212
  %223 = load %struct.sock*, %struct.sock** %5, align 8
  %224 = call i32 @release_sock(%struct.sock* %223)
  %225 = load %struct.sock*, %struct.sock** %5, align 8
  %226 = load %struct.sk_psock*, %struct.sk_psock** %12, align 8
  %227 = call i32 @sk_psock_put(%struct.sock* %225, %struct.sk_psock* %226)
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i32, i32* %10, align 4
  br label %234

232:                                              ; preds = %222
  %233 = load i32, i32* %11, align 4
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i32 [ %231, %230 ], [ %233, %232 ]
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %35
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_sendmsg(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @sk_msg_init(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_alloc(%struct.sock*, %struct.sk_msg*, i64, i64) #1

declare dso_local i32 @sk_msg_memcopy_from_iter(%struct.sock*, i32*, %struct.sk_msg*, i64) #1

declare dso_local i32 @sk_msg_trim(%struct.sock*, %struct.sk_msg*, i64) #1

declare dso_local i32 @tcp_bpf_send_verdict(%struct.sock*, %struct.sk_psock*, %struct.sk_msg*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sk_stream_wait_memory(%struct.sock*, i64*) #1

declare dso_local i32 @sk_msg_free(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @sk_stream_error(%struct.sock*, i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
