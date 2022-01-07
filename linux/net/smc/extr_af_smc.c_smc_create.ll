; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.smc_sock = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sock = type { i32 }

@SMCPROTO_SMC6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SMCPROTO_SMC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@smc_sock_ops = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SMC_BUF_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @smc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smc_sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SMCPROTO_SMC6, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PF_INET6, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @PF_INET, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.socket*, %struct.socket** %6, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_STREAM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %97

30:                                               ; preds = %20
  %31 = load i32, i32* @EPROTONOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SMCPROTO_SMC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SMCPROTO_SMC6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %97

41:                                               ; preds = %36, %30
  %42 = load i32, i32* @ENOBUFS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  store i32* @smc_sock_ops, i32** %45, align 8
  %46 = load %struct.net*, %struct.net** %5, align 8
  %47 = load %struct.socket*, %struct.socket** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.sock* @smc_sock_alloc(%struct.net* %46, %struct.socket* %47, i32 %48)
  store %struct.sock* %49, %struct.sock** %11, align 8
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = icmp ne %struct.sock* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %97

53:                                               ; preds = %41
  %54 = load %struct.sock*, %struct.sock** %11, align 8
  %55 = call %struct.smc_sock* @smc_sk(%struct.sock* %54)
  store %struct.smc_sock* %55, %struct.smc_sock** %10, align 8
  %56 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %57 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %59 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.net*, %struct.net** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i64, i64* @SOCK_STREAM, align 8
  %63 = load i32, i32* @IPPROTO_TCP, align 4
  %64 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %65 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %64, i32 0, i32 1
  %66 = call i32 @sock_create_kern(%struct.net* %60, i32 %61, i64 %62, i32 %63, %struct.TYPE_6__** %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = call i32 @sk_common_release(%struct.sock* %70)
  br label %97

72:                                               ; preds = %53
  %73 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %74 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SMC_BUF_MIN_SIZE, align 4
  %81 = call i8* @max(i32 %79, i32 %80)
  %82 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %83 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %86 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SMC_BUF_MIN_SIZE, align 4
  %93 = call i8* @max(i32 %91, i32 %92)
  %94 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %95 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %72, %69, %52, %40, %29
  %98 = load i32, i32* %12, align 4
  ret i32 %98
}

declare dso_local %struct.sock* @smc_sock_alloc(%struct.net*, %struct.socket*, i32) #1

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @sock_create_kern(%struct.net*, i32, i64, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
