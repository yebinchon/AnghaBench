; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_inode_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_inode_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_page = type { i32, i32, i32, %struct.nfs_page* }
%struct.address_space = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.TYPE_2__ = type { i64 (%struct.inode*, i32)* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@PG_MAPPED = common dso_local global i32 0, align 4
@PG_INODE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs_page*)* @nfs_inode_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_inode_add_request(%struct.inode* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %7 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.address_space* @page_file_mapping(i32 %9)
  store %struct.address_space* %10, %struct.address_space** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.nfs_inode* @NFS_I(%struct.inode* %11)
  store %struct.nfs_inode* %12, %struct.nfs_inode** %6, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %13, i32 0, i32 3
  %15 = load %struct.nfs_page*, %struct.nfs_page** %14, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %17 = icmp ne %struct.nfs_page* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %21 = call i32 @nfs_lock_request(%struct.nfs_page* %20)
  %22 = load %struct.address_space*, %struct.address_space** %5, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @nfs_have_writebacks(%struct.inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %31, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load i32, i32* @FMODE_WRITE, align 4
  %35 = call i64 %32(%struct.inode* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i32 @inode_inc_iversion_raw(%struct.inode* %38)
  br label %40

40:                                               ; preds = %37, %28, %2
  %41 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PageSwapCache(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load i32, i32* @PG_MAPPED, align 4
  %52 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SetPagePrivate(i32 %57)
  %59 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %63 = ptrtoint %struct.nfs_page* %62 to i64
  %64 = call i32 @set_page_private(i32 %61, i64 %63)
  br label %65

65:                                               ; preds = %50, %40
  %66 = load %struct.address_space*, %struct.address_space** %5, align 8
  %67 = getelementptr inbounds %struct.address_space, %struct.address_space* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %70 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %69, i32 0, i32 0
  %71 = call i32 @atomic_long_inc(i32* %70)
  %72 = load i32, i32* @PG_INODE_REF, align 4
  %73 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %74 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %73, i32 0, i32 1
  %75 = call i32 @test_and_set_bit(i32 %72, i32* %74)
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %78 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %77, i32 0, i32 0
  %79 = call i32 @kref_get(i32* %78)
  ret void
}

declare dso_local %struct.address_space* @page_file_mapping(i32) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_have_writebacks(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion_raw(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageSwapCache(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @SetPagePrivate(i32) #1

declare dso_local i32 @set_page_private(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
