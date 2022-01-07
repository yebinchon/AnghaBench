; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_mknodargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_mknodargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_mknodargs* }
%struct.nfsd3_mknodargs = type { i64, i8*, i8*, i32, i32, i32, i32 }

@NF3BLK = common dso_local global i64 0, align 8
@NF3CHR = common dso_local global i64 0, align 8
@NF3SOCK = common dso_local global i64 0, align 8
@NF3FIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_mknodargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_mknodargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %8, align 8
  store %struct.nfsd3_mknodargs* %9, %struct.nfsd3_mknodargs** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %11, i32 0, i32 6
  %13 = call i32* @decode_fh(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %17, i32 0, i32 5
  %19 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %19, i32 0, i32 4
  %21 = call i32* @decode_filename(i32* %16, i32* %18, i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %91

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NF3BLK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %24
  %38 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NF3CHR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NF3SOCK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NF3FIFO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %43, %37, %24
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %58 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %57, i32 0, i32 3
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %60 = call i32 @nfsd_user_namespace(%struct.svc_rqst* %59)
  %61 = call i32* @decode_sattr3(i32* %56, i32* %58, i32 %60)
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %64 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NF3BLK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %70 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NF3CHR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68, %62
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  %77 = load i32, i32* %75, align 4
  %78 = call i8* @ntohl(i32 %77)
  %79 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %80 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %5, align 8
  %83 = load i32, i32* %81, align 4
  %84 = call i8* @ntohl(i32 %83)
  %85 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %86 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %74, %68
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @xdr_argsize_check(%struct.svc_rqst* %88, i32* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @decode_sattr3(i32*, i32*, i32) #1

declare dso_local i32 @nfsd_user_namespace(%struct.svc_rqst*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
