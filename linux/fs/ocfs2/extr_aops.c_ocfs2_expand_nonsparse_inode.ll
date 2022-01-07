; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_expand_nonsparse_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_expand_nonsparse_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_write_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_write_ctxt*)* @ocfs2_expand_nonsparse_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_expand_nonsparse_inode(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, %struct.ocfs2_write_ctxt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_write_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_write_ctxt* %4, %struct.ocfs2_write_ctxt** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OCFS2_SB(i32 %19)
  %21 = call i32 @ocfs2_sparse_alloc(i32 %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @i_size_read(%struct.inode* %24)
  %26 = icmp ule i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %53

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ocfs2_extend_no_holes(%struct.inode* %29, %struct.buffer_head* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %11, align 8
  %41 = icmp ne %struct.ocfs2_write_ctxt* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @i_size_read(%struct.inode* %46)
  %48 = call i32 @ocfs2_clusters_for_bytes(i32 %45, i32 %47)
  %49 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %11, align 8
  %50 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %27
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_sparse_alloc(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_extend_no_holes(%struct.inode*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
