; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@TCP_LISTEN = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@TCP_URG_VALID = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %10, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sock_poll_wait(%struct.file* %18, %struct.socket* %19, i32* %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call i32 @inet_sk_state_load(%struct.sock* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @TCP_LISTEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = call i32 @inet_csk_listen_poll(%struct.sock* %28)
  store i32 %29, i32* %4, align 4
  br label %202

30:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SHUTDOWN_MASK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @TCP_CLOSE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %30
  %41 = load i32, i32* @EPOLLHUP, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.sock*, %struct.sock** %9, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RCV_SHUTDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @EPOLLIN, align 4
  %53 = load i32, i32* @EPOLLRDNORM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EPOLLRDHUP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %44
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @TCP_SYN_SENT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %168

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TCP_SYN_RECV, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @rcu_access_pointer(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %168

73:                                               ; preds = %67, %63
  %74 = load %struct.sock*, %struct.sock** %9, align 8
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = call i32 @sock_rcvlowat(%struct.sock* %74, i32 0, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @READ_ONCE(i32 %79)
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @READ_ONCE(i32 %83)
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %73
  %87 = load %struct.sock*, %struct.sock** %9, align 8
  %88 = load i32, i32* @SOCK_URGINLINE, align 4
  %89 = call i32 @sock_flag(%struct.sock* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %91, %86, %73
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = call i64 @tcp_stream_is_readable(%struct.tcp_sock* %100, i32 %101, %struct.sock* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* @EPOLLIN, align 4
  %107 = load i32, i32* @EPOLLRDNORM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.sock*, %struct.sock** %9, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SEND_SHUTDOWN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %150, label %118

118:                                              ; preds = %111
  %119 = load %struct.sock*, %struct.sock** %9, align 8
  %120 = call i64 @sk_stream_is_writeable(%struct.sock* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* @EPOLLOUT, align 4
  %124 = load i32, i32* @EPOLLWRNORM, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %149

128:                                              ; preds = %118
  %129 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %130 = load %struct.sock*, %struct.sock** %9, align 8
  %131 = call i32 @sk_set_bit(i32 %129, %struct.sock* %130)
  %132 = load i32, i32* @SOCK_NOSPACE, align 4
  %133 = load %struct.sock*, %struct.sock** %9, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 3
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = call i32 @set_bit(i32 %132, i32* %136)
  %138 = call i32 (...) @smp_mb__after_atomic()
  %139 = load %struct.sock*, %struct.sock** %9, align 8
  %140 = call i64 @sk_stream_is_writeable(%struct.sock* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %128
  %143 = load i32, i32* @EPOLLOUT, align 4
  %144 = load i32, i32* @EPOLLWRNORM, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %128
  br label %149

149:                                              ; preds = %148, %122
  br label %156

150:                                              ; preds = %111
  %151 = load i32, i32* @EPOLLOUT, align 4
  %152 = load i32, i32* @EPOLLWRNORM, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %150, %149
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TCP_URG_VALID, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @EPOLLPRI, align 4
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %163, %156
  br label %185

168:                                              ; preds = %67, %59
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @TCP_SYN_SENT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load %struct.sock*, %struct.sock** %9, align 8
  %174 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load i32, i32* @EPOLLOUT, align 4
  %180 = load i32, i32* @EPOLLWRNORM, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %178, %172, %168
  br label %185

185:                                              ; preds = %184, %167
  %186 = call i32 (...) @smp_rmb()
  %187 = load %struct.sock*, %struct.sock** %9, align 8
  %188 = getelementptr inbounds %struct.sock, %struct.sock* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = load %struct.sock*, %struct.sock** %9, align 8
  %193 = getelementptr inbounds %struct.sock, %struct.sock* %192, i32 0, i32 1
  %194 = call i32 @skb_queue_empty_lockless(i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191, %185
  %197 = load i32, i32* @EPOLLERR, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %196, %191
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %27
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @inet_sk_state_load(%struct.sock*) #1

declare dso_local i32 @inet_csk_listen_poll(%struct.sock*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @sock_rcvlowat(%struct.sock*, i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @tcp_stream_is_readable(%struct.tcp_sock*, i32, %struct.sock*) #1

declare dso_local i64 @sk_stream_is_writeable(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
