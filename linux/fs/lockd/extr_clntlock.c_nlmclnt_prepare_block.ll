; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntlock.c_nlmclnt_prepare_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntlock.c_nlmclnt_prepare_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_wait = type { i32, i32, i32, %struct.file_lock*, %struct.nlm_host* }
%struct.nlm_host = type { i32 }
%struct.file_lock = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nlm_lck_blocked = common dso_local global i32 0, align 4
@nlm_blocked_lock = common dso_local global i32 0, align 4
@nlm_blocked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_wait* @nlmclnt_prepare_block(%struct.nlm_host* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.nlm_wait*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nlm_wait* @kmalloc(i32 32, i32 %6)
  store %struct.nlm_wait* %7, %struct.nlm_wait** %5, align 8
  %8 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %9 = icmp ne %struct.nlm_wait* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %12 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %13 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %12, i32 0, i32 4
  store %struct.nlm_host* %11, %struct.nlm_host** %13, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %15 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %16 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %15, i32 0, i32 3
  store %struct.file_lock* %14, %struct.file_lock** %16, align 8
  %17 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %18 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %17, i32 0, i32 2
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load i32, i32* @nlm_lck_blocked, align 4
  %21 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %22 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = call i32 @spin_lock(i32* @nlm_blocked_lock)
  %24 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %25 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %24, i32 0, i32 0
  %26 = call i32 @list_add(i32* %25, i32* @nlm_blocked)
  %27 = call i32 @spin_unlock(i32* @nlm_blocked_lock)
  br label %28

28:                                               ; preds = %10, %2
  %29 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  ret %struct.nlm_wait* %29
}

declare dso_local %struct.nlm_wait* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
