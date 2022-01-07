; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c___nfs_readpage_to_fscache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c___nfs_readpage_to_fscache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32, i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL = common dso_local global i32 0, align 4
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4
@NFSIOS_FSCACHE_PAGES_WRITTEN_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nfs_readpage_to_fscache(%struct.inode* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @FSCACHE, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @nfs_i_fscache(%struct.inode* %9)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.page*
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) @dfprintk(i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.page* %12, %struct.page* %13, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @nfs_i_fscache(%struct.inode* %22)
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @fscache_write_page(i32 %23, %struct.page* %24, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @FSCACHE, align 4
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.page*
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) @dfprintk(i32 %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.page* %31, %struct.page* %36, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call i32 @nfs_i_fscache(%struct.inode* %45)
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @fscache_uncache_page(i32 %46, %struct.page* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i32, i32* @NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL, align 4
  %51 = call i32 @nfs_inc_fscache_stats(%struct.inode* %49, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %54 = call i32 @nfs_inc_fscache_stats(%struct.inode* %52, i32 %53)
  br label %59

55:                                               ; preds = %3
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load i32, i32* @NFSIOS_FSCACHE_PAGES_WRITTEN_OK, align 4
  %58 = call i32 @nfs_inc_fscache_stats(%struct.inode* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %44
  ret void
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) #1

declare dso_local i32 @nfs_i_fscache(%struct.inode*) #1

declare dso_local i32 @fscache_write_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @fscache_uncache_page(i32, %struct.page*) #1

declare dso_local i32 @nfs_inc_fscache_stats(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
