; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.file_lock = type { i32 }
%struct.nlm_rqst = type { %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [93 x i8] c"lockd: blocking lock attempt was interrupted by a signal.\0A       Attempting to cancel lock.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@NLMPROC_CANCEL = common dso_local global i32 0, align 4
@nlmclnt_cancel_ops = common dso_local global i32 0, align 4
@nlm_lck_denied = common dso_local global i64 0, align 8
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_host*, i32, %struct.file_lock*)* @nlmclnt_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmclnt_cancel(%struct.nlm_host* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.nlm_rqst*, align 8
  %9 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %12 = call %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %11)
  store %struct.nlm_rqst* %12, %struct.nlm_rqst** %8, align 8
  %13 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %14 = icmp ne %struct.nlm_rqst* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %20 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %21 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %23 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %24 = call i32 @nlmclnt_setlockargs(%struct.nlm_rqst* %22, %struct.file_lock* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %27 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %30 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %29, i32 0, i32 1
  %31 = call i32 @refcount_inc(i32* %30)
  %32 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfs_file_cred(i32 %34)
  %36 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %37 = load i32, i32* @NLMPROC_CANCEL, align 4
  %38 = call i32 @nlmclnt_async_call(i32 %35, %struct.nlm_rqst* %36, i32 %37, i32* @nlmclnt_cancel_ops)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %18
  %42 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %43 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @nlm_lck_denied, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOLCK, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %41, %18
  %52 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %53 = call i32 @nlmclnt_release_call(%struct.nlm_rqst* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_setlockargs(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nlmclnt_async_call(i32, %struct.nlm_rqst*, i32, i32*) #1

declare dso_local i32 @nfs_file_cred(i32) #1

declare dso_local i32 @nlmclnt_release_call(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
