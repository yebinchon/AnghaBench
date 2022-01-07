; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_stream_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_stream_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, i32, %struct.sock }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, i64)* @smc_close_stream_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_close_stream_wait(%struct.smc_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @woken_wake_function, align 4
  %9 = call i32 @DEFINE_WAIT_FUNC(i32 %7, i32 %8)
  %10 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %11 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %10, i32 0, i32 2
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %17 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %16, i32 0, i32 1
  %18 = call i32 @smc_tx_prepared_sends(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %68

21:                                               ; preds = %15
  %22 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %23 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call i32 @sk_sleep(%struct.sock* %24)
  %26 = call i32 @add_wait_queue(i32 %25, i32* @wait)
  br label %27

27:                                               ; preds = %61, %21
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @signal_pending(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %62

36:                                               ; preds = %34
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %39 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %38, i32 0, i32 1
  %40 = call i32 @smc_tx_prepared_sends(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ECONNABORTED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ECONNRESET, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %48, %42, %36
  %55 = phi i1 [ true, %42 ], [ true, %36 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @sk_wait_event(%struct.sock* %37, i64* %4, i32 %56, i32* @wait)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %62

61:                                               ; preds = %54
  br label %27

62:                                               ; preds = %60, %34
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @sk_sleep(%struct.sock* %63)
  %65 = call i32 @remove_wait_queue(i32 %64, i32* @wait)
  %66 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %67 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %20, %14
  ret void
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @smc_tx_prepared_sends(i32*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
