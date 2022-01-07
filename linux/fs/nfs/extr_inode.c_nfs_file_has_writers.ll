; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_file_has_writers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_file_has_writers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { i32, %struct.inode }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_inode*)* @nfs_file_has_writers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_file_has_writers(%struct.nfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %3, align 8
  %5 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %5, i32 0, i32 1
  store %struct.inode* %6, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @S_ISREG(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @inode_is_open_for_write(%struct.inode* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @inode_is_open_for_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
