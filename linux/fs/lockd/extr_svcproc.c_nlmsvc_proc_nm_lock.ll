; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c_nlmsvc_proc_nm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcproc.c_nlmsvc_proc_nm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: NM_LOCK       called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nlmsvc_proc_nm_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_proc_nm_lock(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nlm_args*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %4 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %4, i32 0, i32 0
  %6 = load %struct.nlm_args*, %struct.nlm_args** %5, align 8
  store %struct.nlm_args* %6, %struct.nlm_args** %3, align 8
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nlm_args*, %struct.nlm_args** %3, align 8
  %9 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %11 = call i32 @nlmsvc_proc_lock(%struct.svc_rqst* %10)
  ret i32 %11
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nlmsvc_proc_lock(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
