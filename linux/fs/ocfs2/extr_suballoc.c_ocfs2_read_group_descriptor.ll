; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_read_group_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_read_group_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i32 }

@ocfs2_validate_group_descriptor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_group_descriptor(%struct.inode* %0, %struct.ocfs2_dinode* %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  %11 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @INODE_CACHE(%struct.inode* %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ocfs2_validate_group_descriptor, align 4
  %17 = call i32 @ocfs2_read_block(i32 %14, i32 %15, %struct.buffer_head** %10, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %41

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %27 = call i32 @ocfs2_validate_gd_parent(i32 %24, %struct.ocfs2_dinode* %25, %struct.buffer_head* %26, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30, %20
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @ocfs2_read_block(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_validate_gd_parent(i32, %struct.ocfs2_dinode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
