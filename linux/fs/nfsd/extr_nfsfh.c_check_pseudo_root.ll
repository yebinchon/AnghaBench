; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_check_pseudo_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_check_pseudo_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }

@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@nfserr_stale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.dentry*, %struct.svc_export*)* @check_pseudo_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pseudo_root(%struct.svc_rqst* %0, %struct.dentry* %1, %struct.svc_export* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.svc_export*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.svc_export* %2, %struct.svc_export** %7, align 8
  %8 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %9 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @nfs_ok, align 4
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %18 = call i32 @nfsd_v4client(%struct.svc_rqst* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @nfserr_stale, align 4
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %16
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @d_is_dir(%struct.dentry* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = call i32 @d_is_symlink(%struct.dentry* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @nfserr_stale, align 4
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %31
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %41 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  %44 = icmp ne %struct.dentry* %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @nfserr_stale, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @nfs_ok, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48, %36, %20, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @nfsd_v4client(%struct.svc_rqst*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @d_is_symlink(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
