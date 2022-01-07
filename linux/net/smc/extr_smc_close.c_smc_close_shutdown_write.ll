; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_shutdown_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_shutdown_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.smc_sock = type { %struct.sock, %struct.smc_connection }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.smc_connection = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@SMC_MAX_STREAM_WAIT_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_close_shutdown_write(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.smc_connection*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %8 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %9 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %8, i32 0, i32 1
  store %struct.smc_connection* %9, %struct.smc_connection** %3, align 8
  %10 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 0
  store %struct.sock* %11, %struct.sock** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PF_EXITING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load i32, i32* @SOCK_LINGER, align 4
  %22 = call i64 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i64, i64* @SMC_MAX_STREAM_WAIT_TIMEOUT, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i64 [ %27, %24 ], [ %29, %28 ]
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i64 [ 0, %18 ], [ %31, %30 ]
  store i64 %33, i64* %6, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %86, %56, %32
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %97 [
    i32 136, label %41
    i32 135, label %66
    i32 134, label %96
    i32 129, label %96
    i32 131, label %96
    i32 130, label %96
    i32 133, label %96
    i32 128, label %96
    i32 132, label %96
  ]

41:                                               ; preds = %37
  %42 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @smc_close_stream_wait(%struct.smc_sock* %42, i64 %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  %47 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %48 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %47, i32 0, i32 0
  %49 = call i32 @cancel_delayed_work_sync(i32* %48)
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @lock_sock(%struct.sock* %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 136
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %37

57:                                               ; preds = %41
  %58 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %59 = call i32 @smc_close_wr(%struct.smc_connection* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %97

63:                                               ; preds = %57
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  store i32 131, i32* %65, align 8
  br label %97

66:                                               ; preds = %37
  %67 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %68 = call i32 @smc_cdc_rxed_any_close(%struct.smc_connection* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @smc_close_stream_wait(%struct.smc_sock* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @release_sock(%struct.sock* %75)
  %77 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %78 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %77, i32 0, i32 0
  %79 = call i32 @cancel_delayed_work_sync(i32* %78)
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = call i32 @lock_sock(%struct.sock* %80)
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 135
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %37

87:                                               ; preds = %74
  %88 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %89 = call i32 @smc_close_wr(%struct.smc_connection* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %97

93:                                               ; preds = %87
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 1
  store i32 134, i32* %95, align 8
  br label %97

96:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  br label %97

97:                                               ; preds = %37, %96, %93, %92, %63, %62
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 2
  %106 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %105, align 8
  %107 = load %struct.sock*, %struct.sock** %4, align 8
  %108 = call i32 %106(%struct.sock* %107)
  br label %109

109:                                              ; preds = %103, %97
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @smc_close_stream_wait(%struct.smc_sock*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_close_wr(%struct.smc_connection*) #1

declare dso_local i32 @smc_cdc_rxed_any_close(%struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
