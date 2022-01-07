; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_revalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_revalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.nfs_inode = type { i64, i32 }

@NFS_INO_INVALIDATING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_DATA_INVAL_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_revalidate_mapping(%struct.inode* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %5, align 8
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %10, i32 0, i32 0
  store i64* %11, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i64 @IS_SWAPFILE(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i64 @nfs_mapping_need_revalidate_inode(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call i32 @NFS_SERVER(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @__nfs_revalidate_inode(i32 %22, %struct.inode* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %94

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %33 = load i32, i32* @nfs_wait_bit_killable, align 4
  %34 = load i32, i32* @TASK_KILLABLE, align 4
  %35 = call i32 @wait_on_bit_action(i64* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %94

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %44 = load i64*, i64** %6, align 8
  %45 = call i64 @test_bit(i32 %43, i64* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  br label %30

51:                                               ; preds = %39
  %52 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  br label %94

63:                                               ; preds = %58
  %64 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %65 = load i64*, i64** %6, align 8
  %66 = call i32 @set_bit(i32 %64, i64* %65)
  %67 = call i32 (...) @smp_wmb()
  %68 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %69 = load i32, i32* @NFS_INO_DATA_INVAL_DEFER, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %73 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = call i32 @trace_nfs_invalidate_mapping_enter(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = load %struct.address_space*, %struct.address_space** %4, align 8
  %83 = call i32 @nfs_invalidate_mapping(%struct.inode* %81, %struct.address_space* %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @trace_nfs_invalidate_mapping_exit(%struct.inode* %84, i32 %85)
  %87 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %88 = load i64*, i64** %6, align 8
  %89 = call i32 @clear_bit_unlock(i32 %87, i64* %88)
  %90 = call i32 (...) @smp_mb__after_atomic()
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %93 = call i32 @wake_up_bit(i64* %91, i32 %92)
  br label %94

94:                                               ; preds = %63, %59, %38, %27, %15
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @nfs_mapping_need_revalidate_inode(%struct.inode*) #1

declare dso_local i32 @__nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @wait_on_bit_action(i64*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @trace_nfs_invalidate_mapping_enter(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_mapping(%struct.inode*, %struct.address_space*) #1

declare dso_local i32 @trace_nfs_invalidate_mapping_exit(%struct.inode*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
