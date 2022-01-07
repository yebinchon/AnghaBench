; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, %struct.nfs_page*, %struct.nfs_page* }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@PG_HEADLOCK = common dso_local global i32 0, align 4
@PG_INODE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, %struct.nfs_page*)* @nfs_page_group_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_page_group_init(%struct.nfs_page* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %7 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %8 = icmp eq %struct.nfs_page* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %12 = icmp ne %struct.nfs_page* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %15 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %15, i32 0, i32 3
  store %struct.nfs_page* %14, %struct.nfs_page** %16, align 8
  %17 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %18, i32 0, i32 4
  store %struct.nfs_page* %17, %struct.nfs_page** %19, align 8
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %21, i32 0, i32 4
  %23 = load %struct.nfs_page*, %struct.nfs_page** %22, align 8
  %24 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %24, i32 0, i32 3
  %26 = load %struct.nfs_page*, %struct.nfs_page** %25, align 8
  %27 = icmp ne %struct.nfs_page* %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load i32, i32* @PG_HEADLOCK, align 4
  %31 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 3
  %33 = load %struct.nfs_page*, %struct.nfs_page** %32, align 8
  %34 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %30, i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %40, i32 0, i32 3
  %42 = load %struct.nfs_page*, %struct.nfs_page** %41, align 8
  %43 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %43, i32 0, i32 3
  store %struct.nfs_page* %42, %struct.nfs_page** %44, align 8
  %45 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 4
  %47 = load %struct.nfs_page*, %struct.nfs_page** %46, align 8
  %48 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %49 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %48, i32 0, i32 4
  store %struct.nfs_page* %47, %struct.nfs_page** %49, align 8
  %50 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %51 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %51, i32 0, i32 4
  store %struct.nfs_page* %50, %struct.nfs_page** %52, align 8
  %53 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %54 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %53, i32 0, i32 3
  %55 = load %struct.nfs_page*, %struct.nfs_page** %54, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 0
  %57 = call i32 @kref_get(i32* %56)
  %58 = load i32, i32* @PG_INODE_REF, align 4
  %59 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %59, i32 0, i32 3
  %61 = load %struct.nfs_page*, %struct.nfs_page** %60, align 8
  %62 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 %58, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %20
  %66 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %67 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_3__* @page_file_mapping(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.inode*, %struct.inode** %70, align 8
  store %struct.inode* %71, %struct.inode** %5, align 8
  %72 = load i32, i32* @PG_INODE_REF, align 4
  %73 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %74 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %77 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %76, i32 0, i32 0
  %78 = call i32 @kref_get(i32* %77)
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @atomic_long_inc(i32* %81)
  br label %83

83:                                               ; preds = %65, %20
  br label %84

84:                                               ; preds = %83, %13
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.TYPE_3__* @page_file_mapping(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
