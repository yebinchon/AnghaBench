; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_check_range_for_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_check_range_for_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_check_range_for_refcount(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %14, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  %21 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %20)
  %22 = call i32 @ocfs2_refcount_tree(%struct.TYPE_4__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %24, %3
  store i32 0, i32* %4, align 4
  br label %88

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.super_block*, %struct.super_block** %14, align 8
  %40 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = ashr i64 %38, %42
  store i64 %43, i64* %10, align 8
  %44 = load %struct.super_block*, %struct.super_block** %14, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  %48 = call i64 @ocfs2_clusters_for_bytes(%struct.super_block* %44, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %78, %37
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @ocfs2_get_clusters(%struct.inode* %55, i64 %56, i64* %13, i64* %12, i32* %9)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %86

63:                                               ; preds = %54
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %85

72:                                               ; preds = %66, %63
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %51

85:                                               ; preds = %71, %51
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %36
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ocfs2_refcount_tree(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
