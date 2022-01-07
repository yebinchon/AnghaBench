; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_wait_for_ccid.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_wait_for_ccid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @dccp_wait_for_ccid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_wait_for_ccid(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @sk_sleep(%struct.sock* %9)
  %11 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %12 = call i32 @prepare_to_wait(i32 %10, i32* @wait, i32 %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @release_sock(%struct.sock* %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @schedule_timeout(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @sk_sleep(%struct.sock* %27)
  %29 = call i32 @finish_wait(i32 %28, i32* @wait)
  %30 = load i32, i32* @current, align 4
  %31 = call i64 @signal_pending(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %2
  store i32 -1, i32* %3, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
