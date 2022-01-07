; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.msghdr = type { i64 }
%struct.smc_sock = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.msghdr*, i64, i32)* }

@ENOTCONN = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@SMC_LISTEN = common dso_local global i64 0, align 8
@SMC_PEERFINCLOSEWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @smc_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.smc_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.smc_sock* @smc_sk(%struct.sock* %17)
  store %struct.smc_sock* %18, %struct.smc_sock** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SMC_CLOSED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RCV_SHUTDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %89

34:                                               ; preds = %26, %4
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMC_INIT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMC_LISTEN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SMC_CLOSED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34
  br label %89

53:                                               ; preds = %46
  %54 = load %struct.sock*, %struct.sock** %9, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SMC_PEERFINCLOSEWAIT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %89

60:                                               ; preds = %53
  %61 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %62 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %67 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_4__*, %struct.msghdr*, i64, i32)*, i32 (%struct.TYPE_4__*, %struct.msghdr*, i64, i32)** %71, align 8
  %73 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %74 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 %72(%struct.TYPE_4__* %75, %struct.msghdr* %76, i64 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %88

80:                                               ; preds = %60
  %81 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %84 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @smc_rx_recvmsg(%struct.smc_sock* %83, %struct.msghdr* %84, i32* null, i64 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %80, %65
  br label %89

89:                                               ; preds = %88, %59, %52, %33
  %90 = load %struct.sock*, %struct.sock** %9, align 8
  %91 = call i32 @release_sock(%struct.sock* %90)
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_rx_recvmsg(%struct.smc_sock*, %struct.msghdr*, i32*, i64, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
