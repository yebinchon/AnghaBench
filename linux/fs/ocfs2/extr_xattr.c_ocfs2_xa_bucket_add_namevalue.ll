; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_add_namevalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_add_namevalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.ocfs2_xattr_header* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_xattr_header = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, i32)* @ocfs2_xa_bucket_add_namevalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_bucket_add_namevalue(%struct.ocfs2_xa_loc* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_xattr_header*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %10 = call i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %11, i32 0, i32 2
  %13 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  store %struct.ocfs2_xattr_header* %13, %struct.ocfs2_xattr_header** %6, align 8
  %14 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ocfs2_bucket_align_free_start(%struct.super_block* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @le16_add_cpu(i32* %37, i32 %38)
  ret void
}

declare dso_local i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_bucket_align_free_start(%struct.super_block*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
