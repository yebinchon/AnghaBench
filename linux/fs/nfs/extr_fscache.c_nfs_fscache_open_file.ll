; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_fscache.c_nfs_fscache_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.nfs_fscache_inode_auxdata = type { i8*, i8* }
%struct.nfs_inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NFS: nfsi 0x%p disabling cache\0A\00", align 1
@NFS_INO_FSCACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"NFS: nfsi 0x%p enabling cache\0A\00", align 1
@nfs_fscache_can_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_open_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.nfs_fscache_inode_auxdata, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca %struct.fscache_cookie*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.fscache_cookie* @nfs_i_fscache(%struct.inode* %10)
  store %struct.fscache_cookie* %11, %struct.fscache_cookie** %7, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %13 = call i32 @fscache_cookie_valid(%struct.fscache_cookie* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %68

16:                                               ; preds = %2
  %17 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %5, i32 0, i32 16)
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @timespec64_to_timespec(i32 %21)
  %23 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %5, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @timespec64_to_timespec(i32 %27)
  %29 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i64 @inode_is_open_for_write(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %16
  %34 = load i32, i32* @FSCACHE, align 4
  %35 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %36 = call i32 @dfprintk(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.nfs_inode* %35)
  %37 = load i32, i32* @NFS_INO_FSCACHE, align 4
  %38 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %42 = call i32 @fscache_disable_cookie(%struct.fscache_cookie* %41, %struct.nfs_fscache_inode_auxdata* %5, i32 1)
  %43 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = call i32 @fscache_uncache_all_inode_pages(%struct.fscache_cookie* %43, %struct.inode* %44)
  br label %68

46:                                               ; preds = %16
  %47 = load i32, i32* @FSCACHE, align 4
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %49 = call i32 @dfprintk(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.nfs_inode* %48)
  %50 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %51 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @nfs_fscache_can_enable, align 4
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call i32 @fscache_enable_cookie(%struct.fscache_cookie* %50, %struct.nfs_fscache_inode_auxdata* %5, i32 %54, i32 %55, %struct.inode* %56)
  %58 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %59 = call i64 @fscache_cookie_enabled(%struct.fscache_cookie* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load i32, i32* @NFS_INO_FSCACHE, align 4
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call %struct.nfs_inode* @NFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %62, i32* %65)
  br label %67

67:                                               ; preds = %61, %46
  br label %68

68:                                               ; preds = %15, %67, %33
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.fscache_cookie* @nfs_i_fscache(%struct.inode*) #1

declare dso_local i32 @fscache_cookie_valid(%struct.fscache_cookie*) #1

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local i64 @inode_is_open_for_write(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.nfs_inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fscache_disable_cookie(%struct.fscache_cookie*, %struct.nfs_fscache_inode_auxdata*, i32) #1

declare dso_local i32 @fscache_uncache_all_inode_pages(%struct.fscache_cookie*, %struct.inode*) #1

declare dso_local i32 @fscache_enable_cookie(%struct.fscache_cookie*, %struct.nfs_fscache_inode_auxdata*, i32, i32, %struct.inode*) #1

declare dso_local i64 @fscache_cookie_enabled(%struct.fscache_cookie*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
