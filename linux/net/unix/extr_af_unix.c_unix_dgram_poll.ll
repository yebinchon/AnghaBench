; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i64, i32, i32, i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@SOCK_SELECT_ERR_QUEUE = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@EPOLLWRBAND = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @unix_dgram_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_dgram_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sock_poll_wait(%struct.file* %15, %struct.socket* %16, i32* %17)
  store i32 0, i32* %11, align 4
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 4
  %26 = call i32 @skb_queue_empty_lockless(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @EPOLLERR, align 4
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = load i32, i32* @SOCK_SELECT_ERR_QUEUE, align 4
  %32 = call i64 @sock_flag(%struct.sock* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EPOLLPRI, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %37, %23
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RCV_SHUTDOWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @EPOLLRDHUP, align 4
  %51 = load i32, i32* @EPOLLIN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EPOLLRDNORM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.sock*, %struct.sock** %8, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SHUTDOWN_MASK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @EPOLLHUP, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 3
  %70 = call i32 @skb_queue_empty_lockless(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EPOLLIN, align 4
  %74 = load i32, i32* @EPOLLRDNORM, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SOCK_SEQPACKET, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TCP_CLOSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @EPOLLHUP, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TCP_SYN_SENT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %162

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @poll_requested_events(i32* %104)
  %106 = load i32, i32* @EPOLLWRBAND, align 4
  %107 = load i32, i32* @EPOLLWRNORM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @EPOLLOUT, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %105, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %162

115:                                              ; preds = %103
  %116 = load %struct.sock*, %struct.sock** %8, align 8
  %117 = call i32 @unix_writable(%struct.sock* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = load %struct.sock*, %struct.sock** %8, align 8
  %122 = call i32 @unix_state_lock(%struct.sock* %121)
  %123 = load %struct.sock*, %struct.sock** %8, align 8
  %124 = call %struct.sock* @unix_peer(%struct.sock* %123)
  store %struct.sock* %124, %struct.sock** %9, align 8
  %125 = load %struct.sock*, %struct.sock** %9, align 8
  %126 = icmp ne %struct.sock* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = call %struct.sock* @unix_peer(%struct.sock* %128)
  %130 = load %struct.sock*, %struct.sock** %8, align 8
  %131 = icmp ne %struct.sock* %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.sock*, %struct.sock** %9, align 8
  %134 = call i64 @unix_recvq_full(%struct.sock* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.sock*, %struct.sock** %8, align 8
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = call i64 @unix_dgram_peer_wake_me(%struct.sock* %137, %struct.sock* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %141, %136, %132, %127, %120
  %143 = load %struct.sock*, %struct.sock** %8, align 8
  %144 = call i32 @unix_state_unlock(%struct.sock* %143)
  br label %145

145:                                              ; preds = %142, %115
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i32, i32* @EPOLLOUT, align 4
  %150 = load i32, i32* @EPOLLWRNORM, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @EPOLLWRBAND, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %160

156:                                              ; preds = %145
  %157 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %158 = load %struct.sock*, %struct.sock** %8, align 8
  %159 = call i32 @sk_set_bit(i32 %157, %struct.sock* %158)
  br label %160

160:                                              ; preds = %156, %148
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %113, %100
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i32 @unix_writable(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

declare dso_local i64 @unix_recvq_full(%struct.sock*) #1

declare dso_local i64 @unix_dgram_peer_wake_me(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
