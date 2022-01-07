; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_dinode_xa_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_init_dinode_xa_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i64, %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_entry*, %struct.buffer_head*, i32*, %struct.inode* }
%struct.ocfs2_xattr_header = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@ocfs2_xa_block_loc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_entry*)* @ocfs2_init_dinode_xa_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_init_dinode_xa_loc(%struct.ocfs2_xa_loc* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_xattr_entry* %3) #0 {
  %5 = alloca %struct.ocfs2_xa_loc*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_xattr_entry*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_xattr_entry* %3, %struct.ocfs2_xattr_entry** %8, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %13, %struct.ocfs2_dinode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %25, i32 0, i32 5
  store %struct.inode* %24, %struct.inode** %26, align 8
  %27 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %27, i32 0, i32 4
  store i32* @ocfs2_xa_block_loc_ops, i32** %28, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %30, i32 0, i32 3
  store %struct.buffer_head* %29, %struct.buffer_head** %31, align 8
  %32 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %33 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %33, i32 0, i32 2
  store %struct.ocfs2_xattr_entry* %32, %struct.ocfs2_xattr_entry** %34, align 8
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  %39 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = inttoptr i64 %51 to %struct.ocfs2_xattr_header*
  %53 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %53, i32 0, i32 1
  store %struct.ocfs2_xattr_header* %52, %struct.ocfs2_xattr_header** %54, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
