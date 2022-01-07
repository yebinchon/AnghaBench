; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_unshare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_res*, %struct.nlm_args* }
%struct.nlm_res = type { i64, i32 }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: UNSHARE       called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i64 0, align 8
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i64 0, align 8
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: UNSHARE       status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nlm4svc_proc_unshare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4svc_proc_unshare(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nlm_args*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca %struct.nlm_host*, align 8
  %7 = alloca %struct.nlm_file*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 1
  %10 = load %struct.nlm_args*, %struct.nlm_args** %9, align 8
  store %struct.nlm_args* %10, %struct.nlm_args** %4, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = load %struct.nlm_res*, %struct.nlm_res** %12, align 8
  store %struct.nlm_res* %13, %struct.nlm_res** %5, align 8
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %21 = call i32 @SVC_NET(%struct.svc_rqst* %20)
  %22 = call i64 @locks_in_grace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i64, i64* @nlm_lck_denied_grace_period, align 8
  %26 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %27 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @rpc_success, align 4
  store i32 %28, i32* %2, align 4
  br label %68

29:                                               ; preds = %1
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %31 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %32 = call i64 @nlm4svc_retrieve_args(%struct.svc_rqst* %30, %struct.nlm_args* %31, %struct.nlm_host** %6, %struct.nlm_file** %7)
  %33 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %34 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = icmp ne i64 %32, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %38 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @nlm_drop_reply, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @rpc_drop_reply, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @rpc_success, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %29
  %49 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %50 = load %struct.nlm_file*, %struct.nlm_file** %7, align 8
  %51 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %52 = call i64 @nlmsvc_unshare_file(%struct.nlm_host* %49, %struct.nlm_file* %50, %struct.nlm_args* %51)
  %53 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %54 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %56 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ntohl(i64 %57)
  %59 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %61 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %60, i32 0, i32 0
  %62 = call i32 @nlmsvc_release_lockowner(i32* %61)
  %63 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %64 = call i32 @nlmsvc_release_host(%struct.nlm_host* %63)
  %65 = load %struct.nlm_file*, %struct.nlm_file** %7, align 8
  %66 = call i32 @nlm_release_file(%struct.nlm_file* %65)
  %67 = load i32, i32* @rpc_success, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %48, %46, %24
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nlm4svc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i64 @nlmsvc_unshare_file(%struct.nlm_host*, %struct.nlm_file*, %struct.nlm_args*) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @nlmsvc_release_lockowner(i32*) #1

declare dso_local i32 @nlmsvc_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_file(%struct.nlm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
