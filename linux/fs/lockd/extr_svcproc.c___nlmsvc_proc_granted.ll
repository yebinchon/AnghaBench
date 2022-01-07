; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_granted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c___nlmsvc_proc_granted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_res = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: GRANTED       called\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: GRANTED       status %d\0A\00", align 1
@rpc_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_res*)* @__nlmsvc_proc_granted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nlmsvc_proc_granted(%struct.svc_rqst* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nlm_res*, align 8
  %5 = alloca %struct.nlm_args*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 0
  %8 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  store %struct.nlm_args* %8, %struct.nlm_args** %5, align 8
  %9 = load %struct.nlm_args*, %struct.nlm_args** %5, align 8
  %10 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %13 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %16 = call i32 @svc_addr(%struct.svc_rqst* %15)
  %17 = load %struct.nlm_args*, %struct.nlm_args** %5, align 8
  %18 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %17, i32 0, i32 0
  %19 = call i32 @nlmclnt_grant(i32 %16, i32* %18)
  %20 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %21 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %23 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @rpc_success, align 4
  ret i32 %27
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nlmclnt_grant(i32, i32*) #1

declare dso_local i32 @svc_addr(%struct.svc_rqst*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
