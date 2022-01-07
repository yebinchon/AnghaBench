; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_add_holder.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_add_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_lock_holder = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*, %struct.ocfs2_lock_holder*)* @ocfs2_add_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_add_holder(%struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_holder* %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca %struct.ocfs2_lock_holder*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store %struct.ocfs2_lock_holder* %1, %struct.ocfs2_lock_holder** %4, align 8
  %5 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %4, align 8
  %6 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %5, i32 0, i32 0
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @task_pid(i32 %8)
  %10 = call i32 @get_pid(i32 %9)
  %11 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
