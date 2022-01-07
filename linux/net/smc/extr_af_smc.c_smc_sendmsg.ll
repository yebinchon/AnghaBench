; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32 }
%struct.smc_sock = type { %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.msghdr*, i64)* }

@EPIPE = common dso_local global i32 0, align 4
@SMC_ACTIVE = common dso_local global i64 0, align 8
@SMC_APPCLOSEWAIT1 = common dso_local global i64 0, align 8
@SMC_INIT = common dso_local global i64 0, align 8
@MSG_FASTOPEN = common dso_local global i32 0, align 4
@SMC_CLC_DECL_OPTUNSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @smc_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.smc_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load i32, i32* @EPIPE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.smc_sock* @smc_sk(%struct.sock* %15)
  store %struct.smc_sock* %16, %struct.smc_sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SMC_ACTIVE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMC_APPCLOSEWAIT1, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SMC_INIT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %90

37:                                               ; preds = %30, %24, %3
  %38 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSG_FASTOPEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SMC_INIT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %52 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %57 = call i32 @smc_switch_to_fallback(%struct.smc_sock* %56)
  %58 = load i32, i32* @SMC_CLC_DECL_OPTUNSUPP, align 4
  %59 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %60 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %64

61:                                               ; preds = %50, %44
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %90

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %67 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %72 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_4__*, %struct.msghdr*, i64)*, i32 (%struct.TYPE_4__*, %struct.msghdr*, i64)** %76, align 8
  %78 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %79 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 %77(%struct.TYPE_4__* %80, %struct.msghdr* %81, i64 %82)
  store i32 %83, i32* %9, align 4
  br label %89

84:                                               ; preds = %65
  %85 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %86 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @smc_tx_sendmsg(%struct.smc_sock* %85, %struct.msghdr* %86, i64 %87)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %84, %70
  br label %90

90:                                               ; preds = %89, %61, %36
  %91 = load %struct.sock*, %struct.sock** %7, align 8
  %92 = call i32 @release_sock(%struct.sock* %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_switch_to_fallback(%struct.smc_sock*) #1

declare dso_local i32 @smc_tx_sendmsg(%struct.smc_sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
