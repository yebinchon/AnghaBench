; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_fs_commit_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_fs_commit_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i64, i64 }
%struct.iattr = type { i32, i64 }
%struct.xfs_inode = type { %struct.TYPE_3__, %struct.xfs_mount* }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_commit_blocks(%struct.inode* %0, %struct.iomap* %1, i32 %2, %struct.iattr* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.iomap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.iomap* %1, %struct.iomap** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.iattr* %3, %struct.iattr** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.xfs_inode* @XFS_I(%struct.inode* %19)
  store %struct.xfs_inode* %20, %struct.xfs_inode** %9, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %10, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.iattr*, %struct.iattr** %8, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATTR_ATIME, align 4
  %28 = load i32, i32* @ATTR_CTIME, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATTR_MTIME, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %35 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %36 = call i32 @xfs_ilock(%struct.xfs_inode* %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i64 @i_size_read(%struct.inode* %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.iattr*, %struct.iattr** %8, align 8
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ATTR_SIZE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %4
  %46 = load %struct.iattr*, %struct.iattr** %8, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  %52 = load %struct.iattr*, %struct.iattr** %8, align 8
  %53 = getelementptr inbounds %struct.iattr, %struct.iattr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %51, %45, %4
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %114, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %56
  %61 = load %struct.iomap*, %struct.iomap** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.iomap, %struct.iomap* %61, i64 %63
  %65 = getelementptr inbounds %struct.iomap, %struct.iomap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %15, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %114

71:                                               ; preds = %60
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.iomap*, %struct.iomap** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iomap, %struct.iomap* %73, i64 %75
  %77 = getelementptr inbounds %struct.iomap, %struct.iomap* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %72, %78
  store i64 %79, i64* %18, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i64, i64* %15, align 8
  store i64 %84, i64* %18, align 8
  br label %85

85:                                               ; preds = %83, %71
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %114

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @PAGE_SHIFT, align 8
  %98 = ashr i64 %96, %97
  %99 = load i64, i64* %18, align 8
  %100 = sub nsw i64 %99, 1
  %101 = load i64, i64* @PAGE_SHIFT, align 8
  %102 = ashr i64 %100, %101
  %103 = call i32 @invalidate_inode_pages2_range(i32 %95, i64 %98, i64 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @WARN_ON_ONCE(i32 %104)
  %106 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @xfs_iomap_write_unwritten(%struct.xfs_inode* %106, i64 %107, i64 %108, i32 0)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %92
  br label %171

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %113, %91, %70
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %56

117:                                              ; preds = %56
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %122 = load i64, i64* %15, align 8
  %123 = call i32 @xfs_pnfs_validate_isize(%struct.xfs_inode* %121, i64 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %171

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %117
  %129 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %131 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %129, i32* %132, i32 0, i32 0, i32 0, %struct.xfs_trans** %11)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %171

137:                                              ; preds = %128
  %138 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %139 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %140 = call i32 @xfs_ilock(%struct.xfs_inode* %138, i32 %139)
  %141 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %142 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %143 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %144 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %141, %struct.xfs_inode* %142, i32 %143)
  %145 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %146 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %147 = load i32, i32* @XFS_ILOG_CORE, align 4
  %148 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %145, %struct.xfs_inode* %146, i32 %147)
  %149 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %150 = load %struct.iattr*, %struct.iattr** %8, align 8
  %151 = call i32 @xfs_setattr_time(%struct.xfs_inode* %149, %struct.iattr* %150)
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %137
  %155 = load %struct.inode*, %struct.inode** %5, align 8
  %156 = load %struct.iattr*, %struct.iattr** %8, align 8
  %157 = getelementptr inbounds %struct.iattr, %struct.iattr* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @i_size_write(%struct.inode* %155, i64 %158)
  %160 = load %struct.iattr*, %struct.iattr** %8, align 8
  %161 = getelementptr inbounds %struct.iattr, %struct.iattr* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %164 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %154, %137
  %167 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %168 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %167)
  %169 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %170 = call i32 @xfs_trans_commit(%struct.xfs_trans* %169)
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %166, %136, %126, %112
  %172 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %173 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %174 = call i32 @xfs_iunlock(%struct.xfs_inode* %172, i32 %173)
  %175 = load i32, i32* %13, align 4
  ret i32 %175
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_pages2_range(i32, i64, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xfs_iomap_write_unwritten(%struct.xfs_inode*, i64, i64, i32) #1

declare dso_local i32 @xfs_pnfs_validate_isize(%struct.xfs_inode*, i64) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_setattr_time(%struct.xfs_inode*, %struct.iattr*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
