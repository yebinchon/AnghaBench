; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.hugetlbfs_sb_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.hstate = type { i32 }

@HUGETLBFS_MAGIC = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @hugetlbfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.hugetlbfs_sb_info*, align 8
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(i32 %10)
  store %struct.hugetlbfs_sb_info* %11, %struct.hugetlbfs_sb_info** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call %struct.hstate* @hstate_inode(i32 %13)
  store %struct.hstate* %14, %struct.hstate** %6, align 8
  %15 = load i32, i32* @HUGETLBFS_MAGIC, align 4
  %16 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %17 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hstate*, %struct.hstate** %6, align 8
  %19 = call i32 @huge_page_size(%struct.hstate* %18)
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %23 = icmp ne %struct.hugetlbfs_sb_info* %22, null
  br i1 %23, label %24, label %80

24:                                               ; preds = %2
  %25 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %29 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %24
  %33 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %49, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %58 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %60 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %59, i32 0, i32 1
  store i64 %56, i64* %60, align 8
  %61 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %62 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %75 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %32, %24
  %77 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %5, align 8
  %78 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %2
  %81 = load i32, i32* @NAME_MAX, align 4
  %82 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %83 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  ret i32 0
}

declare dso_local %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(i32) #1

declare dso_local %struct.hstate* @hstate_inode(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
