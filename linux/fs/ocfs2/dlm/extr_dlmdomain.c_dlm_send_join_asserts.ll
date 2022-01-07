; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_join_asserts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_join_asserts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error return %d asserting join on node %d\0A\00", align 1
@DLM_DOMAIN_BACKOFF_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, i64*)* @dlm_send_join_asserts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_send_join_asserts(%struct.dlm_ctxt* %0, i64* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %8

8:                                                ; preds = %61, %22, %2
  %9 = load i64*, i64** %4, align 8
  %10 = load i32, i32* @O2NM_MAX_NODES, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @find_next_bit(i64* %9, i32 %10, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @O2NM_MAX_NODES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %8

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %59, %23
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dlm_send_one_join_assert(%struct.dlm_ctxt* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_bit(i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load i32, i32* @ML_ERROR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mlog(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @DLM_DOMAIN_BACKOFF_MS, align 4
  %50 = call i32 @msleep(i32 %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %24, label %61

61:                                               ; preds = %59
  br label %8

62:                                               ; preds = %8
  ret void
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @dlm_send_one_join_assert(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
