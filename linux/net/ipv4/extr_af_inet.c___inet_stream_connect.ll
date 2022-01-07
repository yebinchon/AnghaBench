; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c___inet_stream_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c___inet_stream_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__inet_stream_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %20 = icmp ne %struct.sockaddr* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %235

28:                                               ; preds = %21
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_UNSPEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %12, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 %39(%struct.sock* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @SS_DISCONNECTING, align 4
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 128, %47 ]
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %205

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %5
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %57 [
    i32 130, label %60
    i32 129, label %63
    i32 128, label %84
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %205

60:                                               ; preds = %53
  %61 = load i32, i32* @EISCONN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %205

63:                                               ; preds = %53
  %64 = load %struct.sock*, %struct.sock** %12, align 8
  %65 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EINPROGRESS, align 4
  %74 = sub nsw i32 0, %73
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EISCONN, align 4
  %77 = sub nsw i32 0, %76
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  store i32 %79, i32* %13, align 4
  br label %83

80:                                               ; preds = %63
  %81 = load i32, i32* @EALREADY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %78
  br label %139

84:                                               ; preds = %53
  %85 = load i32, i32* @EISCONN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.sock*, %struct.sock** %12, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TCP_CLOSE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %205

93:                                               ; preds = %84
  %94 = load %struct.sock*, %struct.sock** %12, align 8
  %95 = call i32 @BPF_CGROUP_PRE_CONNECT_ENABLED(%struct.sock* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load %struct.sock*, %struct.sock** %12, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %101, align 8
  %103 = load %struct.sock*, %struct.sock** %12, align 8
  %104 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 %102(%struct.sock* %103, %struct.sockaddr* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %205

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.sock*, %struct.sock** %12, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %115, align 8
  %117 = load %struct.sock*, %struct.sock** %12, align 8
  %118 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 %116(%struct.sock* %117, %struct.sockaddr* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %205

124:                                              ; preds = %111
  %125 = load %struct.socket*, %struct.socket** %7, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 0
  store i32 129, i32* %126, align 8
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = load %struct.sock*, %struct.sock** %12, align 8
  %131 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %205

136:                                              ; preds = %129, %124
  %137 = load i32, i32* @EINPROGRESS, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %136, %83
  %140 = load %struct.sock*, %struct.sock** %12, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @O_NONBLOCK, align 4
  %143 = and i32 %141, %142
  %144 = call i64 @sock_sndtimeo(%struct.sock* %140, i32 %143)
  store i64 %144, i64* %14, align 8
  %145 = load %struct.sock*, %struct.sock** %12, align 8
  %146 = getelementptr inbounds %struct.sock, %struct.sock* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = shl i32 1, %147
  %149 = load i32, i32* @TCPF_SYN_SENT, align 4
  %150 = load i32, i32* @TCPF_SYN_RECV, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %139
  %155 = load %struct.sock*, %struct.sock** %12, align 8
  %156 = getelementptr inbounds %struct.sock, %struct.sock* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IPPROTO_TCP, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %154
  %161 = load %struct.sock*, %struct.sock** %12, align 8
  %162 = call %struct.TYPE_7__* @tcp_sk(%struct.sock* %161)
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.sock*, %struct.sock** %12, align 8
  %168 = call %struct.TYPE_7__* @tcp_sk(%struct.sock* %167)
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %166, %160, %154
  %175 = phi i1 [ false, %160 ], [ false, %154 ], [ %173, %166 ]
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  store i32 %177, i32* %15, align 4
  %178 = load i64, i64* %14, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load %struct.sock*, %struct.sock** %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @inet_wait_for_connect(%struct.sock* %181, i64 %182, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %180, %174
  br label %205

187:                                              ; preds = %180
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @sock_intr_errno(i64 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* @current, align 4
  %191 = call i64 @signal_pending(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %205

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %139
  %196 = load %struct.sock*, %struct.sock** %12, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TCP_CLOSE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %207

202:                                              ; preds = %195
  %203 = load %struct.socket*, %struct.socket** %7, align 8
  %204 = getelementptr inbounds %struct.socket, %struct.socket* %203, i32 0, i32 0
  store i32 130, i32* %204, align 8
  store i32 0, i32* %13, align 4
  br label %205

205:                                              ; preds = %234, %202, %193, %186, %135, %123, %109, %92, %60, %57, %48
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %6, align 4
  br label %235

207:                                              ; preds = %201
  %208 = load %struct.sock*, %struct.sock** %12, align 8
  %209 = call i64 @sock_error(%struct.sock* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %216

212:                                              ; preds = %207
  %213 = load i32, i32* @ECONNABORTED, align 4
  %214 = sub nsw i32 0, %213
  %215 = sext i32 %214 to i64
  br label %216

216:                                              ; preds = %212, %211
  %217 = phi i64 [ %209, %211 ], [ %215, %212 ]
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %13, align 4
  %219 = load %struct.socket*, %struct.socket** %7, align 8
  %220 = getelementptr inbounds %struct.socket, %struct.socket* %219, i32 0, i32 0
  store i32 128, i32* %220, align 8
  %221 = load %struct.sock*, %struct.sock** %12, align 8
  %222 = getelementptr inbounds %struct.sock, %struct.sock* %221, i32 0, i32 2
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %224, align 8
  %226 = load %struct.sock*, %struct.sock** %12, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 %225(%struct.sock* %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %216
  %231 = load i32, i32* @SS_DISCONNECTING, align 4
  %232 = load %struct.socket*, %struct.socket** %7, align 8
  %233 = getelementptr inbounds %struct.socket, %struct.socket* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %216
  br label %205

235:                                              ; preds = %205, %25
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @BPF_CGROUP_PRE_CONNECT_ENABLED(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_7__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @inet_wait_for_connect(%struct.sock*, i64, i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sock_error(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
