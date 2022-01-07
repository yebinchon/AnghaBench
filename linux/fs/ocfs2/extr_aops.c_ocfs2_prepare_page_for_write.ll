; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_prepare_page_for_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_prepare_page_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { %struct.page* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_write_ctxt*, %struct.page*, i32, i32, i32, i32)* @ocfs2_prepare_page_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_page_for_write(%struct.inode* %0, i32* %1, %struct.ocfs2_write_ctxt* %2, %struct.page* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_write_ctxt*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.ocfs2_write_ctxt* %2, %struct.ocfs2_write_ctxt** %11, align 8
  store %struct.page* %3, %struct.page** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OCFS2_SB(i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @ocfs2_figure_cluster_boundaries(i32 %27, i32 %28, i32* %20, i32* %21)
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = call i64 @i_size_read(%struct.inode* %31)
  %33 = load %struct.page*, %struct.page** %12, align 8
  %34 = call i32 @page_offset(%struct.page* %33)
  %35 = sext i32 %34 to i64
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %8
  %38 = load %struct.page*, %struct.page** %12, align 8
  %39 = call i32 @page_offset(%struct.page* %38)
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %39, %40
  br label %42

42:                                               ; preds = %37, %8
  %43 = phi i1 [ false, %8 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = or i32 %30, %44
  store i32 %45, i32* %16, align 4
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %11, align 8
  %48 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %47, i32 0, i32 0
  %49 = load %struct.page*, %struct.page** %48, align 8
  %50 = icmp eq %struct.page* %46, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @ocfs2_map_page_blocks(%struct.page* %62, i32* %63, %struct.inode* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %17, align 4
  br label %77

69:                                               ; preds = %51
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @ocfs2_map_page_blocks(%struct.page* %70, i32* %71, %struct.inode* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %69, %61
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %133

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %20, align 4
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %88, %83
  br label %113

92:                                               ; preds = %42
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @BUG_ON(i32 %96)
  %98 = load i32, i32* %20, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %21, align 4
  store i32 %99, i32* %19, align 4
  %100 = load %struct.page*, %struct.page** %12, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @ocfs2_map_page_blocks(%struct.page* %100, i32* %101, %struct.inode* %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %133

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %91
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.page*, %struct.page** %12, align 8
  %118 = call i32 @PageUptodate(%struct.page* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %116
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @OCFS2_SB(i32 %124)
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @ocfs2_clear_page_regions(%struct.page* %121, i32 %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %120, %116, %113
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = call i32 @flush_dcache_page(%struct.page* %131)
  br label %133

133:                                              ; preds = %130, %109, %80
  %134 = load i32, i32* %17, align 4
  ret i32 %134
}

declare dso_local i32 @ocfs2_figure_cluster_boundaries(i32, i32, i32*, i32*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @ocfs2_map_page_blocks(%struct.page*, i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_clear_page_regions(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
