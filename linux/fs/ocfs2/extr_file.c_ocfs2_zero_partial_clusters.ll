; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_partial_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_partial_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @ocfs2_zero_partial_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_zero_partial_clusters(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocfs2_super* @OCFS2_SB(i32 %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %10, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = call i32 @trace_ocfs2_zero_partial_clusters(i64 %26, i64 %28, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %33, 1
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %131

44:                                               ; preds = %37, %3
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %46 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %47 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %45, i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %131

56:                                               ; preds = %44
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %58, 1
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %56
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = and i32 %66, %71
  %73 = add i32 %65, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %62
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = call i32 @trace_ocfs2_zero_partial_clusters_range1(i64 %81, i64 %83)
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ocfs2_zero_range_for_truncate(%struct.inode* %85, i32* %86, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %95

95:                                               ; preds = %92, %79
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %103 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %104, 1
  %106 = xor i32 %105, -1
  %107 = and i32 %101, %106
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = call i32 @trace_ocfs2_zero_partial_clusters_range2(i64 %109, i64 %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ocfs2_zero_range_for_truncate(%struct.inode* %113, i32* %114, i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %100
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %123

123:                                              ; preds = %120, %100
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32*, i32** %12, align 8
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = call i32 @ocfs2_update_inode_fsync_trans(i32* %125, %struct.inode* %126, i32 1)
  %128 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %128, i32* %129)
  br label %131

131:                                              ; preds = %124, %51, %43
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_zero_partial_clusters(i64, i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_zero_partial_clusters_range1(i64, i64) #1

declare dso_local i32 @ocfs2_zero_range_for_truncate(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_zero_partial_clusters_range2(i64, i64) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
