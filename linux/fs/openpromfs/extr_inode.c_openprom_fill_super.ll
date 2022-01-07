; ModuleID = '/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openprom_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openprom_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32 }
%struct.op_inode_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SB_NOATIME = common dso_local global i32 0, align 4
@OPENPROM_SUPER_MAGIC = common dso_local global i32 0, align 4
@openprom_sops = common dso_local global i32 0, align 4
@OPENPROM_ROOT_INO = common dso_local global i32 0, align 4
@op_inode_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"openprom_fill_super: get root inode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @openprom_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openprom_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.op_inode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %9 = load i32, i32* @SB_NOATIME, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  store i32 1024, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 1
  store i32 10, i32* %17, align 4
  %18 = load i32, i32* @OPENPROM_SUPER_MAGIC, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 4
  store i32* @openprom_sops, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* @OPENPROM_ROOT_INO, align 4
  %27 = call %struct.inode* @openprom_iget(%struct.super_block* %25, i32 %26)
  store %struct.inode* %27, %struct.inode** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %8, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call %struct.op_inode_info* @OP_I(%struct.inode* %35)
  store %struct.op_inode_info* %36, %struct.op_inode_info** %7, align 8
  %37 = load i32, i32* @op_inode_node, align 4
  %38 = load %struct.op_inode_info*, %struct.op_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = call i32 @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.op_inode_info*, %struct.op_inode_info** %7, align 8
  %42 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @d_make_root(%struct.inode* %44)
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %34
  br label %54

53:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %52
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %31
  %58 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.inode* @openprom_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.op_inode_info* @OP_I(%struct.inode*) #1

declare dso_local i32 @of_find_node_by_path(i8*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
