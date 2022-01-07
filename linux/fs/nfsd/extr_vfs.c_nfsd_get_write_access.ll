; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_get_write_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_get_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32 }
%struct.iattr = type { i64 }
%struct.inode = type { i64 }

@NFSD_MAY_TRUNC = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_fh*, %struct.iattr*)* @nfsd_get_write_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd_get_write_access(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.iattr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.iattr*, %struct.iattr** %7, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %24 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %25 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %28 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %31 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @nfsd_permission(%struct.svc_rqst* %23, i32 %26, i32 %29, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %4, align 8
  br label %61

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @get_write_access(%struct.inode* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %58

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = load %struct.iattr*, %struct.iattr** %7, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @locks_verify_truncate(%struct.inode* %46, i32* null, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %55

54:                                               ; preds = %45
  store i64 0, i64* %4, align 8
  br label %61

55:                                               ; preds = %53
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @put_write_access(%struct.inode* %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @nfserrno(i32 %59)
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %58, %54, %36
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @nfsd_permission(%struct.svc_rqst*, i32, i32, i32) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @locks_verify_truncate(%struct.inode*, i32*, i64) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
