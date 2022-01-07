; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_cache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_quotainfo = type { i32, i32 }
%struct.radix_tree_root = type { i32 }
%struct.xfs_dquot = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32, %struct.xfs_dquot*)* @xfs_qm_dqget_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_qm_dqget_cache_insert(%struct.xfs_mount* %0, %struct.xfs_quotainfo* %1, %struct.radix_tree_root* %2, i32 %3, %struct.xfs_dquot* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_quotainfo*, align 8
  %9 = alloca %struct.radix_tree_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dquot*, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_quotainfo* %1, %struct.xfs_quotainfo** %8, align 8
  store %struct.radix_tree_root* %2, %struct.radix_tree_root** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xfs_dquot* %4, %struct.xfs_dquot** %11, align 8
  %13 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %8, align 8
  %14 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.radix_tree_root*, %struct.radix_tree_root** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %19 = call i32 @radix_tree_insert(%struct.radix_tree_root* %16, i32 %17, %struct.xfs_dquot* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %8, align 8
  %31 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %34 = call i32 @trace_xfs_dqget_dup(%struct.xfs_dquot* %33)
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %5
  %37 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %38 = call i32 @xfs_dqlock(%struct.xfs_dquot* %37)
  %39 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %40 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %8, align 8
  %42 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %8, align 8
  %46 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %36, %23
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(%struct.radix_tree_root*, i32, %struct.xfs_dquot*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_xfs_dqget_dup(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_dqlock(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
