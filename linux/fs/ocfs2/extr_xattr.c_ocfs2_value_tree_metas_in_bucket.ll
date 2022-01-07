; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_value_tree_metas_in_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_value_tree_metas_in_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, %struct.ocfs2_xattr_header*, i32, %struct.ocfs2_xattr_value_root**, %struct.buffer_head**, i8*)* @ocfs2_value_tree_metas_in_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_value_tree_metas_in_bucket(%struct.super_block* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_header* %2, i32 %3, %struct.ocfs2_xattr_value_root** %4, %struct.buffer_head** %5, i8* %6) #0 {
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_xattr_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xattr_value_root**, align 8
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_xattr_header* %2, %struct.ocfs2_xattr_header** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_xattr_value_root** %4, %struct.ocfs2_xattr_value_root*** %12, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = bitcast i8* %16 to %struct.ocfs2_xattr_bucket*
  store %struct.ocfs2_xattr_bucket* %17, %struct.ocfs2_xattr_bucket** %15, align 8
  %18 = load %struct.super_block*, %struct.super_block** %8, align 8
  %19 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.ocfs2_xattr_value_root**, %struct.ocfs2_xattr_value_root*** %12, align 8
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %23 = call i32 @ocfs2_get_xattr_tree_value_root(%struct.super_block* %18, %struct.ocfs2_xattr_bucket* %19, i32 %20, %struct.ocfs2_xattr_value_root** %21, %struct.buffer_head** %22)
  ret i32 %23
}

declare dso_local i32 @ocfs2_get_xattr_tree_value_root(%struct.super_block*, %struct.ocfs2_xattr_bucket*, i32, %struct.ocfs2_xattr_value_root**, %struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
