; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i64 }
%struct.kernel_lb_addr = type { i32, i64 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i64, i32, i64)* @udf_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @udf_nfs_get_inode(%struct.super_block* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.kernel_lb_addr, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @ESTALE, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %5, align 8
  br label %49

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call %struct.inode* @udf_iget(%struct.super_block* %23, %struct.kernel_lb_addr* %11)
  store %struct.inode* %24, %struct.inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i64 @IS_ERR(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.dentry* @ERR_CAST(%struct.inode* %29)
  store %struct.dentry* %30, %struct.dentry** %5, align 8
  br label %49

31:                                               ; preds = %18
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  %43 = load i32, i32* @ESTALE, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.dentry* @ERR_PTR(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %5, align 8
  br label %49

46:                                               ; preds = %34, %31
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call %struct.dentry* @d_obtain_alias(%struct.inode* %47)
  store %struct.dentry* %48, %struct.dentry** %5, align 8
  br label %49

49:                                               ; preds = %46, %40, %28, %14
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %50
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @udf_iget(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
