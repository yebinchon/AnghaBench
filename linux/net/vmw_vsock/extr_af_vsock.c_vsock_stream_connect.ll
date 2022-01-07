; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vsock_sock*)*, i32 (i32, i32)* }
%struct.vsock_sock = type { i64, i32, i32 }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_vm = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i8* null, align 8
@SS_UNCONNECTED = common dso_local global i8* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @vsock_stream_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_stream_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.vsock_sock*, align 8
  %12 = alloca %struct.sockaddr_vm*, align 8
  %13 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  store i32 0, i32* %9, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %19)
  store %struct.vsock_sock* %20, %struct.vsock_sock** %11, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %35 [
    i32 130, label %26
    i32 128, label %29
    i32 129, label %32
  ]

26:                                               ; preds = %4
  %27 = load i32, i32* @EISCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %193

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %193

32:                                               ; preds = %4
  %33 = load i32, i32* @EALREADY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %91

35:                                               ; preds = %4
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_LISTEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @vsock_addr_cast(%struct.sockaddr* %42, i32 %43, %struct.sockaddr_vm** %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %193

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %12, align 8
  %54 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %12, align 8
  %57 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %52(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENETUNREACH, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %193

64:                                               ; preds = %49
  %65 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %66 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %65, i32 0, i32 2
  %67 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %12, align 8
  %68 = call i32 @memcpy(i32* %66, %struct.sockaddr_vm* %67, i32 4)
  %69 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %70 = call i32 @vsock_auto_bind(%struct.vsock_sock* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %193

74:                                               ; preds = %64
  %75 = load i64, i64* @TCP_SYN_SENT, align 8
  %76 = load %struct.sock*, %struct.sock** %10, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.vsock_sock*)*, i32 (%struct.vsock_sock*)** %79, align 8
  %81 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %82 = call i32 %80(%struct.vsock_sock* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %193

86:                                               ; preds = %74
  %87 = load %struct.socket*, %struct.socket** %5, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 0
  store i32 129, i32* %88, align 8
  %89 = load i32, i32* @EINPROGRESS, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %32
  %92 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %93 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %13, align 8
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = call i32 @sk_sleep(%struct.sock* %95)
  %97 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %98 = call i32 @prepare_to_wait(i32 %96, i32* @wait, i32 %97)
  br label %99

99:                                               ; preds = %164, %91
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TCP_ESTABLISHED, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %105, %99
  %111 = phi i1 [ false, %99 ], [ %109, %105 ]
  br i1 %111, label %112, label %169

112:                                              ; preds = %110
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @O_NONBLOCK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.sock*, %struct.sock** %10, align 8
  %119 = call i32 @sock_hold(%struct.sock* %118)
  %120 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %121 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %120, i32 0, i32 1
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @schedule_delayed_work(i32* %121, i64 %122)
  br label %189

124:                                              ; preds = %112
  %125 = load %struct.sock*, %struct.sock** %10, align 8
  %126 = call i32 @release_sock(%struct.sock* %125)
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @schedule_timeout(i64 %127)
  store i64 %128, i64* %13, align 8
  %129 = load %struct.sock*, %struct.sock** %10, align 8
  %130 = call i32 @lock_sock(%struct.sock* %129)
  %131 = load i32, i32* @current, align 4
  %132 = call i64 @signal_pending(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %124
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @sock_intr_errno(i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i8*, i8** @TCP_CLOSE, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.sock*, %struct.sock** %10, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i8*, i8** @SS_UNCONNECTED, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.socket*, %struct.socket** %5, align 8
  %144 = getelementptr inbounds %struct.socket, %struct.socket* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %146 = call i32 @vsock_transport_cancel_pkt(%struct.vsock_sock* %145)
  br label %189

147:                                              ; preds = %124
  %148 = load i64, i64* %13, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  %153 = load i8*, i8** @TCP_CLOSE, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.sock*, %struct.sock** %10, align 8
  %156 = getelementptr inbounds %struct.sock, %struct.sock* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i8*, i8** @SS_UNCONNECTED, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.socket*, %struct.socket** %5, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.vsock_sock*, %struct.vsock_sock** %11, align 8
  %162 = call i32 @vsock_transport_cancel_pkt(%struct.vsock_sock* %161)
  br label %189

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.sock*, %struct.sock** %10, align 8
  %166 = call i32 @sk_sleep(%struct.sock* %165)
  %167 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %168 = call i32 @prepare_to_wait(i32 %166, i32* @wait, i32 %167)
  br label %99

169:                                              ; preds = %110
  %170 = load %struct.sock*, %struct.sock** %10, align 8
  %171 = getelementptr inbounds %struct.sock, %struct.sock* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = load %struct.sock*, %struct.sock** %10, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %9, align 4
  %179 = load i8*, i8** @TCP_CLOSE, align 8
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.sock*, %struct.sock** %10, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load i8*, i8** @SS_UNCONNECTED, align 8
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.socket*, %struct.socket** %5, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %188

187:                                              ; preds = %169
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %187, %174
  br label %189

189:                                              ; preds = %188, %150, %134, %117
  %190 = load %struct.sock*, %struct.sock** %10, align 8
  %191 = call i32 @sk_sleep(%struct.sock* %190)
  %192 = call i32 @finish_wait(i32 %191, i32* @wait)
  br label %193

193:                                              ; preds = %189, %85, %73, %61, %46, %29, %26
  %194 = load %struct.sock*, %struct.sock** %10, align 8
  %195 = call i32 @release_sock(%struct.sock* %194)
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @vsock_addr_cast(%struct.sockaddr*, i32, %struct.sockaddr_vm**) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_vm*, i32) #1

declare dso_local i32 @vsock_auto_bind(%struct.vsock_sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @vsock_transport_cancel_pkt(%struct.vsock_sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
