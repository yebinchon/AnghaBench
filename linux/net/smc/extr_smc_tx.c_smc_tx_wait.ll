; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_wait.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.sock, %struct.smc_connection }
%struct.sock = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.smc_connection = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32)* @smc_tx_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_tx_wait(%struct.smc_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @woken_wake_function, align 4
  %11 = call i32 @DEFINE_WAIT_FUNC(i32 %9, i32 %10)
  %12 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %13 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %12, i32 0, i32 1
  store %struct.smc_connection* %13, %struct.smc_connection** %5, align 8
  %14 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %15 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %14, i32 0, i32 0
  store %struct.sock* %15, %struct.sock** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MSG_DONTWAIT, align 4
  %19 = and i32 %17, %18
  %20 = call i64 @sock_sndtimeo(%struct.sock* %16, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call i32 @sk_sleep(%struct.sock* %21)
  %23 = call i32 @add_wait_queue(i32 %22, i32* @wait)
  br label %24

24:                                               ; preds = %2, %125
  %25 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = call i32 @sk_set_bit(i32 %25, %struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %24
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEND_SHUTDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %41 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32, %24
  %47 = load i32, i32* @EPIPE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %129

49:                                               ; preds = %39
  %50 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %51 = call i64 @smc_cdc_rxed_any_close(%struct.smc_connection* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ECONNRESET, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %129

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @SOCK_NOSPACE, align 4
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %60, i32* %64)
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %129

68:                                               ; preds = %56
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @signal_pending(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @sock_intr_errno(i64 %73)
  store i32 %74, i32* %8, align 4
  br label %129

75:                                               ; preds = %68
  %76 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = call i32 @sk_clear_bit(i32 %76, %struct.sock* %77)
  %79 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %80 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %79, i32 0, i32 1
  %81 = call i64 @atomic_read(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %85 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %129

89:                                               ; preds = %83, %75
  %90 = load i32, i32* @SOCK_NOSPACE, align 4
  %91 = load %struct.sock*, %struct.sock** %6, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %90, i32* %94)
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %89
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SEND_SHUTDOWN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %101
  %109 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %110 = call i64 @smc_cdc_rxed_any_close(%struct.smc_connection* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %108
  %113 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %114 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %113, i32 0, i32 1
  %115 = call i64 @atomic_read(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %119 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %117, %112
  %124 = phi i1 [ false, %112 ], [ %122, %117 ]
  br label %125

125:                                              ; preds = %123, %108, %101, %89
  %126 = phi i1 [ true, %108 ], [ true, %101 ], [ true, %89 ], [ %124, %123 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @sk_wait_event(%struct.sock* %96, i64* %7, i32 %127, i32* @wait)
  br label %24

129:                                              ; preds = %88, %72, %59, %53, %46
  %130 = load %struct.sock*, %struct.sock** %6, align 8
  %131 = call i32 @sk_sleep(%struct.sock* %130)
  %132 = call i32 @remove_wait_queue(i32 %131, i32* @wait)
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i64 @smc_cdc_rxed_any_close(%struct.smc_connection*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
