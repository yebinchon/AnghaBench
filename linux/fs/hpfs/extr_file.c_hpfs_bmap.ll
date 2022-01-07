; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_file.c_hpfs_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_file.c_hpfs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hpfs_inode_info = type { i32, i32, i32, i32 }
%struct.fnode = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"bmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*)* @hpfs_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_bmap(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hpfs_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fnode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %13)
  store %struct.hpfs_inode_info* %14, %struct.hpfs_inode_info** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BLOCKS(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %26 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %31 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %36 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %42 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %103

46:                                               ; preds = %23
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.fnode* @hpfs_map_fnode(i32 %49, i32 %52, %struct.buffer_head** %12)
  store %struct.fnode* %53, %struct.fnode** %11, align 8
  %54 = icmp ne %struct.fnode* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %103

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load %struct.fnode*, %struct.fnode** %11, align 8
  %62 = getelementptr inbounds %struct.fnode, %struct.fnode* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = call i32 @hpfs_bplus_lookup(i32 %59, %struct.inode* %60, i32* %62, i32 %63, %struct.buffer_head* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %103

69:                                               ; preds = %56
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @hpfs_chk_sectors(i32 %72, i32 %73, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %103

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %80 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %78, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %85 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %77
  %89 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %90 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %96 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %97, %98
  store i32 %99, i32* %4, align 4
  br label %103

100:                                              ; preds = %77
  %101 = load i32*, i32** %7, align 8
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %88, %76, %68, %55, %34, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @BLOCKS(i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_bplus_lookup(i32, %struct.inode*, i32*, i32, %struct.buffer_head*) #1

declare dso_local i64 @hpfs_chk_sectors(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
