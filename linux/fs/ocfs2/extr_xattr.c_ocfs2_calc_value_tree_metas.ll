; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_calc_value_tree_metas.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_calc_value_tree_metas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_value_tree_metas = type { i32, i32, i32 }
%struct.ocfs2_xattr_header = type { i32 }

@ocfs2_value_tree_metas_in_bucket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_calc_value_tree_metas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_value_tree_metas(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ocfs2_value_tree_metas*, align 8
  %8 = alloca %struct.ocfs2_xattr_header*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ocfs2_value_tree_metas*
  store %struct.ocfs2_value_tree_metas* %10, %struct.ocfs2_value_tree_metas** %7, align 8
  %11 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %18, %struct.ocfs2_xattr_header** %8, align 8
  %19 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_value_tree_metas*, %struct.ocfs2_value_tree_metas** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %37 = load %struct.ocfs2_value_tree_metas*, %struct.ocfs2_value_tree_metas** %7, align 8
  %38 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %37, i32 0, i32 2
  %39 = load %struct.ocfs2_value_tree_metas*, %struct.ocfs2_value_tree_metas** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %39, i32 0, i32 1
  %41 = load %struct.ocfs2_value_tree_metas*, %struct.ocfs2_value_tree_metas** %7, align 8
  %42 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %41, i32 0, i32 0
  %43 = load i32, i32* @ocfs2_value_tree_metas_in_bucket, align 4
  %44 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %45 = call i32 @ocfs2_value_metas_in_xattr_header(i32 %30, %struct.TYPE_2__* %35, %struct.ocfs2_xattr_header* %36, i32* %38, i32* %40, i32* %42, i32 %43, %struct.ocfs2_xattr_bucket* %44)
  ret i32 %45
}

declare dso_local i32 @ocfs2_value_metas_in_xattr_header(i32, %struct.TYPE_2__*, %struct.ocfs2_xattr_header*, i32*, i32*, i32*, i32, %struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
