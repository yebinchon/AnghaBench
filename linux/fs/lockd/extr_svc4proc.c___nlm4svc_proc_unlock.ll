; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c___nlm4svc_proc_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c___nlm4svc_proc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: UNLOCK        called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: UNLOCK        status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_res*)* @__nlm4svc_proc_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nlm4svc_proc_unlock(%struct.svc_rqst* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_host*, align 8
  %8 = alloca %struct.nlm_file*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 0
  %11 = load %struct.nlm_args*, %struct.nlm_args** %10, align 8
  store %struct.nlm_args* %11, %struct.nlm_args** %6, align 8
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %14 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %17 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = call i32 @SVC_NET(%struct.svc_rqst* %18)
  %20 = call i64 @locks_in_grace(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  %24 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %25 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @rpc_success, align 4
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %30 = call i32 @nlm4svc_retrieve_args(%struct.svc_rqst* %28, %struct.nlm_args* %29, %struct.nlm_host** %7, %struct.nlm_file** %8)
  %31 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %32 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = icmp ne i32 %30, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %36 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @nlm_drop_reply, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @rpc_drop_reply, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @rpc_success, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %27
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %48 = call i32 @SVC_NET(%struct.svc_rqst* %47)
  %49 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %50 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %51 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %50, i32 0, i32 0
  %52 = call i32 @nlmsvc_unlock(i32 %48, %struct.nlm_file* %49, i32* %51)
  %53 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %54 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %56 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %61 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %60, i32 0, i32 0
  %62 = call i32 @nlmsvc_release_lockowner(i32* %61)
  %63 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %64 = call i32 @nlmsvc_release_host(%struct.nlm_host* %63)
  %65 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %66 = call i32 @nlm_release_file(%struct.nlm_file* %65)
  %67 = load i32, i32* @rpc_success, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %46, %44, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @nlm4svc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @nlmsvc_unlock(i32, %struct.nlm_file*, i32*) #1

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
