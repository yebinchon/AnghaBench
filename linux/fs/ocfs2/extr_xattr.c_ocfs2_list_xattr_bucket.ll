; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_list_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_list_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_tree_list = type { i32, i32, i32 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.TYPE_3__ = type { %struct.ocfs2_xattr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_list_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_list_xattr_bucket(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_xattr_tree_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.ocfs2_xattr_tree_list*
  store %struct.ocfs2_xattr_tree_list* %16, %struct.ocfs2_xattr_tree_list** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %74, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %20 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %17
  %26 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %27 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %29, i64 %31
  store %struct.ocfs2_xattr_entry* %32, %struct.ocfs2_xattr_entry** %14, align 8
  %33 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %34 = call i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %39 = call %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket* %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ocfs2_xattr_bucket_get_name_value(i32 %37, %struct.TYPE_3__* %39, i32 %40, i32* %11, i32* %12)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %77

45:                                               ; preds = %25
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @bucket_block(%struct.ocfs2_xattr_bucket* %46, i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %13, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ocfs2_xattr_tree_list*, %struct.ocfs2_xattr_tree_list** %9, align 8
  %63 = getelementptr inbounds %struct.ocfs2_xattr_tree_list, %struct.ocfs2_xattr_tree_list* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %14, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ocfs2_xattr_list_entry(i32 %55, i32 %58, i32 %61, i32* %63, i32 %64, i8* %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %77

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %17

77:                                               ; preds = %72, %44, %17
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xattr_bucket_get_name_value(i32, %struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i64 @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_list_entry(i32, i32, i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
