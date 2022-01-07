; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Entered squashfs_readpage, page index %lx, start block %llx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@SQUASHFS_INVALID_BLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @squashfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @squashfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.squashfs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %23, align 8
  store %struct.squashfs_sb_info* %24, %struct.squashfs_sb_info** %7, align 8
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = sub nsw i32 %30, %31
  %33 = ashr i32 %27, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @i_size_read(%struct.inode* %34)
  %36 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %2
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @i_size_read(%struct.inode* %44)
  %46 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %47 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %45, %49
  br label %55

51:                                               ; preds = %2
  %52 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %53 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i32 [ %50, %43 ], [ %54, %51 ]
  store i32 %56, i32* %10, align 4
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call %struct.TYPE_6__* @squashfs_i(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = getelementptr inbounds %struct.page, %struct.page* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i32 @i_size_read(%struct.inode* %68)
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = icmp sge i32 %67, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %121

77:                                               ; preds = %55
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call %struct.TYPE_6__* @squashfs_i(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SQUASHFS_INVALID_BLK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81, %77
  store i32 0, i32* %13, align 4
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @read_blocklist(%struct.inode* %89, i32 %90, i32* %13)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %118

95:                                               ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.page*, %struct.page** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @squashfs_readpage_sparse(%struct.page* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  br label %108

102:                                              ; preds = %95
  %103 = load %struct.page*, %struct.page** %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @squashfs_readpage_block(%struct.page* %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %102, %98
  br label %113

109:                                              ; preds = %81
  %110 = load %struct.page*, %struct.page** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @squashfs_readpage_fragment(%struct.page* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %140

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %94
  %119 = load %struct.page*, %struct.page** %5, align 8
  %120 = call i32 @SetPageError(%struct.page* %119)
  br label %121

121:                                              ; preds = %118, %76
  %122 = load %struct.page*, %struct.page** %5, align 8
  %123 = call i8* @kmap_atomic(%struct.page* %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = call i32 @memset(i8* %124, i32 0, i32 %125)
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @kunmap_atomic(i8* %127)
  %129 = load %struct.page*, %struct.page** %5, align 8
  %130 = call i32 @flush_dcache_page(%struct.page* %129)
  %131 = load %struct.page*, %struct.page** %5, align 8
  %132 = call i32 @PageError(%struct.page* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %121
  %135 = load %struct.page*, %struct.page** %5, align 8
  %136 = call i32 @SetPageUptodate(%struct.page* %135)
  br label %137

137:                                              ; preds = %134, %121
  %138 = load %struct.page*, %struct.page** %5, align 8
  %139 = call i32 @unlock_page(%struct.page* %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %137, %116
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @squashfs_i(%struct.inode*) #1

declare dso_local i32 @read_blocklist(%struct.inode*, i32, i32*) #1

declare dso_local i32 @squashfs_readpage_sparse(%struct.page*, i32) #1

declare dso_local i32 @squashfs_readpage_block(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @squashfs_readpage_fragment(%struct.page*, i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
