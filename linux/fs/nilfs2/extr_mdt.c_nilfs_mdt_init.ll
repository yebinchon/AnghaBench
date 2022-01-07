; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32*, i32, %struct.nilfs_mdt_info* }
%struct.TYPE_2__ = type { i32* }
%struct.nilfs_mdt_info = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@def_mdt_iops = common dso_local global i32 0, align 4
@def_mdt_fops = common dso_local global i32 0, align 4
@def_mdt_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_init(%struct.inode* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_mdt_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @max(i32 4, i64 %9)
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.nilfs_mdt_info* @kzalloc(i32 %10, i32 %11)
  store %struct.nilfs_mdt_info* %12, %struct.nilfs_mdt_info** %8, align 8
  %13 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %8, align 8
  %14 = icmp ne %struct.nilfs_mdt_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %8, align 8
  %20 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %19, i32 0, i32 0
  %21 = call i32 @init_rwsem(i32* %20)
  %22 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 4
  store %struct.nilfs_mdt_info* %22, %struct.nilfs_mdt_info** %24, align 8
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mapping_set_gfp_mask(%struct.TYPE_2__* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  store i32* @def_mdt_iops, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32* @def_mdt_fops, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* @def_mdt_aops, i32** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %18, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.nilfs_mdt_info* @kzalloc(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
