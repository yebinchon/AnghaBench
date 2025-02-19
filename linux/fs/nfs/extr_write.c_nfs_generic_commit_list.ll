; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_generic_commit_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_generic_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { i32 }

@PNFS_NOT_ATTEMPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_generic_commit_list(%struct.inode* %0, %struct.list_head* %1, i32 %2, %struct.nfs_commit_info* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_commit_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nfs_commit_info* %3, %struct.nfs_commit_info** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %8, align 8
  %14 = call i32 @pnfs_commit_list(%struct.inode* %10, %struct.list_head* %11, i32 %12, %struct.nfs_commit_info* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @PNFS_NOT_ATTEMPTED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %8, align 8
  %23 = call i32 @nfs_commit_list(%struct.inode* %19, %struct.list_head* %20, i32 %21, %struct.nfs_commit_info* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @pnfs_commit_list(%struct.inode*, %struct.list_head*, i32, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_commit_list(%struct.inode*, %struct.list_head*, i32, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
