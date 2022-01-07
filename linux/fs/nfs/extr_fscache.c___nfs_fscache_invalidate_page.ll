; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c___nfs_fscache_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c___nfs_fscache_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFS: fscache invalidatepage (0x%p/0x%p/0x%p)\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nfs_fscache_invalidate_page(%struct.page* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = call %struct.fscache_cookie* @nfs_i_fscache(%struct.inode* %6)
  store %struct.fscache_cookie* %7, %struct.fscache_cookie** %5, align 8
  %8 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %9 = icmp ne %struct.fscache_cookie* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* @FSCACHE, align 4
  %14 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @NFS_I(%struct.inode* %16)
  %18 = call i32 @dfprintk(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %14, %struct.page* %15, i32 %17)
  %19 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @fscache_wait_on_page_write(%struct.fscache_cookie* %19, %struct.page* %20)
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @PageLocked(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @fscache_uncache_page(%struct.fscache_cookie* %28, %struct.page* %29)
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %37 = call i32 @nfs_inc_fscache_stats(i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.fscache_cookie* @nfs_i_fscache(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @NFS_I(%struct.inode*) #1

declare dso_local i32 @fscache_wait_on_page_write(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @fscache_uncache_page(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @nfs_inc_fscache_stats(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
