; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_file_clear_open_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_file_clear_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.nfs_open_context = type { i64, i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_file_clear_open_context(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %5)
  store %struct.nfs_open_context* %6, %struct.nfs_open_context** %3, align 8
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = icmp ne %struct.nfs_open_context* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.inode* @d_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @invalidate_inode_pages2(i32 %21)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %27 = call i32 @put_nfs_open_context_sync(%struct.nfs_open_context* %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @put_nfs_open_context_sync(%struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
