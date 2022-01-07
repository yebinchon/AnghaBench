; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_efi_log_item = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.xfs_mount = type { i32 }

@XFS_EFI_MAX_FAST_EXTENTS = common dso_local global i32 0, align 4
@xfs_efi_zone = common dso_local global i32 0, align 4
@XFS_LI_EFI = common dso_local global i32 0, align 4
@xfs_efi_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_efi_log_item* @xfs_efi_init(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_efi_log_item*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @XFS_EFI_MAX_FAST_EXTENTS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.xfs_efi_log_item* @kmem_zalloc(i32 %21, i32 0)
  store %struct.xfs_efi_log_item* %22, %struct.xfs_efi_log_item** %5, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @xfs_efi_zone, align 4
  %25 = call %struct.xfs_efi_log_item* @kmem_zone_zalloc(i32 %24, i32 0)
  store %struct.xfs_efi_log_item* %25, %struct.xfs_efi_log_item** %5, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %28, i32 0, i32 3
  %30 = load i32, i32* @XFS_LI_EFI, align 4
  %31 = call i32 @xfs_log_item_init(%struct.xfs_mount* %27, i32* %29, i32 %30, i32* @xfs_efi_item_ops)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %37 = bitcast %struct.xfs_efi_log_item* %36 to i8*
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %42, i32 0, i32 1
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_efi_log_item, %struct.xfs_efi_log_item* %45, i32 0, i32 0
  %47 = call i32 @atomic_set(i32* %46, i32 2)
  %48 = load %struct.xfs_efi_log_item*, %struct.xfs_efi_log_item** %5, align 8
  ret %struct.xfs_efi_log_item* %48
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_efi_log_item* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.xfs_efi_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
