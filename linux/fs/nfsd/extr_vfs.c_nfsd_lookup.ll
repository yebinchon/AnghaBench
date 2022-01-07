; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_EXEC = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_lookup(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.svc_fh*, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %11, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = load i32, i32* @NFSD_MAY_EXEC, align 4
  %19 = call i64 @fh_verify(%struct.svc_rqst* %15, %struct.svc_fh* %16, i32 %17, i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* %14, align 8
  store i64 %23, i64* %6, align 8
  br label %62

24:                                               ; preds = %5
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %26 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @nfsd_lookup_dentry(%struct.svc_rqst* %25, %struct.svc_fh* %26, i8* %27, i32 %28, %struct.svc_export** %12, %struct.dentry** %13)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %6, align 8
  br label %62

34:                                               ; preds = %24
  %35 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %37 = call i64 @check_nfsd_access(%struct.svc_export* %35, %struct.svc_rqst* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %56

41:                                               ; preds = %34
  %42 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %43 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %44 = load %struct.dentry*, %struct.dentry** %13, align 8
  %45 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %46 = call i64 @fh_compose(%struct.svc_fh* %42, %struct.svc_export* %43, %struct.dentry* %44, %struct.svc_fh* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.dentry*, %struct.dentry** %13, align 8
  %51 = call i64 @d_really_is_negative(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @nfserr_noent, align 8
  store i64 %54, i64* %14, align 8
  br label %55

55:                                               ; preds = %53, %49, %41
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.dentry*, %struct.dentry** %13, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  %59 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %60 = call i32 @exp_put(%struct.svc_export* %59)
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %56, %32, %22
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @nfsd_lookup_dentry(%struct.svc_rqst*, %struct.svc_fh*, i8*, i32, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i64 @check_nfsd_access(%struct.svc_export*, %struct.svc_rqst*) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.dentry*, %struct.svc_fh*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
