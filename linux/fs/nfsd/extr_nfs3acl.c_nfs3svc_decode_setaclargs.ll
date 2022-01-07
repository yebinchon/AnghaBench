; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfs3svc_decode_setaclargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3acl.c_nfs3svc_decode_setaclargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__, %struct.nfsd3_setaclargs* }
%struct.TYPE_2__ = type { %struct.kvec* }
%struct.kvec = type { i64 }
%struct.nfsd3_setaclargs = type { i32, i32, i32, i32 }

@NFS_ACL_MASK = common dso_local global i32 0, align 4
@NFS_ACL = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @nfs3svc_decode_setaclargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3svc_decode_setaclargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_setaclargs*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %11, align 8
  store %struct.nfsd3_setaclargs* %12, %struct.nfsd3_setaclargs** %6, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  store %struct.kvec* %16, %struct.kvec** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %18, i32 0, i32 3
  %20 = call i32* @nfs3svc_decode_fh(i32* %17, i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFS_ACL_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %24
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @xdr_argsize_check(%struct.svc_rqst* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %24
  store i32 0, i32* %3, align 4
  br label %96

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load %struct.kvec*, %struct.kvec** %7, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %46 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFS_ACL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %66 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %65, i32 0, i32 2
  br label %68

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32* [ %66, %64 ], [ null, %67 ]
  %70 = call i32 @nfsacl_decode(%struct.TYPE_2__* %56, i32 %57, i32* null, i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %80 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NFS_DFACL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %87 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %86, i32 0, i32 1
  br label %89

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32* [ %87, %85 ], [ null, %88 ]
  %91 = call i32 @nfsacl_decode(%struct.TYPE_2__* %75, i32 %78, i32* null, i32* %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %68
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %43, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32* @nfs3svc_decode_fh(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @nfsacl_decode(%struct.TYPE_2__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
