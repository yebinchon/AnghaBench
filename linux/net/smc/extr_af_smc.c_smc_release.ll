; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.smc_sock = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SMC_INIT = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i32 0, align 4
@SMC_LISTEN = common dso_local global i64 0, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @smc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = icmp ne %struct.sock* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.smc_sock* @smc_sk(%struct.sock* %13)
  store %struct.smc_sock* %14, %struct.smc_sock** %4, align 8
  %15 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %16 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SMC_INIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %27 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ECONNABORTED, align 4
  %32 = call i32 @tcp_abort(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %19, %12
  %34 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %35 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %34, i32 0, i32 0
  %36 = call i32 @flush_work(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMC_LISTEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %45 = call i32 @lock_sock_nested(%struct.sock* %43, i32 %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @lock_sock(%struct.sock* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %51 = call i32 @__smc_release(%struct.smc_sock* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @sock_orphan(%struct.sock* %52)
  %54 = load %struct.socket*, %struct.socket** %2, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %55, align 8
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = call i32 @sock_put(%struct.sock* %58)
  br label %60

60:                                               ; preds = %49, %11
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @tcp_abort(i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @__smc_release(%struct.smc_sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
