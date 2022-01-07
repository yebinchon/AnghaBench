; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_begin_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_begin_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32*, %struct.TYPE_4__*, %struct.page*, %struct.page** }
%struct.TYPE_4__ = type { i64 }
%struct.page = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.inode*, %struct.ocfs2_write_ctxt*)* @ocfs2_write_begin_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_begin_inline(%struct.address_space* %0, %struct.inode* %1, %struct.ocfs2_write_ctxt* %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_write_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ocfs2_write_ctxt* %2, %struct.ocfs2_write_ctxt** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %8, align 8
  %16 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %11, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %23 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %24 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %22, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %107

33:                                               ; preds = %3
  %34 = load %struct.address_space*, %struct.address_space** %4, align 8
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.page* @find_or_create_page(%struct.address_space* %34, i32 0, i32 %35)
  store %struct.page* %36, %struct.page** %9, align 8
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %40, i32* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %107

47:                                               ; preds = %33
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %49, i32 0, i32 3
  store %struct.page* %48, %struct.page** %50, align 8
  %51 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %51, i32 0, i32 4
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 0
  store %struct.page* %48, %struct.page** %54, align 8
  %55 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %56 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @INODE_CACHE(%struct.inode* %58)
  %60 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %64 = call i32 @ocfs2_journal_access_di(i32* %57, i32 %59, %struct.TYPE_4__* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %47
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %68, i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %107

73:                                               ; preds = %47
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %84 = call i32 @ocfs2_set_inode_data_inline(%struct.inode* %82, %struct.ocfs2_dinode* %83)
  br label %85

85:                                               ; preds = %81, %73
  %86 = load %struct.page*, %struct.page** %9, align 8
  %87 = call i32 @PageUptodate(%struct.page* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %85
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = load %struct.page*, %struct.page** %9, align 8
  %92 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %93 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @ocfs2_read_inline_data(%struct.inode* %90, %struct.page* %91, %struct.TYPE_4__* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %99, i32* %100)
  br label %107

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %85
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %106 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  br label %107

107:                                              ; preds = %103, %98, %67, %39, %28
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_inode_data_inline(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_read_inline_data(%struct.inode*, %struct.page*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
