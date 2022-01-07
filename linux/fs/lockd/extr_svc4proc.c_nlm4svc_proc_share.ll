; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_share.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_res*, %struct.nlm_args* }
%struct.nlm_res = type { i64, i32 }
%struct.nlm_args = type { i32, i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: SHARE         called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i64 0, align 8
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i64 0, align 8
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: SHARE         status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nlm4svc_proc_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4svc_proc_share(%struct.svc_rqst* %0) #0 {
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
  %16 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %21 = call i32 @SVC_NET(%struct.svc_rqst* %20)
  %22 = call i64 @locks_in_grace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %26 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @nlm_lck_denied_grace_period, align 8
  %31 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %32 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @rpc_success, align 4
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %24, %1
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %36 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %37 = call i64 @nlm4svc_retrieve_args(%struct.svc_rqst* %35, %struct.nlm_args* %36, %struct.nlm_host** %6, %struct.nlm_file** %7)
  %38 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %39 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = icmp ne i64 %37, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %43 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @nlm_drop_reply, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @rpc_drop_reply, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @rpc_success, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %34
  %54 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %55 = load %struct.nlm_file*, %struct.nlm_file** %7, align 8
  %56 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %57 = call i64 @nlmsvc_share_file(%struct.nlm_host* %54, %struct.nlm_file* %55, %struct.nlm_args* %56)
  %58 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %59 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %61 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ntohl(i64 %62)
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.nlm_args*, %struct.nlm_args** %4, align 8
  %66 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %65, i32 0, i32 0
  %67 = call i32 @nlmsvc_release_lockowner(i32* %66)
  %68 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %69 = call i32 @nlmsvc_release_host(%struct.nlm_host* %68)
  %70 = load %struct.nlm_file*, %struct.nlm_file** %7, align 8
  %71 = call i32 @nlm_release_file(%struct.nlm_file* %70)
  %72 = load i32, i32* @rpc_success, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %53, %51, %29
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nlm4svc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i64 @nlmsvc_share_file(%struct.nlm_host*, %struct.nlm_file*, %struct.nlm_args*) #1

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
