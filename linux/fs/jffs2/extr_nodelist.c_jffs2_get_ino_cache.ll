; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_get_ino_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_get_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inode_cache = type { i64, %struct.jffs2_inode_cache* }
%struct.jffs2_sb_info = type { i64, %struct.jffs2_inode_cache** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jffs2_inode_cache* @jffs2_get_ino_cache(%struct.jffs2_sb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jffs2_inode_cache*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %6, i32 0, i32 1
  %8 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %9, %12
  %14 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %8, i64 %13
  %15 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %14, align 8
  store %struct.jffs2_inode_cache* %15, %struct.jffs2_inode_cache** %5, align 8
  br label %16

16:                                               ; preds = %27, %2
  %17 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %18 = icmp ne %struct.jffs2_inode_cache* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %21 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %29 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %28, i32 0, i32 1
  %30 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %29, align 8
  store %struct.jffs2_inode_cache* %30, %struct.jffs2_inode_cache** %5, align 8
  br label %16

31:                                               ; preds = %25
  %32 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %33 = icmp ne %struct.jffs2_inode_cache* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  %36 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.jffs2_inode_cache* null, %struct.jffs2_inode_cache** %5, align 8
  br label %41

41:                                               ; preds = %40, %34, %31
  %42 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  ret %struct.jffs2_inode_cache* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
