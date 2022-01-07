; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c___smc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c___smc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, i32, i64, %struct.sock }
%struct.sock = type { i64, %struct.TYPE_2__*, i32 (%struct.sock*)*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }

@SOCK_DEAD = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SMC_LISTEN = common dso_local global i64 0, align 8
@SMC_INIT = common dso_local global i64 0, align 8
@SHUT_RDWR = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*)* @__smc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smc_release(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %5 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %6 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %5, i32 0, i32 3
  store %struct.sock* %6, %struct.sock** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %8 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %13 = call i32 @smc_close_active(%struct.smc_sock* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load i32, i32* @SOCK_DEAD, align 4
  %16 = call i32 @sock_set_flag(%struct.sock* %14, i32 %15)
  %17 = load i32, i32* @SHUTDOWN_MASK, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMC_LISTEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMC_INIT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @sock_put(%struct.sock* %35)
  br label %37

37:                                               ; preds = %34, %28, %22
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SMC_LISTEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %45 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @SHUT_RDWR, align 4
  %48 = call i32 @kernel_sock_shutdown(i64 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i64, i64* @SMC_CLOSED, align 8
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 2
  %55 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %54, align 8
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 %55(%struct.sock* %56)
  %58 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %59 = call i32 @smc_restore_fallback_changes(%struct.smc_sock* %58)
  br label %60

60:                                               ; preds = %49, %11
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %64, align 8
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call i32 %65(%struct.sock* %66)
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SMC_CLOSED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %60
  %74 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %75 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %82 = call i32 @smc_clcsock_release(%struct.smc_sock* %81)
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call i32 @lock_sock(%struct.sock* %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %87 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %92 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %91, i32 0, i32 0
  %93 = call i32 @smc_conn_free(i32* %92)
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %60
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @smc_close_active(%struct.smc_sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kernel_sock_shutdown(i64, i32) #1

declare dso_local i32 @smc_restore_fallback_changes(%struct.smc_sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @smc_clcsock_release(%struct.smc_sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_conn_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
