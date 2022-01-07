; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c___ocfs2_xattr_set_value_outside.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c___ocfs2_xattr_set_value_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.ocfs2_xattr_value_root* }
%struct.ocfs2_xattr_value_root = type { i32, i32 }
%struct.buffer_head = type { i64 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_value_buf*, i8*, i32)* @__ocfs2_xattr_set_value_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_xattr_set_value_outside(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_value_buf* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_xattr_value_root*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_value_buf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_3__* %31, i64 1)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %18, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @ocfs2_clusters_for_bytes(%struct.TYPE_3__* %36, i32 %37)
  store i64 %38, i64* %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  %39 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %39, i32 0, i32 0
  %41 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %40, align 8
  store %struct.ocfs2_xattr_value_root* %41, %struct.ocfs2_xattr_value_root** %23, align 8
  %42 = load i64, i64* %19, align 8
  %43 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %23, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = icmp sgt i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %50

50:                                               ; preds = %156, %5
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %19, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %160

54:                                               ; preds = %50
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %23, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %57, i32 0, i32 0
  %59 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %55, i64 %56, i64* %15, i64* %16, i32* %58, i32* %22)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %161

65:                                               ; preds = %54
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_3__* %72, i64 %73)
  store i8* %74, i8** %20, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %151, %65
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %18, align 8
  %80 = mul nsw i64 %78, %79
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %156

82:                                               ; preds = %75
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @INODE_CACHE(%struct.inode* %83)
  %85 = load i8*, i8** %20, align 8
  %86 = call i32 @ocfs2_read_block(i32 %84, i8* %85, %struct.buffer_head** %21, i32* null)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %161

92:                                               ; preds = %82
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @INODE_CACHE(%struct.inode* %94)
  %96 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %97 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %98 = call i32 @ocfs2_journal_access(i32* %93, i32 %95, %struct.buffer_head* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %161

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %14, align 4
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %13, align 4
  %114 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @memcpy(i64 %116, i8* %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr i8, i8* %124, i64 %125
  store i8* %126, i8** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %112
  %131 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %132 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i32 @memset(i64 %136, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %130, %112
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %144 = call i32 @ocfs2_journal_dirty(i32* %142, %struct.buffer_head* %143)
  %145 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %146 = call i32 @brelse(%struct.buffer_head* %145)
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  br label %156

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  %154 = load i8*, i8** %20, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %20, align 8
  br label %75

156:                                              ; preds = %149, %75
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %17, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %17, align 8
  br label %50

160:                                              ; preds = %50
  br label %161

161:                                              ; preds = %160, %101, %89, %62
  %162 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load i32, i32* %11, align 4
  ret i32 %164
}

declare dso_local i8* @ocfs2_clusters_to_blocks(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i64, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_block(i32, i8*, %struct.buffer_head**, i32*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
