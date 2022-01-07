; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c_datagram_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c_datagram_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i32, i32, i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@SOCK_SELECT_ERR_QUEUE = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datagram_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @sock_poll_wait(%struct.file* %13, %struct.socket* %14, i32* %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 3
  %24 = call i32 @skb_queue_empty_lockless(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @EPOLLERR, align 4
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = load i32, i32* @SOCK_SELECT_ERR_QUEUE, align 4
  %30 = call i64 @sock_flag(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EPOLLPRI, align 4
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %27, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %21
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RCV_SHUTDOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* @EPOLLRDHUP, align 4
  %49 = load i32, i32* @EPOLLIN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @EPOLLRDNORM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SHUTDOWN_MASK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @EPOLLHUP, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.sock*, %struct.sock** %8, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 2
  %68 = call i32 @skb_queue_empty_lockless(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EPOLLIN, align 4
  %72 = load i32, i32* @EPOLLRDNORM, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = call i64 @connection_based(%struct.sock* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.sock*, %struct.sock** %8, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TCP_CLOSE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @EPOLLHUP, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TCP_SYN_SENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %117

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = call i64 @sock_writeable(%struct.sock* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* @EPOLLOUT, align 4
  %105 = load i32, i32* @EPOLLWRNORM, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @EPOLLWRBAND, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %115

111:                                              ; preds = %99
  %112 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %113 = load %struct.sock*, %struct.sock** %8, align 8
  %114 = call i32 @sk_set_bit(i32 %112, %struct.sock* %113)
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %96
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @connection_based(%struct.sock*) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
