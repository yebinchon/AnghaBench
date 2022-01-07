; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_defer_lock_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_defer_lock_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* (%struct.TYPE_2__*)* }
%struct.nlm_block = type { i32, i32*, %struct.TYPE_2__* }

@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@B_QUEUED = common dso_local global i32 0, align 4
@NLM_TIMEOUT = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"lockd: nlmsvc_defer_lock_rqst block %p flags %d status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_block*)* @nlmsvc_defer_lock_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_defer_lock_rqst(%struct.svc_rqst* %0, %struct.nlm_block* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nlm_block*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.nlm_block* %1, %struct.nlm_block** %4, align 8
  %6 = load i32, i32* @nlm_lck_denied_nolocks, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @B_QUEUED, align 4
  %8 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %9 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %13 = load i32, i32* @NLM_TIMEOUT, align 4
  %14 = call i32 @nlmsvc_insert_block(%struct.nlm_block* %12, i32 %13)
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 0
  %17 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %18 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %17, i32 0, i32 2
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32* (%struct.TYPE_2__*)*, i32* (%struct.TYPE_2__*)** %21, align 8
  %23 = icmp ne i32* (%struct.TYPE_2__*)* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32* (%struct.TYPE_2__*)*, i32* (%struct.TYPE_2__*)** %27, align 8
  %29 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %30 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32* %28(%struct.TYPE_2__* %31)
  %33 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %34 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %36 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @nlm_drop_reply, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %24
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %44 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %45 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.nlm_block* %43, i32 %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @nlmsvc_insert_block(%struct.nlm_block*, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.nlm_block*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
