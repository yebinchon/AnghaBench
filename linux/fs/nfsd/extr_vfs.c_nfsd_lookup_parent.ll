; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_export = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { %struct.dentry*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.dentry*, %struct.svc_export**, %struct.dentry**)* @nfsd_lookup_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_lookup_parent(%struct.svc_rqst* %0, %struct.dentry* %1, %struct.svc_export** %2, %struct.dentry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.svc_export**, align 8
  %9 = alloca %struct.dentry**, align 8
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.path, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.svc_export** %2, %struct.svc_export*** %8, align 8
  store %struct.dentry** %3, %struct.dentry*** %9, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call %struct.dentry* @dget(%struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %12, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %16 = load %struct.svc_export**, %struct.svc_export*** %8, align 8
  %17 = load %struct.svc_export*, %struct.svc_export** %16, align 8
  %18 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mntget(i32 %20)
  store i32 %21, i32* %15, align 8
  %22 = call i32 @follow_to_parent(%struct.path* %11)
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %24 = call %struct.svc_export* @rqst_exp_parent(%struct.svc_rqst* %23, %struct.path* %11)
  store %struct.svc_export* %24, %struct.svc_export** %10, align 8
  %25 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.svc_export* %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call %struct.dentry* @dget(%struct.dentry* %31)
  %33 = load %struct.dentry**, %struct.dentry*** %9, align 8
  store %struct.dentry* %32, %struct.dentry** %33, align 8
  br label %53

34:                                               ; preds = %4
  %35 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %36 = call i64 @IS_ERR(%struct.svc_export* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @path_put(%struct.path* %11)
  %40 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %41 = call i32 @PTR_ERR(%struct.svc_export* %40)
  store i32 %41, i32* %5, align 4
  br label %55

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  %45 = call %struct.dentry* @dget(%struct.dentry* %44)
  %46 = load %struct.dentry**, %struct.dentry*** %9, align 8
  store %struct.dentry* %45, %struct.dentry** %46, align 8
  %47 = load %struct.svc_export**, %struct.svc_export*** %8, align 8
  %48 = load %struct.svc_export*, %struct.svc_export** %47, align 8
  %49 = call i32 @exp_put(%struct.svc_export* %48)
  %50 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %51 = load %struct.svc_export**, %struct.svc_export*** %8, align 8
  store %struct.svc_export* %50, %struct.svc_export** %51, align 8
  br label %52

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %30
  %54 = call i32 @path_put(%struct.path* %11)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(i32) #1

declare dso_local i32 @follow_to_parent(%struct.path*) #1

declare dso_local %struct.svc_export* @rqst_exp_parent(%struct.svc_rqst*, %struct.path*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
