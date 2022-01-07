; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_ea_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.jfs_ea_list = type { i32 }
%struct.jfs_inode_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.jfs_sb_info = type { i32, i64 }
%struct.metapage = type { i32 }

@DXD_INLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nbytes is 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.jfs_ea_list*)* @ea_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_read(%struct.inode* %0, %struct.jfs_ea_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.jfs_ea_list*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.jfs_inode_info*, align 8
  %8 = alloca %struct.jfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.metapage*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.jfs_ea_list* %1, %struct.jfs_ea_list** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %20)
  store %struct.jfs_inode_info* %21, %struct.jfs_inode_info** %7, align 8
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %22)
  store %struct.jfs_sb_info* %23, %struct.jfs_sb_info** %8, align 8
  %24 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %5, align 8
  %25 = bitcast %struct.jfs_ea_list* %24 to i8*
  store i8* %25, i8** %11, align 8
  %26 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %27 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DXD_INLINE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %5, align 8
  %36 = call i32 @ea_read_inline(%struct.inode* %34, %struct.jfs_ea_list* %35)
  store i32 %36, i32* %3, align 4
  br label %120

37:                                               ; preds = %2
  %38 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %38, i32 0, i32 0
  %40 = call i32 @sizeDXD(%struct.TYPE_4__* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = call i32 @jfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %120

48:                                               ; preds = %37
  %49 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %50 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %49, i32 0, i32 0
  %51 = call i32 @lengthDXD(%struct.TYPE_4__* %50)
  %52 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %53 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %57 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %56, i32 0, i32 0
  %58 = call i32 @addressDXD(%struct.TYPE_4__* %57)
  %59 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %60 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %58, %61
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %111, %48
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %63
  %68 = load i32, i32* @PSIZE, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %76, %79
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %80, %83
  store i32 %84, i32* %15, align 4
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = call %struct.metapage* @read_metapage(%struct.inode* %85, i32 %88, i32 %89, i32 1)
  store %struct.metapage* %90, %struct.metapage** %16, align 8
  %91 = icmp ne %struct.metapage* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %67
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %120

95:                                               ; preds = %67
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.metapage*, %struct.metapage** %16, align 8
  %98 = getelementptr inbounds %struct.metapage, %struct.metapage* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @memcpy(i8* %96, i32 %99, i32 %100)
  %102 = load %struct.metapage*, %struct.metapage** %16, align 8
  %103 = call i32 @release_metapage(%struct.metapage* %102)
  %104 = load i32, i32* @PSIZE, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %95
  %112 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %113 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %12, align 4
  br label %63

119:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %92, %43, %33
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @ea_read_inline(%struct.inode*, %struct.jfs_ea_list*) #1

declare dso_local i32 @sizeDXD(%struct.TYPE_4__*) #1

declare dso_local i32 @jfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @lengthDXD(%struct.TYPE_4__*) #1

declare dso_local i32 @addressDXD(%struct.TYPE_4__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
