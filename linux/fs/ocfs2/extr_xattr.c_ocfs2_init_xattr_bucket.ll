; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_bucket*, i64, i32)* @ocfs2_init_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_xattr_bucket(%struct.ocfs2_xattr_bucket* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_xattr_bucket* %0, %struct.ocfs2_xattr_bucket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %98, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %101

15:                                               ; preds = %9
  %16 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @sb_getblk(i32 %20, i64 %24)
  %26 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %15
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %101

45:                                               ; preds = %15
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @INODE_CACHE(%struct.TYPE_2__* %48)
  %50 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ocfs2_buffer_uptodate(i32 %49, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %97, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @INODE_CACHE(%struct.TYPE_2__* %65)
  %67 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %68 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %66, i32 %73)
  br label %96

75:                                               ; preds = %59
  %76 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %77 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_buffer_uptodate(i32 %82)
  %84 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %85 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i32 @INODE_CACHE(%struct.TYPE_2__* %86)
  %88 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %89 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ocfs2_set_buffer_uptodate(i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %75, %62
  br label %97

97:                                               ; preds = %96, %45
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %9

101:                                              ; preds = %40, %9
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %4, align 8
  %106 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @sb_getblk(i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_buffer_uptodate(i32, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.TYPE_2__*) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(i32) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(i32, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
