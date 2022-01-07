; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_lockres_release_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_lockres_release_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, i64, i32 }

@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_lockres_release_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %5 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %5, i32 0, i32 4
  %7 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %7, i32 0, i32 2
  %9 = call i32 @atomic_dec_and_lock(i32* %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  br label %44

21:                                               ; preds = %12
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 0
  %43 = call i32 @wake_up(i32* %42)
  br label %44

44:                                               ; preds = %21, %17, %11
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
