; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i64, i32, i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @unix_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sock_poll_wait(%struct.file* %12, %struct.socket* %13, i32* %14)
  store i32 0, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EPOLLERR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SHUTDOWN_MASK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @EPOLLHUP, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RCV_SHUTDOWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @EPOLLRDHUP, align 4
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EPOLLRDNORM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 3
  %52 = call i32 @skb_queue_empty_lockless(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EPOLLIN, align 4
  %56 = load i32, i32* @EPOLLRDNORM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOCK_STREAM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SOCK_SEQPACKET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66, %60
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TCP_CLOSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @EPOLLHUP, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %72, %66
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = call i64 @unix_writable(%struct.sock* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* @EPOLLOUT, align 4
  %88 = load i32, i32* @EPOLLWRNORM, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @EPOLLWRBAND, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %86, %82
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @unix_writable(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
