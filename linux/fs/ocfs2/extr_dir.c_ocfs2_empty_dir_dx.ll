; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_empty_dir_dx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_empty_dir_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_empty_dir_priv = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_dx_root_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_empty_dir_priv*)* @ocfs2_empty_dir_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_empty_dir_dx(%struct.inode* %0, %struct.ocfs2_empty_dir_priv* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_empty_dir_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_dx_root_block*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_empty_dir_priv* %1, %struct.ocfs2_empty_dir_priv** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %10 = load %struct.ocfs2_empty_dir_priv*, %struct.ocfs2_empty_dir_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @ocfs2_read_inode_block(%struct.inode* %12, %struct.buffer_head** %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mlog_errno(i32 %17)
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %23, %struct.ocfs2_dinode** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %26 = call i32 @ocfs2_read_dx_root(%struct.inode* %24, %struct.ocfs2_dinode* %25, %struct.buffer_head** %7)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %46

32:                                               ; preds = %19
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %36, %struct.ocfs2_dx_root_block** %9, align 8
  %37 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %9, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.ocfs2_empty_dir_priv*, %struct.ocfs2_empty_dir_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %29, %16
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = call i32 @brelse(%struct.buffer_head* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_dx_root(%struct.inode*, %struct.ocfs2_dinode*, %struct.buffer_head**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
