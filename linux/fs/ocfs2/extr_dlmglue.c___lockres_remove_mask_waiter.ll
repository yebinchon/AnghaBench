; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___lockres_remove_mask_waiter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___lockres_remove_mask_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_mask_waiter = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*)* @__lockres_remove_mask_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %0, %struct.ocfs2_mask_waiter* %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca %struct.ocfs2_mask_waiter*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store %struct.ocfs2_mask_waiter* %1, %struct.ocfs2_mask_waiter** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 1
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %9, i32 0, i32 3
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %22 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %29, i32 0, i32 3
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %32, i32 0, i32 2
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %36 = call i32 @ocfs2_track_lock_wait(%struct.ocfs2_lock_res* %35)
  br label %37

37:                                               ; preds = %28, %2
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ocfs2_track_lock_wait(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
