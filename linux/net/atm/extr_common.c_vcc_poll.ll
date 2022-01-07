; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.atm_vcc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SS_CONNECTING = common dso_local global i64 0, align 8
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@ATM_NONE = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.atm_vcc*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @sock_poll_wait(%struct.file* %14, %struct.socket* %15, i32* %16)
  store i32 0, i32* %10, align 4
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %18)
  store %struct.atm_vcc* %19, %struct.atm_vcc** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EPOLLERR, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i32, i32* @ATM_VF_RELEASED, align 4
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ATM_VF_CLOSE, align 4
  %34 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %35 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @EPOLLHUP, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = call i32 @skb_queue_empty_lockless(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EPOLLIN, align 4
  %49 = load i32, i32* @EPOLLRDNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.socket*, %struct.socket** %6, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SS_CONNECTING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i32, i32* @ATM_VF_WAITING, align 4
  %61 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %62 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %89

67:                                               ; preds = %59, %53
  %68 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %69 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ATM_NONE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.sock*, %struct.sock** %8, align 8
  %77 = call i64 @vcc_writable(%struct.sock* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* @EPOLLOUT, align 4
  %81 = load i32, i32* @EPOLLWRNORM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @EPOLLWRBAND, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %79, %75, %67
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %65
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @sock_poll_wait(%struct.file*, %struct.socket*, i32*) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i64 @vcc_writable(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
