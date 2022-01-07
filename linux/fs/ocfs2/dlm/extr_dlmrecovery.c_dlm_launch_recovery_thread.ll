; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_launch_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_launch_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"starting dlm recovery thread...\0A\00", align 1
@dlm_recovery_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dlm_reco-%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_launch_recovery_thread(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  %4 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @dlm_recovery_thread, align 4
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32* @kthread_run(i32 %5, %struct.dlm_ctxt* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %14 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  %23 = call i32 @mlog_errno(i32 %22)
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32* @kthread_run(i32, %struct.dlm_ctxt*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
