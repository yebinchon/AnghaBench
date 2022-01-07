; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i64 }
%struct.smc_sock = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i64 0, align 8
@SMC_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @smc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.smc_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.smc_sock* @smc_sk(%struct.sock* %11)
  store %struct.smc_sock* %12, %struct.smc_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @lock_sock(%struct.sock* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SMC_INIT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMC_LISTEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %30 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %22
  br label %87

34:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMC_LISTEN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %87

44:                                               ; preds = %34
  %45 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %46 = call i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock* %45)
  %47 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %48 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %53 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_3__* @tcp_sk(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %44
  %60 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %61 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @kernel_listen(%struct.TYPE_4__* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %87

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* @SMC_LISTEN, align 8
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = call i32 @sock_hold(%struct.sock* %77)
  %79 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %80 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %79, i32 0, i32 0
  %81 = call i32 @schedule_work(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %68
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call i32 @sock_put(%struct.sock* %84)
  br label %86

86:                                               ; preds = %83, %68
  br label %87

87:                                               ; preds = %86, %67, %40, %33
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = call i32 @release_sock(%struct.sock* %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock*) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(i32) #1

declare dso_local i32 @kernel_listen(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
