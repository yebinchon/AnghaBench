; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@DCCP_LISTEN = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@DCCPF_REQUESTING = common dso_local global i32 0, align 4
@DCCPF_RESPOND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %9, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @sock_poll_wait(%struct.file* %13, %struct.socket* %14, i32* %15)
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DCCP_LISTEN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @inet_csk_listen_poll(%struct.sock* %23)
  store i32 %24, i32* %4, align 4
  br label %126

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EPOLLERR, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SHUTDOWN_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DCCP_CLOSED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @EPOLLHUP, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.sock*, %struct.sock** %9, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RCV_SHUTDOWN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* @EPOLLIN, align 4
  %57 = load i32, i32* @EPOLLRDNORM, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EPOLLRDHUP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 1, %66
  %68 = load i32, i32* @DCCPF_REQUESTING, align 4
  %69 = load i32, i32* @DCCPF_RESPOND, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %124

74:                                               ; preds = %63
  %75 = load %struct.sock*, %struct.sock** %9, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 3
  %77 = call i64 @atomic_read(i32* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @EPOLLIN, align 4
  %81 = load i32, i32* @EPOLLRDNORM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.sock*, %struct.sock** %9, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SEND_SHUTDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %123, label %92

92:                                               ; preds = %85
  %93 = load %struct.sock*, %struct.sock** %9, align 8
  %94 = call i64 @sk_stream_is_writeable(%struct.sock* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @EPOLLOUT, align 4
  %98 = load i32, i32* @EPOLLWRNORM, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %122

102:                                              ; preds = %92
  %103 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %104 = load %struct.sock*, %struct.sock** %9, align 8
  %105 = call i32 @sk_set_bit(i32 %103, %struct.sock* %104)
  %106 = load i32, i32* @SOCK_NOSPACE, align 4
  %107 = load %struct.sock*, %struct.sock** %9, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @set_bit(i32 %106, i32* %110)
  %112 = load %struct.sock*, %struct.sock** %9, align 8
  %113 = call i64 @sk_stream_is_writeable(%struct.sock* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i32, i32* @EPOLLOUT, align 4
  %117 = load i32, i32* @EPOLLWRNORM, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %102
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123, %63
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %22
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @inet_csk_listen_poll(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @sk_stream_is_writeable(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
