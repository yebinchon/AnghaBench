; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.page = type { i32 }
%struct.smc_sock = type { i32, i64 }

@EPIPE = common dso_local global i32 0, align 4
@SMC_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.page*, i32, i64, i32)* @smc_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_sendpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.smc_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load i32, i32* @EPIPE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.smc_sock* @smc_sk(%struct.sock* %19)
  store %struct.smc_sock* %20, %struct.smc_sock** %12, align 8
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMC_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.sock*, %struct.sock** %11, align 8
  %30 = call i32 @release_sock(%struct.sock* %29)
  br label %55

31:                                               ; preds = %5
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = call i32 @release_sock(%struct.sock* %32)
  %34 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %35 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.smc_sock*, %struct.smc_sock** %12, align 8
  %40 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @kernel_sendpage(i32 %41, %struct.page* %42, i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  br label %54

47:                                               ; preds = %31
  %48 = load %struct.socket*, %struct.socket** %6, align 8
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sock_no_sendpage(%struct.socket* %48, %struct.page* %49, i32 %50, i64 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %47, %38
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kernel_sendpage(i32, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @sock_no_sendpage(%struct.socket*, %struct.page*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
