; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i64, i32, i32, i32, i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i64 }
%struct.nlm_file = type { i32 }

@rpc_success = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lockd: LOCK          called\0A\00", align 1
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lockd: LOCK         status %d\0A\00", align 1
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_res*)* @__nlmsvc_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nlmsvc_proc_lock(%struct.svc_rqst* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_host*, align 8
  %8 = alloca %struct.nlm_file*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nlm_args*, %struct.nlm_args** %11, align 8
  store %struct.nlm_args* %12, %struct.nlm_args** %6, align 8
  %13 = load i32, i32* @rpc_success, align 4
  store i32 %13, i32* %9, align 4
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %16 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %22 = call i32 @nlmsvc_retrieve_args(%struct.svc_rqst* %20, %struct.nlm_args* %21, %struct.nlm_host** %7, %struct.nlm_file** %8)
  %23 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %24 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = icmp ne i32 %22, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %28 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @nlm_drop_reply, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @rpc_drop_reply, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @rpc_success, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %2
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %40 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %41 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %42 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %43 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %42, i32 0, i32 1
  %44 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %45 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %48 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %47, i32 0, i32 3
  %49 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %50 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nlmsvc_lock(%struct.svc_rqst* %39, %struct.nlm_file* %40, %struct.nlm_host* %41, i32* %43, i32 %46, i32* %48, i32 %51)
  %53 = call i32 @cast_status(i32 %52)
  %54 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %55 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %57 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @nlm_drop_reply, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load i32, i32* @rpc_drop_reply, align 4
  store i32 %62, i32* %9, align 4
  br label %69

63:                                               ; preds = %38
  %64 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %65 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohl(i32 %66)
  %68 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %61
  %70 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %71 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %70, i32 0, i32 1
  %72 = call i32 @nlmsvc_release_lockowner(i32* %71)
  %73 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %74 = call i32 @nlmsvc_release_host(%struct.nlm_host* %73)
  %75 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %76 = call i32 @nlm_release_file(%struct.nlm_file* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %36
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nlmsvc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @cast_status(i32) #1

declare dso_local i32 @nlmsvc_lock(%struct.svc_rqst*, %struct.nlm_file*, %struct.nlm_host*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nlmsvc_release_lockowner(i32*) #1

declare dso_local i32 @nlmsvc_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_file(%struct.nlm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
