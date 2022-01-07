; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_extent_map_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_extent_map_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_extent_map_item = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, i32*, i32*)* @ocfs2_extent_map_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extent_map_lookup(%struct.inode* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.ocfs2_extent_map_item*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %13, align 8
  %17 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %18 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %21 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %20, i32 0, i32 1
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @__ocfs2_extent_map_lookup(i32* %21, i32 %22, %struct.ocfs2_extent_map_item** %14)
  %24 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %25 = icmp ne %struct.ocfs2_extent_map_item* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %34, %35
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub i32 %43, %44
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %26
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %5
  %57 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %58 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %14, align 8
  %61 = icmp eq %struct.ocfs2_extent_map_item* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ocfs2_extent_map_lookup(i32*, i32, %struct.ocfs2_extent_map_item**) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
