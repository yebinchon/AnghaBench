; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_stream_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_stream_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32 (%struct.sock*)*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.scm_cookie = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.socket*, %struct.page*, i32, i64, i32)* @unix_stream_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unix_stream_sendpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scm_cookie, align 4
  %16 = alloca %struct.sock*, align 8
  %17 = alloca %struct.sock*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %17, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %20, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MSG_OOB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i64, i64* @EOPNOTSUPP, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %6, align 8
  br label %250

31:                                               ; preds = %5
  %32 = load %struct.sock*, %struct.sock** %17, align 8
  %33 = call %struct.sock* @unix_peer(%struct.sock* %32)
  store %struct.sock* %33, %struct.sock** %16, align 8
  %34 = load %struct.sock*, %struct.sock** %16, align 8
  %35 = icmp ne %struct.sock* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sock*, %struct.sock** %17, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_ESTABLISHED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %31
  %43 = load i64, i64* @ENOTCONN, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %6, align 8
  br label %250

45:                                               ; preds = %36
  br i1 false, label %46, label %63

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %163, %145, %46
  %48 = load %struct.sock*, %struct.sock** %16, align 8
  %49 = call i32 @unix_state_unlock(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %16, align 8
  %51 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.sock*, %struct.sock** %17, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  %57 = and i32 %55, %56
  %58 = call %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %54, i32 0, i32 0, i32 %57, i32* %12, i32 0)
  store %struct.sk_buff* %58, %struct.sk_buff** %19, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  br label %228

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.sock*, %struct.sock** %16, align 8
  %65 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock_interruptible(i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @MSG_DONTWAIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  br label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @ERESTARTSYS, align 4
  %80 = sub nsw i32 0, %79
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  store i32 %82, i32* %12, align 4
  br label %228

83:                                               ; preds = %63
  %84 = load %struct.sock*, %struct.sock** %17, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SEND_SHUTDOWN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @EPIPE, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %223

93:                                               ; preds = %83
  %94 = load %struct.sock*, %struct.sock** %16, align 8
  %95 = call i32 @unix_state_lock(%struct.sock* %94)
  %96 = load %struct.sock*, %struct.sock** %16, align 8
  %97 = load i32, i32* @SOCK_DEAD, align 4
  %98 = call i64 @sock_flag(%struct.sock* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.sock*, %struct.sock** %16, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @RCV_SHUTDOWN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100, %93
  %108 = load i32, i32* @EPIPE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %220

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.socket*, %struct.socket** %7, align 8
  %115 = load %struct.sock*, %struct.sock** %16, align 8
  %116 = call i32 @maybe_init_creds(%struct.scm_cookie* %15, %struct.socket* %114, %struct.sock* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %220

120:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %120, %110
  %122 = load %struct.sock*, %struct.sock** %16, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 3
  %124 = call %struct.sk_buff* @skb_peek_tail(%struct.TYPE_5__* %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %18, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %130 = icmp eq %struct.sk_buff* %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %132, %struct.sk_buff** %18, align 8
  br label %156

133:                                              ; preds = %127, %121
  %134 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %135 = icmp ne %struct.sk_buff* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %138 = call i32 @unix_skb_scm_eq(%struct.sk_buff* %137, %struct.scm_cookie* %15)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %136, %133
  %141 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %144, %struct.sk_buff** %18, align 8
  br label %147

145:                                              ; preds = %140
  %146 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %146, %struct.sk_buff** %20, align 8
  br label %47

147:                                              ; preds = %143
  br label %155

148:                                              ; preds = %136
  %149 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %153 = call i32 @consume_skb(%struct.sk_buff* %152)
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %147
  br label %156

156:                                              ; preds = %155, %131
  %157 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %158 = load %struct.page*, %struct.page** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i64, i64* %10, align 8
  %161 = call i64 @skb_append_pagefrags(%struct.sk_buff* %157, %struct.page* %158, i32 %159, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %164, %struct.sk_buff** %20, align 8
  br label %47

165:                                              ; preds = %156
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %10, align 8
  %182 = load %struct.sock*, %struct.sock** %17, align 8
  %183 = getelementptr inbounds %struct.sock, %struct.sock* %182, i32 0, i32 4
  %184 = call i32 @refcount_add(i64 %181, i32* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %186 = icmp ne %struct.sk_buff* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %165
  %188 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %189 = call i32 @unix_scm_to_skb(%struct.scm_cookie* %15, %struct.sk_buff* %188, i32 0)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %220

193:                                              ; preds = %187
  %194 = load %struct.sock*, %struct.sock** %16, align 8
  %195 = getelementptr inbounds %struct.sock, %struct.sock* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = call i32 @spin_lock(i32* %196)
  %198 = load %struct.sock*, %struct.sock** %16, align 8
  %199 = getelementptr inbounds %struct.sock, %struct.sock* %198, i32 0, i32 3
  %200 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %201 = call i32 @__skb_queue_tail(%struct.TYPE_5__* %199, %struct.sk_buff* %200)
  %202 = load %struct.sock*, %struct.sock** %16, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock(i32* %204)
  br label %206

206:                                              ; preds = %193, %165
  %207 = load %struct.sock*, %struct.sock** %16, align 8
  %208 = call i32 @unix_state_unlock(%struct.sock* %207)
  %209 = load %struct.sock*, %struct.sock** %16, align 8
  %210 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %209)
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = load %struct.sock*, %struct.sock** %16, align 8
  %214 = getelementptr inbounds %struct.sock, %struct.sock* %213, i32 0, i32 2
  %215 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %214, align 8
  %216 = load %struct.sock*, %struct.sock** %16, align 8
  %217 = call i32 %215(%struct.sock* %216)
  %218 = call i32 @scm_destroy(%struct.scm_cookie* %15)
  %219 = load i64, i64* %10, align 8
  store i64 %219, i64* %6, align 8
  br label %250

220:                                              ; preds = %192, %119, %107
  %221 = load %struct.sock*, %struct.sock** %16, align 8
  %222 = call i32 @unix_state_unlock(%struct.sock* %221)
  br label %223

223:                                              ; preds = %220, %90
  %224 = load %struct.sock*, %struct.sock** %16, align 8
  %225 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = call i32 @mutex_unlock(i32* %226)
  br label %228

228:                                              ; preds = %223, %81, %61
  %229 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %230 = call i32 @kfree_skb(%struct.sk_buff* %229)
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @MSG_NOSIGNAL, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @SIGPIPE, align 4
  %240 = load i32, i32* @current, align 4
  %241 = call i32 @send_sig(i32 %239, i32 %240, i32 0)
  br label %242

242:                                              ; preds = %238, %233, %228
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = call i32 @scm_destroy(%struct.scm_cookie* %15)
  br label %247

247:                                              ; preds = %245, %242
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %6, align 8
  br label %250

250:                                              ; preds = %247, %206, %42, %28
  %251 = load i64, i64* %6, align 8
  ret i64 %251
}

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_4__* @unix_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @maybe_init_creds(%struct.scm_cookie*, %struct.socket*, %struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.TYPE_5__*) #1

declare dso_local i32 @unix_skb_scm_eq(%struct.sk_buff*, %struct.scm_cookie*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_append_pagefrags(%struct.sk_buff*, %struct.page*, i32, i64) #1

declare dso_local i32 @refcount_add(i64, i32*) #1

declare dso_local i32 @unix_scm_to_skb(%struct.scm_cookie*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scm_destroy(%struct.scm_cookie*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
