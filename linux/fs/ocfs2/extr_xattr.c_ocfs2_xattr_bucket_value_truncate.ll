; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ocfs2_xattr_bucket = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xattr_entry = type { i32, i32, i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_value_buf = type { %struct.TYPE_4__*, %struct.ocfs2_xattr_value_root*, i32 }
%struct.ocfs2_xattr_value_root = type { i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@OCFS2_XATTR_ROOT_SIZE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i32, i32, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_bucket_value_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_value_truncate(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i32 %2, i32 %3, %struct.ocfs2_xattr_set_ctxt* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_xattr_entry*, align 8
  %15 = alloca %struct.ocfs2_xattr_header*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_xattr_set_ctxt* %4, %struct.ocfs2_xattr_set_ctxt** %10, align 8
  %18 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %19 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %18)
  store %struct.ocfs2_xattr_header* %19, %struct.ocfs2_xattr_header** %15, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = bitcast %struct.ocfs2_xattr_value_buf* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %17, i32 0, i32 2
  %27 = load i32, i32* @ocfs2_journal_access, align 4
  store i32 %27, i32* %26, align 8
  %28 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %15, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %28, i32 0, i32 0
  %30 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %30, i64 %32
  store %struct.ocfs2_xattr_entry* %33, %struct.ocfs2_xattr_entry** %14, align 8
  %34 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %35 = icmp ne %struct.ocfs2_xattr_entry* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %38 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %5
  %41 = phi i1 [ true, %5 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @OCFS2_XATTR_SIZE(i32 %50)
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %16, align 8
  %56 = udiv i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @OCFS2_XATTR_ROOT_SIZE, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %16, align 8
  %66 = udiv i64 %64, %65
  %67 = icmp ne i64 %59, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %71 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %17, i32 0, i32 0
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %77, align 8
  %78 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %17, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %17, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %16, align 8
  %91 = urem i64 %89, %90
  %92 = add i64 %87, %91
  %93 = inttoptr i64 %92 to %struct.ocfs2_xattr_value_root*
  %94 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %17, i32 0, i32 1
  store %struct.ocfs2_xattr_value_root* %93, %struct.ocfs2_xattr_value_root** %94, align 8
  %95 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %96 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @trace_ocfs2_xattr_bucket_value_truncate(i64 %96, i32 %97, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %10, align 8
  %103 = call i32 @ocfs2_xattr_value_truncate(%struct.inode* %100, %struct.ocfs2_xattr_value_buf* %17, i32 %101, %struct.ocfs2_xattr_set_ctxt* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %40
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %131

109:                                              ; preds = %40
  %110 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %10, align 8
  %111 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %114 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %115 = call i32 @ocfs2_xattr_bucket_journal_access(i32 %112, %struct.ocfs2_xattr_bucket* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %131

121:                                              ; preds = %109
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @cpu_to_le64(i32 %122)
  %124 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %125 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %10, align 8
  %127 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %130 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32 %128, %struct.ocfs2_xattr_bucket* %129)
  br label %131

131:                                              ; preds = %121, %118, %106
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @trace_ocfs2_xattr_bucket_value_truncate(i64, i32, i32) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_value_truncate(%struct.inode*, %struct.ocfs2_xattr_value_buf*, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32, %struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
