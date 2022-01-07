; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"get_blocks() failed, block = %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.address_space*, i64)* @ocfs2_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_bmap(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %9, align 8
  %14 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @trace_ocfs2_bmap(i64 %16, i64 %17)
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %88

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call i32 @INODE_JOURNAL(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call i32 @ocfs2_inode_lock(%struct.inode* %28, i32* null, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %79

41:                                               ; preds = %27
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @down_read(i32* %44)
  br label %46

46:                                               ; preds = %41, %23
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %55, i64 %56, i64* %7, i32* null, i32* null)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call i32 @INODE_JOURNAL(%struct.inode* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @up_read(i32* %65)
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call i32 @ocfs2_inode_unlock(%struct.inode* %67, i32 0)
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @ML_ERROR, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @mlog(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %72, %40
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %85

83:                                               ; preds = %79
  %84 = load i64, i64* %7, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i64 [ 0, %82 ], [ %84, %83 ]
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %85, %22
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i32 @trace_ocfs2_bmap(i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @INODE_JOURNAL(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
