; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c___nlm4svc_proc_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c___nlm4svc_proc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_res = type { i32, i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@rpc_success = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lockd: TEST4        called\0A\00", align 1
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lockd: TEST4        status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_res*)* @__nlm4svc_proc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nlm4svc_proc_test(%struct.svc_rqst* %0, %struct.nlm_res* %1) #0 {
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
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %16 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %22 = call i32 @nlm4svc_retrieve_args(%struct.svc_rqst* %20, %struct.nlm_args* %21, %struct.nlm_host** %7, %struct.nlm_file** %8)
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
  br label %73

38:                                               ; preds = %2
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %40 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %41 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %42 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %43 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %42, i32 0, i32 0
  %44 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %45 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %44, i32 0, i32 2
  %46 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %47 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %46, i32 0, i32 1
  %48 = call i32 @nlmsvc_testlock(%struct.svc_rqst* %39, %struct.nlm_file* %40, %struct.nlm_host* %41, i32* %43, i32* %45, i32* %47)
  %49 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %50 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %52 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @nlm_drop_reply, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @rpc_drop_reply, align 4
  store i32 %57, i32* %9, align 4
  br label %64

58:                                               ; preds = %38
  %59 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %60 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  %63 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %56
  %65 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %66 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %65, i32 0, i32 0
  %67 = call i32 @nlmsvc_release_lockowner(i32* %66)
  %68 = load %struct.nlm_host*, %struct.nlm_host** %7, align 8
  %69 = call i32 @nlmsvc_release_host(%struct.nlm_host* %68)
  %70 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %71 = call i32 @nlm_release_file(%struct.nlm_file* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %36
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nlm4svc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @nlmsvc_testlock(%struct.svc_rqst*, %struct.nlm_file*, %struct.nlm_host*, i32*, i32*, i32*) #1

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
