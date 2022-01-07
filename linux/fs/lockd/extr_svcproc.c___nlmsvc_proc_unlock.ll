; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }
%struct.net = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: UNLOCK        called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: UNLOCK        status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_res*)* @__nlmsvc_proc_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nlmsvc_proc_unlock(%struct.svc_rqst* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_host*, align 8
  %8 = alloca %struct.nlm_file*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nlm_args*, %struct.nlm_args** %11, align 8
  store %struct.nlm_args* %12, %struct.nlm_args** %6, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = call %struct.net* @SVC_NET(%struct.svc_rqst* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %17 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.net*, %struct.net** %9, align 8
  %22 = call i64 @locks_in_grace(%struct.net* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  %26 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %27 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @rpc_success, align 4
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %2
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %32 = call i32 @nlmsvc_retrieve_args(%struct.svc_rqst* %30, %struct.nlm_args* %31, %struct.nlm_host** %7, %struct.nlm_file** %8)
  %33 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %34 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = icmp ne i32 %32, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %38 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @nlm_drop_reply, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @rpc_drop_reply, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @rpc_success, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %29
  %49 = load %struct.net*, %struct.net** %9, align 8
  %50 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %51 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %52 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %51, i32 0, i32 0
  %53 = call i32 @nlmsvc_unlock(%struct.net* %49, %struct.nlm_file* %50, i32* %52)
  %54 = call i32 @cast_status(i32 %53)
  %55 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %56 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %58 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %63 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %62, i32 0, i32 0
  %64 = call i32 @nlmsvc_release_lockowner(i32* %63)
  %65 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %66 = call i32 @nlmsvc_release_host(%struct.nlm_host* %65)
  %67 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %68 = call i32 @nlm_release_file(%struct.nlm_file* %67)
  %69 = load i32, i32* @rpc_success, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %48, %46, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(%struct.net*) #1

declare dso_local i32 @nlmsvc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @cast_status(i32) #1

declare dso_local i32 @nlmsvc_unlock(%struct.net*, %struct.nlm_file*, i32*) #1

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
