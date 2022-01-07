; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { %struct.nsm_handle* }
%struct.nsm_handle = type { i64, i32, i64, i64 }
%struct.nsm_res = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"lockd: nsm_monitor(%s)\0A\00", align 1
@nsm_use_hostnames = common dso_local global i64 0, align 8
@NSMPROC_MON = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"lockd: cannot monitor %s\0A\00", align 1
@nsm_local_state = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"lockd: NSM state changed to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsm_monitor(%struct.nlm_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca %struct.nsm_handle*, align 8
  %5 = alloca %struct.nsm_res, align 8
  %6 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 0
  %9 = load %struct.nsm_handle*, %struct.nsm_handle** %8, align 8
  store %struct.nsm_handle* %9, %struct.nsm_handle** %4, align 8
  %10 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %11 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %15 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load i64, i64* @nsm_use_hostnames, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %24 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %28 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  %32 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %33 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %35 = load i32, i32* @NSMPROC_MON, align 4
  %36 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %37 = call i32 @nsm_mon_unmon(%struct.nsm_handle* %34, i32 %35, %struct.nsm_res* %5, %struct.nlm_host* %36)
  store i32 %37, i32* %6, align 4
  %38 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %55 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %75

59:                                               ; preds = %47
  %60 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %61 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load i64, i64* @nsm_local_state, align 8
  %63 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %5, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %5, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @nsm_local_state, align 8
  %72 = load i64, i64* @nsm_local_state, align 8
  %73 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %69, %59
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %53, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @nsm_mon_unmon(%struct.nsm_handle*, i32, %struct.nsm_res*, %struct.nlm_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_notice_ratelimited(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
