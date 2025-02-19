; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_dec_free_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_dec_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugetlbfs_sb_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hugetlbfs_sb_info*)* @hugetlbfs_dec_free_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_dec_free_inodes(%struct.hugetlbfs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hugetlbfs_sb_info*, align 8
  store %struct.hugetlbfs_sb_info* %0, %struct.hugetlbfs_sb_info** %3, align 8
  %4 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %5 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %8
  %25 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %3, align 8
  %30 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  br label %32

32:                                               ; preds = %24, %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
