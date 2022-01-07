; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_first_inode_chain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_first_inode_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inode_cache = type { i32 }
%struct.jffs2_sb_info = type { i32, %struct.jffs2_inode_cache** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_inode_cache* (i32*, %struct.jffs2_sb_info*)* @first_inode_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_inode_cache* @first_inode_chain(i32* %0, %struct.jffs2_sb_info* %1) #0 {
  %3 = alloca %struct.jffs2_inode_cache*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.jffs2_sb_info* %1, %struct.jffs2_sb_info** %5, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %10 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %14, i32 0, i32 1
  %16 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %15, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, i64 %19
  %21 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %20, align 8
  %22 = icmp ne %struct.jffs2_inode_cache* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %24, i32 0, i32 1
  %26 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %25, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %26, i64 %29
  %31 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %30, align 8
  store %struct.jffs2_inode_cache* %31, %struct.jffs2_inode_cache** %3, align 8
  br label %38

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %6

37:                                               ; preds = %6
  store %struct.jffs2_inode_cache* null, %struct.jffs2_inode_cache** %3, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %3, align 8
  ret %struct.jffs2_inode_cache* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
