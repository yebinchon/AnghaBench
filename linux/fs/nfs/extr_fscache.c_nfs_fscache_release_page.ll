; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_release_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_release_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NFS: fscache releasepage (0x%p/0x%p/0x%p)\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_fscache_release_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_cookie*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i64 @PageFsCache(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fscache_cookie* @nfs_i_fscache(i32 %15)
  store %struct.fscache_cookie* %16, %struct.fscache_cookie** %6, align 8
  %17 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %18 = icmp ne %struct.fscache_cookie* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* @FSCACHE, align 4
  %23 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NFS_I(i32 %29)
  %31 = call i32 @dfprintk(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %23, %struct.page* %24, i32 %30)
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @fscache_maybe_release_page(%struct.fscache_cookie* %32, %struct.page* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %47

38:                                               ; preds = %10
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %45 = call i32 @nfs_inc_fscache_stats(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %2
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @PageFsCache(%struct.page*) #1

declare dso_local %struct.fscache_cookie* @nfs_i_fscache(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @NFS_I(i32) #1

declare dso_local i32 @fscache_maybe_release_page(%struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @nfs_inc_fscache_stats(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
