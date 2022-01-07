; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_get_xattr_tree_value_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_get_xattr_tree_value_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_xattr_bucket = type { %struct.buffer_head** }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_xattr_bucket*, i32, %struct.ocfs2_xattr_value_root**, %struct.buffer_head**)* @ocfs2_get_xattr_tree_value_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_xattr_tree_value_root(%struct.super_block* %0, %struct.ocfs2_xattr_bucket* %1, i32 %2, %struct.ocfs2_xattr_value_root** %3, %struct.buffer_head** %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_xattr_value_root**, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_xattr_header*, align 8
  %15 = alloca %struct.ocfs2_xattr_entry*, align 8
  %16 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_xattr_value_root** %3, %struct.ocfs2_xattr_value_root*** %9, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  %17 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %18 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %17)
  store %struct.ocfs2_xattr_header* %18, %struct.ocfs2_xattr_header** %14, align 8
  %19 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %14, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %19, i32 0, i32 0
  %21 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %21, i64 %23
  store %struct.ocfs2_xattr_entry* %24, %struct.ocfs2_xattr_entry** %15, align 8
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %27 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ocfs2_xattr_bucket_get_name_value(%struct.super_block* %25, %struct.ocfs2_xattr_header* %27, i32 %28, i32* %12, i32* %13)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %63

35:                                               ; preds = %5
  %36 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %36, i32 %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OCFS2_XATTR_SIZE(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %42, i64 %47
  %49 = bitcast i8* %48 to %struct.ocfs2_xattr_value_root*
  %50 = load %struct.ocfs2_xattr_value_root**, %struct.ocfs2_xattr_value_root*** %9, align 8
  store %struct.ocfs2_xattr_value_root* %49, %struct.ocfs2_xattr_value_root** %50, align 8
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %52 = icmp ne %struct.buffer_head** %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %35
  %54 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %54, i32 0, i32 0
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 %58
  %60 = load %struct.buffer_head*, %struct.buffer_head** %59, align 8
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %60, %struct.buffer_head** %61, align 8
  br label %62

62:                                               ; preds = %53, %35
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_get_name_value(%struct.super_block*, %struct.ocfs2_xattr_header*, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
