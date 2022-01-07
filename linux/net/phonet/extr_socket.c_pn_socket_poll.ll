; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_socket_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, i32, i32 }
%struct.pep_sock = type { i32, i32 }

@TCP_CLOSE = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i64 0, align 8
@EPOLLHUP = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @pn_socket_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pep_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.pep_sock* @pep_sk(%struct.sock* %14)
  store %struct.pep_sock* %15, %struct.pep_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call i32 @sk_sleep(%struct.sock* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32 %18, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_CLOSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EPOLLERR, align 4
  store i32 %27, i32* %4, align 4
  br label %88

28:                                               ; preds = %3
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 3
  %31 = call i32 @skb_queue_empty_lockless(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EPOLLIN, align 4
  %35 = load i32, i32* @EPOLLRDNORM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.pep_sock*, %struct.pep_sock** %9, align 8
  %41 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %40, i32 0, i32 1
  %42 = call i32 @skb_queue_empty_lockless(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EPOLLPRI, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TCP_CLOSE_WAIT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @EPOLLHUP, align 4
  store i32 %58, i32* %4, align 4
  br label %88

59:                                               ; preds = %51, %48
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCP_ESTABLISHED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.sock*, %struct.sock** %8, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 2
  %68 = call i64 @refcount_read(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load %struct.pep_sock*, %struct.pep_sock** %9, align 8
  %75 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %74, i32 0, i32 0
  %76 = call i64 @atomic_read(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* @EPOLLOUT, align 4
  %80 = load i32, i32* @EPOLLWRNORM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @EPOLLWRBAND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %78, %73, %65, %59
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %57, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
