; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_grant_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_grant_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nlm_rqst = type { %struct.nlm_block* }
%struct.nlm_block = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"lockd: GRANT_MSG RPC callback\0A\00", align 1
@nlm_blocked_lock = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nlmsvc_grant_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmsvc_grant_callback(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nlm_rqst*, align 8
  %6 = alloca %struct.nlm_block*, align 8
  %7 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nlm_rqst*
  store %struct.nlm_rqst* %9, %struct.nlm_rqst** %5, align 8
  %10 = load %struct.nlm_rqst*, %struct.nlm_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %10, i32 0, i32 0
  %12 = load %struct.nlm_block*, %struct.nlm_block** %11, align 8
  store %struct.nlm_block* %12, %struct.nlm_block** %6, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @spin_lock(i32* @nlm_blocked_lock)
  %15 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %16 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 10, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 60, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @nlmsvc_insert_block_locked(%struct.nlm_block* %34, i64 %35)
  %37 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %38 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @svc_wake_up(i32 %39)
  br label %41

41:                                               ; preds = %33, %19
  %42 = call i32 @spin_unlock(i32* @nlm_blocked_lock)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @nlmsvc_insert_block_locked(%struct.nlm_block*, i64) #1

declare dso_local i32 @svc_wake_up(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
