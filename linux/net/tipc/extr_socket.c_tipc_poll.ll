; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 }
%struct.tipc_sock = type { i32, i32 }

@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @tipc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.tipc_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %13)
  store %struct.tipc_sock* %14, %struct.tipc_sock** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @sock_poll_wait(%struct.file* %15, %struct.socket* %16, i32* %17)
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %21 = call i32 @trace_tipc_sk_poll(%struct.sock* %19, i32* null, i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RCV_SHUTDOWN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* @EPOLLRDHUP, align 4
  %30 = load i32, i32* @EPOLLIN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @EPOLLRDNORM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %28, %3
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SHUTDOWN_MASK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @EPOLLHUP, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %113 [
    i32 130, label %50
    i32 129, label %64
    i32 132, label %64
    i32 128, label %76
    i32 131, label %107
  ]

50:                                               ; preds = %46
  %51 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %52 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %57 = call i32 @tsk_conn_cong(%struct.tipc_sock* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @EPOLLOUT, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %55, %50
  br label %64

64:                                               ; preds = %46, %46, %63
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 2
  %67 = call i32 @skb_queue_empty_lockless(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EPOLLIN, align 4
  %71 = load i32, i32* @EPOLLRDNORM, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %64
  br label %113

76:                                               ; preds = %46
  %77 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %78 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %83 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @EPOLLOUT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %81, %76
  %91 = load %struct.sock*, %struct.sock** %7, align 8
  %92 = call i32 @tipc_sk_type_connectionless(%struct.sock* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %113

95:                                               ; preds = %90
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 2
  %98 = call i32 @skb_queue_empty_lockless(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %113

101:                                              ; preds = %95
  %102 = load i32, i32* @EPOLLIN, align 4
  %103 = load i32, i32* @EPOLLRDNORM, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %113

107:                                              ; preds = %46
  %108 = load i32, i32* @EPOLLIN, align 4
  %109 = load i32, i32* @EPOLLRDNORM, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @EPOLLHUP, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %46, %107, %101, %100, %94, %75
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @trace_tipc_sk_poll(%struct.sock*, i32*, i32, i8*) #1

declare dso_local i32 @tsk_conn_cong(%struct.tipc_sock*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i32 @tipc_sk_type_connectionless(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
