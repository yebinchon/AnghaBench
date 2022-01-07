; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32, i64 }
%struct.sctp_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCP = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@SOCK_SELECT_ERR_QUEUE = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@UDP = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %14)
  store %struct.sctp_sock* %15, %struct.sctp_sock** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call i32 @sk_sleep(%struct.sock* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32 %18, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call i32 @sock_rps_record_flow(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = load i32, i32* @TCP, align 4
  %25 = call i64 @sctp_style(%struct.sock* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = load i32, i32* @LISTENING, align 4
  %30 = call i64 @sctp_sstate(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EPOLLIN, align 4
  %41 = load i32, i32* @EPOLLRDNORM, align 4
  %42 = or i32 %40, %41
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  store i32 %45, i32* %4, align 4
  br label %144

46:                                               ; preds = %27, %3
  store i32 0, i32* %10, align 4
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = call i32 @skb_queue_empty_lockless(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @EPOLLERR, align 4
  %58 = load %struct.sock*, %struct.sock** %8, align 8
  %59 = load i32, i32* @SOCK_SELECT_ERR_QUEUE, align 4
  %60 = call i64 @sock_flag(%struct.sock* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @EPOLLPRI, align 4
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %57, %66
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %51
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RCV_SHUTDOWN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @EPOLLRDHUP, align 4
  %79 = load i32, i32* @EPOLLIN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @EPOLLRDNORM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %77, %70
  %86 = load %struct.sock*, %struct.sock** %8, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SHUTDOWN_MASK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @EPOLLHUP, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.sock*, %struct.sock** %8, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = call i32 @skb_queue_empty_lockless(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @EPOLLIN, align 4
  %102 = load i32, i32* @EPOLLRDNORM, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.sock*, %struct.sock** %8, align 8
  %108 = load i32, i32* @UDP, align 4
  %109 = call i64 @sctp_style(%struct.sock* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = load %struct.sock*, %struct.sock** %8, align 8
  %113 = load i32, i32* @CLOSED, align 4
  %114 = call i64 @sctp_sstate(%struct.sock* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %144

118:                                              ; preds = %111, %106
  %119 = load %struct.sock*, %struct.sock** %8, align 8
  %120 = call i64 @sctp_writeable(%struct.sock* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* @EPOLLOUT, align 4
  %124 = load i32, i32* @EPOLLWRNORM, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %142

128:                                              ; preds = %118
  %129 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %130 = load %struct.sock*, %struct.sock** %8, align 8
  %131 = call i32 @sk_set_bit(i32 %129, %struct.sock* %130)
  %132 = load %struct.sock*, %struct.sock** %8, align 8
  %133 = call i64 @sctp_writeable(%struct.sock* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @EPOLLOUT, align 4
  %137 = load i32, i32* @EPOLLWRNORM, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %135, %128
  br label %142

142:                                              ; preds = %141, %122
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %116, %44
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sock_rps_record_flow(%struct.sock*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @sctp_writeable(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
