; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_wait_clnt_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_wait_clnt_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32 }

@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %5, i32 0, i32 2
  %7 = call i32 @refcount_inc(i32* %6)
  %8 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 1
  %10 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %11 = load i32, i32* @nfs_wait_bit_killable, align 4
  %12 = load i32, i32* @TASK_KILLABLE, align 4
  %13 = call i32 @wait_on_bit_action(i32* %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %29 = call i32 @nfs_put_client(%struct.nfs_client* %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @wait_on_bit_action(i32*, i32, i32, i32) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
