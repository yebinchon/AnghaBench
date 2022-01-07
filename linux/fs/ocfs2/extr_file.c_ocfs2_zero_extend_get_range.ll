; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_extend_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_extend_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i64*, i64*)* @ocfs2_zero_extend_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_zero_extend_get_range(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @OCFS2_SB(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = ashr i64 %21, %27
  store i64 %28, i64* %17, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @ocfs2_clusters_for_bytes(i32 %31, i64 %32)
  store i64 %33, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %64, %6
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i32 @ocfs2_get_clusters(%struct.inode* %39, i64 %40, i64* %15, i32* %19, i32* %20)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %153

47:                                               ; preds = %38
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %19, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %16, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %69

64:                                               ; preds = %50, %47
  %65 = load i32, i32* %19, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %17, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %17, align 8
  br label %34

69:                                               ; preds = %63, %34
  %70 = load i64, i64* %16, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i64*, i64** %12, align 8
  store i64 0, i64* %73, align 8
  br label %153

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %107, %74
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %18, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @ocfs2_get_clusters(%struct.inode* %82, i64 %85, i64* %15, i32* %19, i32* %20)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %153

92:                                               ; preds = %81
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %92
  br label %112

101:                                              ; preds = %95
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, i32* %19, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %16, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %16, align 8
  br label %75

112:                                              ; preds = %100, %75
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %16, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* %18, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %17, align 8
  %121 = sub nsw i64 %119, %120
  store i64 %121, i64* %16, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i32, i32* @UINT_MAX, align 4
  %131 = call i32 @ocfs2_refcount_cow(%struct.inode* %126, %struct.buffer_head* %127, i64 %128, i64 %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @mlog_errno(i32 %135)
  br label %153

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %122
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %17, align 8
  %143 = call i64 @ocfs2_clusters_to_bytes(i32 %141, i64 %142)
  %144 = load i64*, i64** %11, align 8
  store i64 %143, i64* %144, align 8
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i64 @ocfs2_clusters_to_bytes(i32 %147, i64 %150)
  %152 = load i64*, i64** %12, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %138, %134, %89, %72, %44
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_2__* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i64) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_cow(%struct.inode*, %struct.buffer_head*, i64, i64, i32) #1

declare dso_local i64 @ocfs2_clusters_to_bytes(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
