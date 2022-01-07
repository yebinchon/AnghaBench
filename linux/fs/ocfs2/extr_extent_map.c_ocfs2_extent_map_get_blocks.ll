; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_extent_map_get_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_extent_map_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ocfs2_clusters_to_blocks(i32 %19, i32 1)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ocfs2_blocks_to_clusters(i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @ocfs2_get_clusters(%struct.inode* %27, i32 %28, i32* %15, i32* %14, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %73

36:                                               ; preds = %5
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i8* @ocfs2_clusters_to_blocks(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %39, %36
  %53 = load i32, i32* %16, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i8* @ocfs2_clusters_to_blocks(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %57, %52
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i8* @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
