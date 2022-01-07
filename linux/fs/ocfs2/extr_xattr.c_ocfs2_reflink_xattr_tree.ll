; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_reflink = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_reflink_xattr_tree_args = type { i8*, i8*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_xattr_reflink* }

@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_reflink_xattr_rec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_reflink*, %struct.buffer_head*, %struct.buffer_head*)* @ocfs2_reflink_xattr_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_tree(%struct.ocfs2_xattr_reflink* %0, %struct.buffer_head* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_xattr_reflink*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_reflink_xattr_tree_args, align 8
  store %struct.ocfs2_xattr_reflink* %0, %struct.ocfs2_xattr_reflink** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %10 = call i32 @memset(%struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 40)
  %11 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 4
  store %struct.ocfs2_xattr_reflink* %11, %struct.ocfs2_xattr_reflink** %12, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 3
  store %struct.buffer_head* %13, %struct.buffer_head** %14, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 2
  store %struct.buffer_head* %15, %struct.buffer_head** %16, align 8
  %17 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ocfs2_xattr_bucket_new(i32 %19)
  %21 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @mlog_errno(i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %3
  %32 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ocfs2_xattr_bucket_new(i32 %34)
  %36 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %58

45:                                               ; preds = %31
  %46 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = load i32, i32* @ocfs2_reflink_xattr_rec, align 4
  %51 = call i32 @ocfs2_iterate_xattr_index_block(i32 %48, %struct.buffer_head* %49, i32 %50, %struct.ocfs2_reflink_xattr_tree_args* %9)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @ocfs2_xattr_bucket_free(i8* %60)
  %62 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %9, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @ocfs2_xattr_bucket_free(i8* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.ocfs2_reflink_xattr_tree_args*, i32, i32) #1

declare dso_local i8* @ocfs2_xattr_bucket_new(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_iterate_xattr_index_block(i32, %struct.buffer_head*, i32, %struct.ocfs2_reflink_xattr_tree_args*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
