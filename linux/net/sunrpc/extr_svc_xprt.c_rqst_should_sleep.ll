; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_rqst_should_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_rqst_should_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.svc_pool* }
%struct.svc_pool = type { i32, i32 }

@SP_TASK_PENDING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @rqst_should_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rqst_should_sleep(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_pool*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  store %struct.svc_pool* %7, %struct.svc_pool** %4, align 8
  %8 = load i32, i32* @SP_TASK_PENDING, align 4
  %9 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  %10 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %9, i32 0, i32 1
  %11 = call i64 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  %16 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %33

20:                                               ; preds = %14
  %21 = call i64 (...) @signalled()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i64 (...) @kthread_should_stop()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i32 0, i32* %2, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @freezing(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %26, %19, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @freezing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
