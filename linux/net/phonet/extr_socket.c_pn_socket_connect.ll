; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.pn_sock = type { i64, i32 }
%struct.sockaddr_pn = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_PHONET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @pn_socket_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.pn_sock*, align 8
  %12 = alloca %struct.sockaddr_pn*, align 8
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = call %struct.pn_sock* @pn_sk(%struct.sock* %19)
  store %struct.pn_sock* %20, %struct.pn_sock** %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_pn*
  store %struct.sockaddr_pn* %22, %struct.sockaddr_pn** %12, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %23, %struct.task_struct** %13, align 8
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @sock_rcvtimeo(%struct.sock* %24, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = call i64 @pn_socket_autobind(%struct.socket* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %174

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %174

42:                                               ; preds = %35
  %43 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %12, align 8
  %44 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_PHONET, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EAFNOSUPPORT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %174

51:                                               ; preds = %42
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = call i32 @lock_sock(%struct.sock* %52)
  %54 = load %struct.socket*, %struct.socket** %6, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %70 [
    i32 128, label %57
    i32 129, label %67
  ]

57:                                               ; preds = %51
  %58 = load %struct.sock*, %struct.sock** %10, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TCP_CLOSE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EISCONN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %170

66:                                               ; preds = %57
  br label %73

67:                                               ; preds = %51
  %68 = load i32, i32* @EALREADY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %170

70:                                               ; preds = %51
  %71 = load i32, i32* @EISCONN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %170

73:                                               ; preds = %66
  %74 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %12, align 8
  %75 = call i64 @pn_sockaddr_get_object(%struct.sockaddr_pn* %74)
  %76 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %77 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %12, align 8
  %79 = call i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn* %78)
  %80 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %81 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.socket*, %struct.socket** %6, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  store i32 129, i32* %83, align 8
  %84 = load %struct.sock*, %struct.sock** %10, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %87, align 8
  %89 = load %struct.sock*, %struct.sock** %10, align 8
  %90 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 %88(%struct.sock* %89, %struct.sockaddr* %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = load %struct.socket*, %struct.socket** %6, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 0
  store i32 128, i32* %97, align 8
  %98 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %99 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %170

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %122, %100
  %102 = load %struct.sock*, %struct.sock** %10, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TCP_SYN_SENT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %101
  %108 = load i32, i32* @wait, align 4
  %109 = call i32 @DEFINE_WAIT(i32 %108)
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @EINPROGRESS, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  br label %170

115:                                              ; preds = %107
  %116 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %117 = call i64 @signal_pending(%struct.task_struct* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @sock_intr_errno(i64 %120)
  store i32 %121, i32* %15, align 4
  br label %170

122:                                              ; preds = %115
  %123 = load %struct.sock*, %struct.sock** %10, align 8
  %124 = call i32 @sk_sleep(%struct.sock* %123)
  %125 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %126 = call i32 @prepare_to_wait_exclusive(i32 %124, i32* @wait, i32 %125)
  %127 = load %struct.sock*, %struct.sock** %10, align 8
  %128 = call i32 @release_sock(%struct.sock* %127)
  %129 = load i64, i64* %14, align 8
  %130 = call i64 @schedule_timeout(i64 %129)
  store i64 %130, i64* %14, align 8
  %131 = load %struct.sock*, %struct.sock** %10, align 8
  %132 = call i32 @lock_sock(%struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %10, align 8
  %134 = call i32 @sk_sleep(%struct.sock* %133)
  %135 = call i32 @finish_wait(i32 %134, i32* @wait)
  br label %101

136:                                              ; preds = %101
  %137 = load %struct.sock*, %struct.sock** %10, align 8
  %138 = getelementptr inbounds %struct.sock, %struct.sock* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 1, %139
  %141 = load i32, i32* @TCPF_SYN_RECV, align 4
  %142 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 0, i32* %15, align 4
  br label %160

147:                                              ; preds = %136
  %148 = load %struct.sock*, %struct.sock** %10, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @ECONNRESET, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %15, align 4
  br label %159

156:                                              ; preds = %147
  %157 = load i32, i32* @ECONNREFUSED, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %15, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %146
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %166

164:                                              ; preds = %160
  %165 = load i32, i32* @SS_CONNECTED, align 4
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i32 [ 128, %163 ], [ %165, %164 ]
  %168 = load %struct.socket*, %struct.socket** %6, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %119, %112, %95, %70, %67, %63
  %171 = load %struct.sock*, %struct.sock** %10, align 8
  %172 = call i32 @release_sock(%struct.sock* %171)
  %173 = load i32, i32* %15, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %170, %48, %39, %32
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i64 @pn_socket_autobind(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
