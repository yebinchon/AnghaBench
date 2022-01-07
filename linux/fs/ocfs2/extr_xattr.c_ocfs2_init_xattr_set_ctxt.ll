; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_set_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_set_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32*, i32, i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, i32, i32*)* @ocfs2_init_xattr_set_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_xattr_set_ctxt(%struct.inode* %0, %struct.ocfs2_dinode* %1, %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search* %4, %struct.ocfs2_xattr_set_ctxt* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_xattr_info*, align 8
  %13 = alloca %struct.ocfs2_xattr_search*, align 8
  %14 = alloca %struct.ocfs2_xattr_search*, align 8
  %15 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %11, align 8
  store %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_info** %12, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %13, align 8
  store %struct.ocfs2_xattr_search* %4, %struct.ocfs2_xattr_search** %14, align 8
  store %struct.ocfs2_xattr_set_ctxt* %5, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %21, align 8
  %26 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %27 = call i32 @memset(%struct.ocfs2_xattr_set_ctxt* %26, i32 0, i32 16)
  %28 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %28, i32 0, i32 2
  %30 = call i32 @ocfs2_init_dealloc_ctxt(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %33 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %12, align 8
  %34 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %35 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %14, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @ocfs2_calc_xattr_set_need(%struct.inode* %31, %struct.ocfs2_dinode* %32, %struct.ocfs2_xattr_info* %33, %struct.ocfs2_xattr_search* %34, %struct.ocfs2_xattr_search* %35, i32* %18, i32* %19, i32* %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %8
  %41 = load i32, i32* %20, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  %43 = load i32, i32* %20, align 4
  store i32 %43, i32* %9, align 4
  br label %104

44:                                               ; preds = %8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %19, align 4
  %48 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %12, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @trace_ocfs2_init_xattr_set_ctxt(i32 %50, i32 %51, i32 %52, i32 %54)
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %44
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %60 = load i32, i32* %19, align 4
  %61 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %61, i32 0, i32 0
  %63 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %59, i32 %60, i32** %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %86

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %77 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %76, i32 0, i32 1
  %78 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %74, i32 %75, i32* %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %84

84:                                               ; preds = %81, %73
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %91 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %96 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ocfs2_free_alloc_context(i32* %97)
  %99 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %15, align 8
  %100 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %89
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %40
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_set_ctxt*, i32, i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @ocfs2_calc_xattr_set_need(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_init_xattr_set_ctxt(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, i32**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
