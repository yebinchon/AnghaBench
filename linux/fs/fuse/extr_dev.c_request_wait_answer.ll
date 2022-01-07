; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_request_wait_answer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_request_wait_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, %struct.fuse_iqueue }
%struct.fuse_iqueue = type { i32 }
%struct.fuse_req = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FR_FINISHED = common dso_local global i32 0, align 4
@FR_INTERRUPTED = common dso_local global i32 0, align 4
@FR_SENT = common dso_local global i32 0, align 4
@FR_FORCE = common dso_local global i32 0, align 4
@FR_PENDING = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @request_wait_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_wait_answer(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca %struct.fuse_iqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %8 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %7, i32 0, i32 1
  store %struct.fuse_iqueue* %8, %struct.fuse_iqueue** %5, align 8
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %15 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FR_FINISHED, align 4
  %18 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = call i32 @wait_event_interruptible(i32 %16, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %96

25:                                               ; preds = %13
  %26 = load i32, i32* @FR_INTERRUPTED, align 4
  %27 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %28 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = call i32 (...) @smp_mb__after_atomic()
  %31 = load i32, i32* @FR_SENT, align 4
  %32 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %33 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %38 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %39 = call i32 @queue_interrupt(%struct.fuse_iqueue* %37, %struct.fuse_req* %38)
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @FR_FORCE, align 4
  %43 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %44 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %41
  %48 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FR_FINISHED, align 4
  %52 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %53 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = call i32 @wait_event_killable(i32 %50, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %96

59:                                               ; preds = %47
  %60 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %61 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load i32, i32* @FR_PENDING, align 4
  %64 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 0
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %70 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %69, i32 0, i32 3
  %71 = call i32 @list_del(i32* %70)
  %72 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %73 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %76 = call i32 @__fuse_put_request(%struct.fuse_req* %75)
  %77 = load i32, i32* @EINTR, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %80 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  br label %96

83:                                               ; preds = %59
  %84 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %85 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %41
  %88 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %89 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FR_FINISHED, align 4
  %92 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %93 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %92, i32 0, i32 0
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = call i32 @wait_event(i32 %90, i64 %94)
  br label %96

96:                                               ; preds = %87, %68, %58, %24
  ret void
}

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @queue_interrupt(%struct.fuse_iqueue*, %struct.fuse_req*) #1

declare dso_local i32 @wait_event_killable(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__fuse_put_request(%struct.fuse_req*) #1

declare dso_local i32 @wait_event(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
