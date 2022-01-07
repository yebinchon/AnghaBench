; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { i32*, i64, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_xa_loc = type { i32* }

@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_ibody_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_set(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_info*, align 8
  %8 = alloca %struct.ocfs2_xattr_search*, align 8
  %9 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  %12 = alloca %struct.ocfs2_xa_loc, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %7, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %8, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 1
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %30 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %41 = call i32 @ocfs2_xattr_ibody_init(%struct.inode* %36, i32 %39, %struct.ocfs2_xattr_set_ctxt* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %90

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i32* [ null, %63 ], [ %67, %64 ]
  %70 = call i32 @ocfs2_init_dinode_xa_loc(%struct.ocfs2_xa_loc* %12, %struct.inode* %55, i32 %58, i32* %69)
  %71 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %7, align 8
  %72 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %73 = call i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc* %12, %struct.ocfs2_xattr_info* %71, %struct.ocfs2_xattr_set_ctxt* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %90

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %89 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %85, %84, %52
  %91 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %92 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %91, i32 0, i32 1
  %93 = call i32 @up_write(i32* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %22
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ocfs2_xattr_ibody_init(%struct.inode*, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_dinode_xa_loc(%struct.ocfs2_xa_loc*, %struct.inode*, i32, i32*) #1

declare dso_local i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
