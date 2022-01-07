; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_lookup_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.svc_export = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [32 x i8] c"nfsd: nfsd_lookup(fh %s, %.*s)\0A\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_lookup_dentry(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_export** %4, %struct.dentry** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.svc_export**, align 8
  %13 = alloca %struct.dentry**, align 8
  %14 = alloca %struct.svc_export*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.svc_export** %4, %struct.svc_export*** %12, align 8
  store %struct.dentry** %5, %struct.dentry*** %13, align 8
  %18 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %19 = call i32 @SVCFH_fmt(%struct.svc_fh* %18)
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i8* %21)
  %23 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %24 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %15, align 8
  %26 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %27 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.svc_export* @exp_get(i32 %28)
  store %struct.svc_export* %29, %struct.svc_export** %14, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @isdotent(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.dentry*, %struct.dentry** %15, align 8
  %39 = call %struct.dentry* @dget(%struct.dentry* %38)
  store %struct.dentry* %39, %struct.dentry** %16, align 8
  br label %71

40:                                               ; preds = %34
  %41 = load %struct.dentry*, %struct.dentry** %15, align 8
  %42 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %43 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  %46 = icmp ne %struct.dentry* %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.dentry*, %struct.dentry** %15, align 8
  %49 = call %struct.dentry* @dget_parent(%struct.dentry* %48)
  store %struct.dentry* %49, %struct.dentry** %16, align 8
  br label %70

50:                                               ; preds = %40
  %51 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %52 = call i32 @EX_NOHIDE(%struct.svc_export* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %56 = call i32 @nfsd_v4client(%struct.svc_rqst* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load %struct.dentry*, %struct.dentry** %15, align 8
  %60 = call %struct.dentry* @dget(%struct.dentry* %59)
  store %struct.dentry* %60, %struct.dentry** %16, align 8
  br label %69

61:                                               ; preds = %54, %50
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %63 = load %struct.dentry*, %struct.dentry** %15, align 8
  %64 = call i32 @nfsd_lookup_parent(%struct.svc_rqst* %62, %struct.dentry* %63, %struct.svc_export** %14, %struct.dentry** %16)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %107

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %37
  br label %102

72:                                               ; preds = %6
  %73 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %74 = load i32, i32* @I_MUTEX_PARENT, align 4
  %75 = call i32 @fh_lock_nested(%struct.svc_fh* %73, i32 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.dentry*, %struct.dentry** %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.dentry* @lookup_one_len(i8* %76, %struct.dentry* %77, i32 %78)
  store %struct.dentry* %79, %struct.dentry** %16, align 8
  %80 = load %struct.dentry*, %struct.dentry** %16, align 8
  %81 = call i32 @PTR_ERR(%struct.dentry* %80)
  store i32 %81, i32* %17, align 4
  %82 = load %struct.dentry*, %struct.dentry** %16, align 8
  %83 = call i64 @IS_ERR(%struct.dentry* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %107

86:                                               ; preds = %72
  %87 = load %struct.dentry*, %struct.dentry** %16, align 8
  %88 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %89 = call i64 @nfsd_mountpoint(%struct.dentry* %87, %struct.svc_export* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %93 = call i32 @fh_unlock(%struct.svc_fh* %92)
  %94 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %95 = call i32 @nfsd_cross_mnt(%struct.svc_rqst* %94, %struct.dentry** %16, %struct.svc_export** %14)
  store i32 %95, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.dentry*, %struct.dentry** %16, align 8
  %99 = call i32 @dput(%struct.dentry* %98)
  br label %107

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.dentry*, %struct.dentry** %16, align 8
  %104 = load %struct.dentry**, %struct.dentry*** %13, align 8
  store %struct.dentry* %103, %struct.dentry** %104, align 8
  %105 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %106 = load %struct.svc_export**, %struct.svc_export*** %12, align 8
  store %struct.svc_export* %105, %struct.svc_export** %106, align 8
  store i32 0, i32* %7, align 4
  br label %112

107:                                              ; preds = %97, %85, %67
  %108 = load %struct.svc_export*, %struct.svc_export** %14, align 8
  %109 = call i32 @exp_put(%struct.svc_export* %108)
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @nfserrno(i32 %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @dprintk(i8*, i32, i32, i8*) #1

declare dso_local i32 @SVCFH_fmt(%struct.svc_fh*) #1

declare dso_local %struct.svc_export* @exp_get(i32) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @EX_NOHIDE(%struct.svc_export*) #1

declare dso_local i32 @nfsd_v4client(%struct.svc_rqst*) #1

declare dso_local i32 @nfsd_lookup_parent(%struct.svc_rqst*, %struct.dentry*, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @nfsd_mountpoint(%struct.dentry*, %struct.svc_export*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @nfsd_cross_mnt(%struct.svc_rqst*, %struct.dentry**, %struct.svc_export**) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
