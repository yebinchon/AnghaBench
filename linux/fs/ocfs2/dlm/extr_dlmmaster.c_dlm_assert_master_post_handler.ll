; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_post_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, i32 }

@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_assert_master_post_handler(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.dlm_lock_resource*
  store %struct.dlm_lock_resource* %9, %struct.dlm_lock_resource** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %14 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %29 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %28)
  br label %30

30:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
