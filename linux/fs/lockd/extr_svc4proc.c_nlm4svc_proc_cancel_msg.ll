; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_cancel_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_proc_cancel_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: CANCEL_MSG    called\0A\00", align 1
@NLMPROC_CANCEL_RES = common dso_local global i32 0, align 4
@__nlm4svc_proc_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nlm4svc_proc_cancel_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4svc_proc_cancel_msg(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %5 = load i32, i32* @NLMPROC_CANCEL_RES, align 4
  %6 = load i32, i32* @__nlm4svc_proc_cancel, align 4
  %7 = call i32 @nlm4svc_callback(%struct.svc_rqst* %4, i32 %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nlm4svc_callback(%struct.svc_rqst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
