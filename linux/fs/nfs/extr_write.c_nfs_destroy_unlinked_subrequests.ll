; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_destroy_unlinked_subrequests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_destroy_unlinked_subrequests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.nfs_page*, i32, %struct.nfs_page* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PG_REMOVE = common dso_local global i32 0, align 4
@PG_TEARDOWN = common dso_local global i32 0, align 4
@PG_INODE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*, %struct.nfs_page*, %struct.inode*)* @nfs_destroy_unlinked_subrequests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_destroy_unlinked_subrequests(%struct.nfs_page* %0, %struct.nfs_page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  br label %8

8:                                                ; preds = %69, %52, %3
  %9 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %10 = icmp ne %struct.nfs_page* %9, null
  br i1 %10, label %11, label %72

11:                                               ; preds = %8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  store %struct.nfs_page* %12, %struct.nfs_page** %7, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %13, i32 0, i32 3
  %15 = load %struct.nfs_page*, %struct.nfs_page** %14, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %17 = icmp eq %struct.nfs_page* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %20, i32 0, i32 3
  %22 = load %struct.nfs_page*, %struct.nfs_page** %21, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi %struct.nfs_page* [ null, %18 ], [ %22, %19 ]
  store %struct.nfs_page* %24, %struct.nfs_page** %4, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %26, i32 0, i32 1
  %28 = load %struct.nfs_page*, %struct.nfs_page** %27, align 8
  %29 = icmp ne %struct.nfs_page* %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  %32 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %33 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %33, i32 0, i32 3
  store %struct.nfs_page* %32, %struct.nfs_page** %34, align 8
  %35 = load i32, i32* @PG_REMOVE, align 4
  %36 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %39, i32 0, i32 2
  %41 = call i32 @kref_read(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* @PG_TEARDOWN, align 4
  %45 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 0
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %51 = call i32 @nfs_free_request(%struct.nfs_page* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %8

53:                                               ; preds = %23
  %54 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %55 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 1
  store %struct.nfs_page* %54, %struct.nfs_page** %56, align 8
  %57 = load i32, i32* @PG_INODE_REF, align 4
  %58 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %59 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %58, i32 0, i32 0
  %60 = call i64 @test_and_clear_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %64 = call i32 @nfs_release_request(%struct.nfs_page* %63)
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @atomic_long_dec(i32* %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %71 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %70)
  br label %8

72:                                               ; preds = %8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_free_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
