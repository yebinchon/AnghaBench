; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@BT_LISTEN = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@SOCK_SELECT_ERR_QUEUE = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@BT_SK_SUSPEND = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
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
  store i32 0, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %13, %struct.sock* %14)
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call i32 @sk_sleep(%struct.sock* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32 %18, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_LISTEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = call i32 @bt_accept_poll(%struct.sock* %27)
  store i32 %28, i32* %4, align 4
  br label %144

29:                                               ; preds = %3
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 3
  %37 = call i32 @skb_queue_empty_lockless(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EPOLLERR, align 4
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = load i32, i32* @SOCK_SELECT_ERR_QUEUE, align 4
  %43 = call i64 @sock_flag(%struct.sock* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EPOLLPRI, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %34
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RCV_SHUTDOWN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* @EPOLLRDHUP, align 4
  %62 = load i32, i32* @EPOLLIN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @EPOLLRDNORM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SHUTDOWN_MASK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @EPOLLHUP, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 2
  %81 = call i32 @skb_queue_empty_lockless(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EPOLLIN, align 4
  %85 = load i32, i32* @EPOLLRDNORM, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.sock*, %struct.sock** %8, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BT_CLOSED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* @EPOLLHUP, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BT_CONNECT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.sock*, %struct.sock** %8, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BT_CONNECT2, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.sock*, %struct.sock** %8, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BT_CONFIG, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111, %105, %99
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %144

119:                                              ; preds = %111
  %120 = load i32, i32* @BT_SK_SUSPEND, align 4
  %121 = load %struct.sock*, %struct.sock** %8, align 8
  %122 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @test_bit(i32 %120, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %119
  %127 = load %struct.sock*, %struct.sock** %8, align 8
  %128 = call i64 @sock_writeable(%struct.sock* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32, i32* @EPOLLOUT, align 4
  %132 = load i32, i32* @EPOLLWRNORM, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @EPOLLWRBAND, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %142

138:                                              ; preds = %126, %119
  %139 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %140 = load %struct.sock*, %struct.sock** %8, align 8
  %141 = call i32 @sk_set_bit(i32 %139, %struct.sock* %140)
  br label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %117, %26
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @bt_accept_poll(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
