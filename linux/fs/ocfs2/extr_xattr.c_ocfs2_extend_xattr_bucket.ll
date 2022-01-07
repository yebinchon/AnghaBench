; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_extend_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_extend_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, i32, i32)* @ocfs2_extend_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_xattr_bucket(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_bucket* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %26 = call %struct.TYPE_2__* @bucket_xh(%struct.ocfs2_xattr_bucket* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %33 = call i32 @bucket_blkno(%struct.ocfs2_xattr_bucket* %32)
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @trace_ocfs2_extend_xattr_bucket(i64 %31, i64 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %41 = call i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super* %40)
  %42 = mul nsw i32 %39, %41
  %43 = icmp sge i32 %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %47 = call i32 @bucket_blkno(%struct.ocfs2_xattr_bucket* %46)
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 3, %56
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ocfs2_extend_trans(i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %5
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %112

67:                                               ; preds = %5
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %70 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %71 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %68, %struct.ocfs2_xattr_bucket* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %112

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @ocfs2_cp_xattr_bucket(%struct.inode* %83, i32* %84, i32 %85, i32 %88, i32 0)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %112

93:                                               ; preds = %82
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  br label %78

97:                                               ; preds = %78
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @ocfs2_divide_xattr_bucket(%struct.inode* %98, i32* %99, i32 %100, i32 %103, i32* null, i32 0)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %106 = call %struct.TYPE_2__* @bucket_xh(%struct.ocfs2_xattr_bucket* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @le16_add_cpu(i32* %107, i32 1)
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %8, align 8
  %111 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %109, %struct.ocfs2_xattr_bucket* %110)
  br label %112

112:                                              ; preds = %97, %92, %74, %64
  %113 = load i32, i32* %11, align 4
  ret i32 %113
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @trace_ocfs2_extend_xattr_bucket(i64, i64, i32, i32) #1

declare dso_local i32 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_cp_xattr_bucket(%struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_divide_xattr_bucket(%struct.inode*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
