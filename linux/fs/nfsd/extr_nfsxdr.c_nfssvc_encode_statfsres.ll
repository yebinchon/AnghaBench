; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_statfsres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_statfsres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_statfsres* }
%struct.nfsd_statfsres = type { %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i32, i32 }

@NFSSVC_MAXBLKSIZE_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_statfsres(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsd_statfsres*, align 8
  %6 = alloca %struct.kstatfs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nfsd_statfsres*, %struct.nfsd_statfsres** %8, align 8
  store %struct.nfsd_statfsres* %9, %struct.nfsd_statfsres** %5, align 8
  %10 = load %struct.nfsd_statfsres*, %struct.nfsd_statfsres** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd_statfsres, %struct.nfsd_statfsres* %10, i32 0, i32 0
  store %struct.kstatfs* %11, %struct.kstatfs** %6, align 8
  %12 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  %13 = call i8* @htonl(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %17 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %18 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @htonl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %31 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @htonl(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @xdr_ressize_check(%struct.svc_rqst* %45, i32* %46)
  ret i32 %47
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
