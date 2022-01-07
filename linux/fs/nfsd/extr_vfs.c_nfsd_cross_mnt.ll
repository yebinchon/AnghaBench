; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_cross_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_cross_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.path = type { i64, %struct.dentry* }

@ENOENT = common dso_local global i32 0, align 4
@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@NFSEXP_CROSSMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_cross_mnt(%struct.svc_rqst* %0, %struct.dentry** %1, %struct.svc_export** %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.dentry**, align 8
  %6 = alloca %struct.svc_export**, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.dentry** %1, %struct.dentry*** %5, align 8
  store %struct.svc_export** %2, %struct.svc_export*** %6, align 8
  %12 = load %struct.svc_export**, %struct.svc_export*** %6, align 8
  %13 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  store %struct.svc_export* %13, %struct.svc_export** %7, align 8
  store %struct.svc_export* null, %struct.svc_export** %8, align 8
  %14 = load %struct.dentry**, %struct.dentry*** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %9, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %17 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %18 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @mntget(i64 %20)
  store i64 %21, i64* %16, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = call %struct.dentry* @dget(%struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %22, align 8
  store i32 0, i32* %11, align 4
  %25 = call i32 @follow_down(%struct.path* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %100

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %33 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = icmp eq %struct.dentry* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.dentry*, %struct.dentry** %9, align 8
  %44 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %45 = call i32 @nfsd_mountpoint(%struct.dentry* %43, %struct.svc_export* %44)
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @path_put(%struct.path* %10)
  br label %100

49:                                               ; preds = %42, %37, %29
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %51 = call %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst* %50, %struct.path* %10)
  store %struct.svc_export* %51, %struct.svc_export** %8, align 8
  %52 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %53 = call i64 @IS_ERR(%struct.svc_export* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.svc_export* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %64 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %62, %55
  %71 = call i32 @path_put(%struct.path* %10)
  br label %100

72:                                               ; preds = %49
  %73 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %74 = call i64 @nfsd_v4client(%struct.svc_rqst* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %78 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NFSEXP_CROSSMOUNT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %85 = call i64 @EX_NOHIDE(%struct.svc_export* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83, %76, %72
  %88 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %89 = load %struct.dentry*, %struct.dentry** %88, align 8
  %90 = load %struct.dentry**, %struct.dentry*** %5, align 8
  store %struct.dentry* %89, %struct.dentry** %90, align 8
  %91 = load %struct.dentry*, %struct.dentry** %9, align 8
  %92 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  store %struct.dentry* %91, %struct.dentry** %92, align 8
  %93 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %94 = load %struct.svc_export**, %struct.svc_export*** %6, align 8
  store %struct.svc_export* %93, %struct.svc_export** %94, align 8
  %95 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %95, %struct.svc_export** %8, align 8
  br label %96

96:                                               ; preds = %87, %83
  %97 = call i32 @path_put(%struct.path* %10)
  %98 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %99 = call i32 @exp_put(%struct.svc_export* %98)
  br label %100

100:                                              ; preds = %96, %70, %47, %28
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i64 @mntget(i64) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @follow_down(%struct.path*) #1

declare dso_local i32 @nfsd_mountpoint(%struct.dentry*, %struct.svc_export*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @nfsd_v4client(%struct.svc_rqst*) #1

declare dso_local i64 @EX_NOHIDE(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
