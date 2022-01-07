; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs4_callback_svc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs4_callback_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }

@current = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nfs4_callback_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_callback_svc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.svc_rqst*
  store %struct.svc_rqst* %6, %struct.svc_rqst** %4, align 8
  %7 = call i32 (...) @set_freezable()
  br label %8

8:                                                ; preds = %33, %32, %1
  %9 = call i32 @kthread_freezable_should_stop(i32* null)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i32, i32* @current, align 4
  %14 = call i64 @signal_pending(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @flush_signals(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %22 = call i32 @svc_recv(%struct.svc_rqst* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %19
  br label %8

33:                                               ; preds = %27
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %35 = call i32 @svc_process(%struct.svc_rqst* %34)
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %38 = call i32 @svc_exit_thread(%struct.svc_rqst* %37)
  %39 = call i32 @module_put_and_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_freezable_should_stop(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @svc_recv(%struct.svc_rqst*, i32) #1

declare dso_local i32 @svc_process(%struct.svc_rqst*) #1

declare dso_local i32 @svc_exit_thread(%struct.svc_rqst*) #1

declare dso_local i32 @module_put_and_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
