; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_fattr3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_fattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.kstat = type { i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.user_namespace = type { i32 }
%struct.timespec = type { i32 }

@nfs3_ftypes = common dso_local global i32* null, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*)* @encode_fattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_fattr3(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2, %struct.kstat* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.kstat*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  store %struct.kstat* %3, %struct.kstat** %8, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = call %struct.user_namespace* @nfsd_user_namespace(%struct.svc_rqst* %14)
  store %struct.user_namespace* %15, %struct.user_namespace** %9, align 8
  %16 = load i32*, i32** @nfs3_ftypes, align 8
  %17 = load %struct.kstat*, %struct.kstat** %8, align 8
  %18 = getelementptr inbounds %struct.kstat, %struct.kstat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @S_IFMT, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 12
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.kstat*, %struct.kstat** %8, align 8
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @S_IALLUGO, align 4
  %34 = and i32 %32, %33
  %35 = call i8* @htonl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.kstat*, %struct.kstat** %8, align 8
  %40 = getelementptr inbounds %struct.kstat, %struct.kstat* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* @htonl(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %48 = load %struct.kstat*, %struct.kstat** %8, align 8
  %49 = getelementptr inbounds %struct.kstat, %struct.kstat* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @from_kuid_munged(%struct.user_namespace* %47, i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = call i8* @htonl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %58 = load %struct.kstat*, %struct.kstat** %8, align 8
  %59 = getelementptr inbounds %struct.kstat, %struct.kstat* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @from_kgid_munged(%struct.user_namespace* %57, i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = call i8* @htonl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.kstat*, %struct.kstat** %8, align 8
  %68 = getelementptr inbounds %struct.kstat, %struct.kstat* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @S_ISLNK(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %4
  %73 = load %struct.kstat*, %struct.kstat** %8, align 8
  %74 = getelementptr inbounds %struct.kstat, %struct.kstat* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32* @xdr_encode_hyper(i32* %79, i32 %81)
  store i32* %82, i32** %6, align 8
  br label %90

83:                                               ; preds = %72, %4
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.kstat*, %struct.kstat** %8, align 8
  %86 = getelementptr inbounds %struct.kstat, %struct.kstat* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32* @xdr_encode_hyper(i32* %84, i32 %88)
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.kstat*, %struct.kstat** %8, align 8
  %93 = getelementptr inbounds %struct.kstat, %struct.kstat* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 %95, 9
  %97 = call i32* @xdr_encode_hyper(i32* %91, i32 %96)
  store i32* %97, i32** %6, align 8
  %98 = load %struct.kstat*, %struct.kstat** %8, align 8
  %99 = getelementptr inbounds %struct.kstat, %struct.kstat* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @MAJOR(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = call i8* @htonl(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.kstat*, %struct.kstat** %8, align 8
  %108 = getelementptr inbounds %struct.kstat, %struct.kstat* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @MINOR(i32 %109)
  %111 = trunc i64 %110 to i32
  %112 = call i8* @htonl(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %118 = call i32* @encode_fsid(i32* %116, %struct.svc_fh* %117)
  store i32* %118, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.kstat*, %struct.kstat** %8, align 8
  %121 = getelementptr inbounds %struct.kstat, %struct.kstat* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32* @xdr_encode_hyper(i32* %119, i32 %122)
  store i32* %123, i32** %6, align 8
  %124 = load %struct.kstat*, %struct.kstat** %8, align 8
  %125 = getelementptr inbounds %struct.kstat, %struct.kstat* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @timespec64_to_timespec(i32 %126)
  %128 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = bitcast %struct.timespec* %10 to i8*
  %130 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = load i32*, i32** %6, align 8
  %132 = call i32* @encode_time3(i32* %131, %struct.timespec* %10)
  store i32* %132, i32** %6, align 8
  %133 = load %struct.kstat*, %struct.kstat** %8, align 8
  %134 = getelementptr inbounds %struct.kstat, %struct.kstat* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @timespec64_to_timespec(i32 %135)
  %137 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %136, i32* %137, align 4
  %138 = bitcast %struct.timespec* %10 to i8*
  %139 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 4, i1 false)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32* @encode_time3(i32* %140, %struct.timespec* %10)
  store i32* %141, i32** %6, align 8
  %142 = load %struct.kstat*, %struct.kstat** %8, align 8
  %143 = getelementptr inbounds %struct.kstat, %struct.kstat* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @timespec64_to_timespec(i32 %144)
  %146 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = bitcast %struct.timespec* %10 to i8*
  %148 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 4, i1 false)
  %149 = load i32*, i32** %6, align 8
  %150 = call i32* @encode_time3(i32* %149, %struct.timespec* %10)
  store i32* %150, i32** %6, align 8
  %151 = load i32*, i32** %6, align 8
  ret i32* %151
}

declare dso_local %struct.user_namespace* @nfsd_user_namespace(%struct.svc_rqst*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i64 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32* @encode_fsid(i32*, %struct.svc_fh*) #1

declare dso_local i32 @timespec64_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @encode_time3(i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
