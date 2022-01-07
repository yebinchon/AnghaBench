; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_wait_for_busy_core.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_wait_for_busy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.llc_sock = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @llc_ui_wait_for_busy_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_wait_for_busy_core(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.llc_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @woken_wake_function, align 4
  %9 = call i32 @DEFINE_WAIT_FUNC(i32 %7, i32 %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.llc_sock* @llc_sk(%struct.sock* %10)
  store %struct.llc_sock* %11, %struct.llc_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @sk_sleep(%struct.sock* %12)
  %14 = call i32 @add_wait_queue(i32 %13, i32* @wait)
  br label %15

15:                                               ; preds = %2, %61
  store i32 0, i32* %6, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RCV_SHUTDOWN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %15
  %24 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %25 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @llc_data_accept_state(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29, %23
  %41 = phi i1 [ false, %29 ], [ false, %23 ], [ %39, %34 ]
  br label %42

42:                                               ; preds = %40, %15
  %43 = phi i1 [ true, %15 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @sk_wait_event(%struct.sock* %16, i64* %4, i32 %44, i32* @wait)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %62

48:                                               ; preds = %42
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @current, align 4
  %52 = call i64 @signal_pending(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %48
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55
  br label %15

62:                                               ; preds = %60, %54, %47
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @sk_sleep(%struct.sock* %63)
  %65 = call i32 @remove_wait_queue(i32 %64, i32* @wait)
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @llc_data_accept_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
