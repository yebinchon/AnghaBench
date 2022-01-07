; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_ilookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_ilookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.nilfs_iget_args = type { i64, i32, i32, %struct.nilfs_root* }

@nilfs_iget_test = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_ilookup(%struct.super_block* %0, %struct.nilfs_root* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nilfs_iget_args, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %7, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %7, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %7, i32 0, i32 3
  %13 = load %struct.nilfs_root*, %struct.nilfs_root** %5, align 8
  store %struct.nilfs_root* %13, %struct.nilfs_root** %12, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @nilfs_iget_test, align 4
  %17 = call %struct.inode* @ilookup5(%struct.super_block* %14, i64 %15, i32 %16, %struct.nilfs_iget_args* %7)
  ret %struct.inode* %17
}

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i64, i32, %struct.nilfs_iget_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
