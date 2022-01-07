; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_mode_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_mode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@S_IFMT = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i64 0, align 8
@nfserr_notdir = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i64 0, align 8
@nfserr_symlink = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.dentry*, i64)* @nfsd_mode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_mode_check(%struct.svc_rqst* %0, %struct.dentry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S_IFMT, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @nfs_ok, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @S_IFDIR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call i32 @d_can_lookup(%struct.dentry* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @WARN_ON_ONCE(i32 1)
  %33 = load i32, i32* @nfserr_notdir, align 4
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @nfs_ok, align 4
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %19
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @S_IFLNK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @nfserr_symlink, align 4
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %41, %36
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @S_IFDIR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @nfserr_notdir, align 4
  store i32 %52, i32* %4, align 4
  br label %61

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @S_IFDIR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @nfserr_isdir, align 4
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @nfserr_inval, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %57, %51, %45, %34, %31, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_can_lookup(%struct.dentry*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
