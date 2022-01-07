; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_dirent_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_dirent_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_readdir = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.svc_export* }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@nfserr_noent = common dso_local global i64 0, align 8
@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.nfsd4_readdir*, i8*, i32)* @nfsd4_encode_dirent_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_dirent_fattr(%struct.xdr_stream* %0, %struct.nfsd4_readdir* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca %struct.nfsd4_readdir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %6, align 8
  store %struct.nfsd4_readdir* %1, %struct.nfsd4_readdir** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.svc_export*, %struct.svc_export** %18, align 8
  store %struct.svc_export* %19, %struct.svc_export** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.dentry* @lookup_one_len_unlocked(i8* %20, i32 %25, i32 %26)
  store %struct.dentry* %27, %struct.dentry** %11, align 8
  %28 = load %struct.dentry*, %struct.dentry** %11, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.dentry*, %struct.dentry** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  %34 = call i64 @nfserrno(i32 %33)
  store i64 %34, i64* %5, align 8
  br label %103

35:                                               ; preds = %4
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = call i64 @d_really_is_negative(%struct.dentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.dentry*, %struct.dentry** %11, align 8
  %41 = call i32 @dput(%struct.dentry* %40)
  %42 = load i64, i64* @nfserr_noent, align 8
  store i64 %42, i64* %5, align 8
  br label %103

43:                                               ; preds = %35
  %44 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %45 = call i32 @exp_get(%struct.svc_export* %44)
  %46 = load %struct.dentry*, %struct.dentry** %11, align 8
  %47 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %48 = call i64 @nfsd_mountpoint(%struct.dentry* %46, %struct.svc_export* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %43
  %51 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %52 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %59 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @attributes_need_mount(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 1, i32* %13, align 4
  br label %85

64:                                               ; preds = %57, %50
  %65 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @nfsd_cross_mnt(i32 %67, %struct.dentry** %11, %struct.svc_export** %10)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @nfserrno(i32 %72)
  store i64 %73, i64* %12, align 8
  br label %97

74:                                               ; preds = %64
  %75 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %76 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %77 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @check_nfsd_access(%struct.svc_export* %75, i32 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %97

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %43
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %87 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %88 = load %struct.dentry*, %struct.dentry** %11, align 8
  %89 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %90 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %93 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @nfsd4_encode_fattr(%struct.xdr_stream* %86, i32* null, %struct.svc_export* %87, %struct.dentry* %88, i32 %91, i32 %94, i32 %95)
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %85, %82, %71
  %98 = load %struct.dentry*, %struct.dentry** %11, align 8
  %99 = call i32 @dput(%struct.dentry* %98)
  %100 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %101 = call i32 @exp_put(%struct.svc_export* %100)
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %97, %39, %31
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_get(%struct.svc_export*) #1

declare dso_local i64 @nfsd_mountpoint(%struct.dentry*, %struct.svc_export*) #1

declare dso_local i32 @attributes_need_mount(i32) #1

declare dso_local i32 @nfsd_cross_mnt(i32, %struct.dentry**, %struct.svc_export**) #1

declare dso_local i64 @check_nfsd_access(%struct.svc_export*, i32) #1

declare dso_local i64 @nfsd4_encode_fattr(%struct.xdr_stream*, i32*, %struct.svc_export*, %struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
