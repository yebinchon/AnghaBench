; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_header_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_free_header_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.xfs_mount = type { i32, i32 }
%struct.xfs_buf = type { %struct.xfs_dir3_free_hdr* }
%struct.xfs_dir3_free_hdr = type { i32, i32, i32 }
%struct.xfs_dir2_free_hdr = type { i32, i32, i32 }

@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_inode*, i32, %struct.xfs_buf*)* @xfs_dir3_free_header_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dir3_free_header_check(%struct.xfs_inode* %0, i32 %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dir3_free_hdr*, align 8
  %12 = alloca %struct.xfs_dir2_free_hdr*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %8, align 8
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %20(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %26 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @xfs_dir2_da_to_db(i32 %27, i32 %28)
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %34 = call i32 @xfs_dir2_byte_to_db(i32 %32, i32 %33)
  %35 = sub nsw i32 %29, %34
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 0
  %40 = call i64 @xfs_sb_version_hascrc(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %3
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %43, i32 0, i32 0
  %45 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %44, align 8
  store %struct.xfs_dir3_free_hdr* %45, %struct.xfs_dir3_free_hdr** %11, align 8
  %46 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32*, i32** @__this_address, align 8
  store i32* %53, i32** %4, align 8
  br label %112

54:                                               ; preds = %42
  %55 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %11, align 8
  %56 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32*, i32** @__this_address, align 8
  store i32* %62, i32** %4, align 8
  br label %112

63:                                               ; preds = %54
  %64 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %11, align 8
  %65 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %11, align 8
  %69 = getelementptr inbounds %struct.xfs_dir3_free_hdr, %struct.xfs_dir3_free_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32*, i32** @__this_address, align 8
  store i32* %74, i32** %4, align 8
  br label %112

75:                                               ; preds = %63
  br label %111

76:                                               ; preds = %3
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %78 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %77, i32 0, i32 0
  %79 = load %struct.xfs_dir3_free_hdr*, %struct.xfs_dir3_free_hdr** %78, align 8
  %80 = bitcast %struct.xfs_dir3_free_hdr* %79 to %struct.xfs_dir2_free_hdr*
  store %struct.xfs_dir2_free_hdr* %80, %struct.xfs_dir2_free_hdr** %12, align 8
  %81 = load %struct.xfs_dir2_free_hdr*, %struct.xfs_dir2_free_hdr** %12, align 8
  %82 = getelementptr inbounds %struct.xfs_dir2_free_hdr, %struct.xfs_dir2_free_hdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32*, i32** @__this_address, align 8
  store i32* %88, i32** %4, align 8
  br label %112

89:                                               ; preds = %76
  %90 = load %struct.xfs_dir2_free_hdr*, %struct.xfs_dir2_free_hdr** %12, align 8
  %91 = getelementptr inbounds %struct.xfs_dir2_free_hdr, %struct.xfs_dir2_free_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32*, i32** @__this_address, align 8
  store i32* %97, i32** %4, align 8
  br label %112

98:                                               ; preds = %89
  %99 = load %struct.xfs_dir2_free_hdr*, %struct.xfs_dir2_free_hdr** %12, align 8
  %100 = getelementptr inbounds %struct.xfs_dir2_free_hdr, %struct.xfs_dir2_free_hdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = load %struct.xfs_dir2_free_hdr*, %struct.xfs_dir2_free_hdr** %12, align 8
  %104 = getelementptr inbounds %struct.xfs_dir2_free_hdr, %struct.xfs_dir2_free_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32*, i32** @__this_address, align 8
  store i32* %109, i32** %4, align 8
  br label %112

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %75
  store i32* null, i32** %4, align 8
  br label %112

112:                                              ; preds = %111, %108, %96, %87, %73, %61, %52
  %113 = load i32*, i32** %4, align 8
  ret i32* %113
}

declare dso_local i32 @xfs_dir2_da_to_db(i32, i32) #1

declare dso_local i32 @xfs_dir2_byte_to_db(i32, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
