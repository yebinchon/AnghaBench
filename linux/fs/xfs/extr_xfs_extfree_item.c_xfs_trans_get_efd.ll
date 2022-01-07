; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_trans_get_efd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_trans_get_efd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_efd_log_item = type { i32, %struct.TYPE_3__, %struct.xfs_efi_log_item* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_efi_log_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFS_EFD_MAX_FAST_EXTENTS = common dso_local global i32 0, align 4
@xfs_efd_zone = common dso_local global i32 0, align 4
@XFS_LI_EFD = common dso_local global i32 0, align 4
@xfs_efd_item_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_efd_log_item* (%struct.xfs_trans*, %struct.xfs_efi_log_item*, i32)* @xfs_trans_get_efd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_efd_log_item* @xfs_trans_get_efd(%struct.xfs_trans* %0, %struct.xfs_efi_log_item* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_efi_log_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_efd_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_efi_log_item* %1, %struct.xfs_efi_log_item** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ugt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @XFS_EFD_MAX_FAST_EXTENTS, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 24, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.xfs_efd_log_item* @kmem_zalloc(i32 %21, i32 0)
  store %struct.xfs_efd_log_item* %22, %struct.xfs_efd_log_item** %7, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @xfs_efd_zone, align 4
  %25 = call %struct.xfs_efd_log_item* @kmem_zone_zalloc(i32 %24, i32 0)
  store %struct.xfs_efd_log_item* %25, %struct.xfs_efd_log_item** %7, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %30, i32 0, i32 0
  %32 = load i32, i32* @XFS_LI_EFD, align 4
  %33 = call i32 @xfs_log_item_init(i32 %29, i32* %31, i32 %32, i32* @xfs_efd_item_ops)
  %34 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %35 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %35, i32 0, i32 2
  store %struct.xfs_efi_log_item* %34, %struct.xfs_efi_log_item** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %46 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %49 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %49, i32 0, i32 0
  %51 = call i32 @xfs_trans_add_item(%struct.xfs_trans* %48, i32* %50)
  %52 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %7, align 8
  ret %struct.xfs_efd_log_item* %52
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_efd_log_item* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.xfs_efd_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @xfs_trans_add_item(%struct.xfs_trans*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
