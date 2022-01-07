; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mru_cache.c_xfs_mru_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"xfs_mru_cache\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@xfs_mru_reap_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mru_cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %3 = load i32, i32* @WQ_FREEZABLE, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4, i32 1)
  store i32 %5, i32* @xfs_mru_reap_wq, align 4
  %6 = load i32, i32* @xfs_mru_reap_wq, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
