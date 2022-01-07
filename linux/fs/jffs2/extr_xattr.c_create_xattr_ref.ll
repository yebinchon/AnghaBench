; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_create_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_create_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_xattr_ref = type { %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_datum*, %struct.jffs2_inode_cache* }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_cache = type { %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_datum = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_xattr_ref* (%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*, %struct.jffs2_xattr_datum*)* @create_xattr_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_xattr_ref* @create_xattr_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1, %struct.jffs2_xattr_datum* %2) #0 {
  %4 = alloca %struct.jffs2_xattr_ref*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_cache*, align 8
  %7 = alloca %struct.jffs2_xattr_datum*, align 8
  %8 = alloca %struct.jffs2_xattr_ref*, align 8
  %9 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %6, align 8
  store %struct.jffs2_xattr_datum* %2, %struct.jffs2_xattr_datum** %7, align 8
  %10 = call %struct.jffs2_xattr_ref* (...) @jffs2_alloc_xattr_ref()
  store %struct.jffs2_xattr_ref* %10, %struct.jffs2_xattr_ref** %8, align 8
  %11 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %12 = icmp ne %struct.jffs2_xattr_ref* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.jffs2_xattr_ref* @ERR_PTR(i32 %15)
  store %struct.jffs2_xattr_ref* %16, %struct.jffs2_xattr_ref** %4, align 8
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %19 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %20 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %19, i32 0, i32 2
  store %struct.jffs2_inode_cache* %18, %struct.jffs2_inode_cache** %20, align 8
  %21 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %7, align 8
  %22 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %23 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %22, i32 0, i32 1
  store %struct.jffs2_xattr_datum* %21, %struct.jffs2_xattr_datum** %23, align 8
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %25 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %26 = call i32 @save_xattr_ref(%struct.jffs2_sb_info* %24, %struct.jffs2_xattr_ref* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %31 = call i32 @jffs2_free_xattr_ref(%struct.jffs2_xattr_ref* %30)
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.jffs2_xattr_ref* @ERR_PTR(i32 %32)
  store %struct.jffs2_xattr_ref* %33, %struct.jffs2_xattr_ref** %4, align 8
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %36 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %35, i32 0, i32 0
  %37 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %36, align 8
  %38 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %39 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %38, i32 0, i32 0
  store %struct.jffs2_xattr_ref* %37, %struct.jffs2_xattr_ref** %39, align 8
  %40 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  %41 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %42 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %41, i32 0, i32 0
  store %struct.jffs2_xattr_ref* %40, %struct.jffs2_xattr_ref** %42, align 8
  %43 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %8, align 8
  store %struct.jffs2_xattr_ref* %43, %struct.jffs2_xattr_ref** %4, align 8
  br label %44

44:                                               ; preds = %34, %29, %13
  %45 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  ret %struct.jffs2_xattr_ref* %45
}

declare dso_local %struct.jffs2_xattr_ref* @jffs2_alloc_xattr_ref(...) #1

declare dso_local %struct.jffs2_xattr_ref* @ERR_PTR(i32) #1

declare dso_local i32 @save_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @jffs2_free_xattr_ref(%struct.jffs2_xattr_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
