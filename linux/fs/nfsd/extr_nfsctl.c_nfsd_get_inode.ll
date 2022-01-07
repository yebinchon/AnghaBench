; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsd_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32, i32, i32 }
%struct.super_block = type { i32 }

@NFSD_MaxReserved = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @nfsd_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @nfsd_get_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.inode* @new_inode(%struct.super_block* %7)
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i32, i32* @NFSD_MaxReserved, align 4
  %15 = call i32 @iunique(%struct.super_block* %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @current_time(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  store i32 %22, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 5
  store i32 %22, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %39 [
    i32 128, label %32
  ]

32:                                               ; preds = %12
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call i32 @inc_nlink(%struct.inode* %37)
  br label %39

39:                                               ; preds = %12, %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %41, %struct.inode** %3, align 8
  br label %42

42:                                               ; preds = %40, %11
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %43
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
