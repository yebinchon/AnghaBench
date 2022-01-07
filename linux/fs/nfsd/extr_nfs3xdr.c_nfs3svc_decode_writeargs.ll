; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_writeargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, %struct.nfsd3_writeargs* }
%struct.TYPE_3__ = type { i32, %struct.kvec*, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.nfsd3_writeargs = type { i8*, i32, %struct.TYPE_4__, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_writeargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_writeargs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca %struct.kvec*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %14, align 8
  store %struct.nfsd3_writeargs* %15, %struct.nfsd3_writeargs** %6, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %17 = call i8* @svc_max_payload(%struct.svc_rqst* %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.kvec*, %struct.kvec** %20, align 8
  store %struct.kvec* %21, %struct.kvec** %11, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.kvec*, %struct.kvec** %24, align 8
  store %struct.kvec* %25, %struct.kvec** %12, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %27, i32 0, i32 5
  %29 = call i32* @decode_fh(i32* %26, i32* %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %35, i32 0, i32 4
  %37 = call i32* @xdr_decode_hyper(i32* %34, i32* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i8* @ntohl(i32 %40)
  %42 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i8* @ntohl(i32 %46)
  %48 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %49 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %50, align 4
  %53 = call i8* @ntohl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %56 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  store i32 %54, i32* %7, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = load %struct.kvec*, %struct.kvec** %11, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.kvec*, %struct.kvec** %11, align 8
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  %67 = icmp ugt i8* %58, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %138

69:                                               ; preds = %33
  %70 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %71 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %74 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = zext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = icmp ne i8* %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %138

80:                                               ; preds = %69
  %81 = load i32*, i32** %5, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load %struct.kvec*, %struct.kvec** %11, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %82 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load %struct.kvec*, %struct.kvec** %11, align 8
  %91 = getelementptr inbounds %struct.kvec, %struct.kvec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %94 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %92, %96
  %98 = load %struct.kvec*, %struct.kvec** %12, align 8
  %99 = getelementptr inbounds %struct.kvec, %struct.kvec* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add i32 %97, %100
  %102 = load i32, i32* %8, align 4
  %103 = sub i32 %101, %102
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @XDR_QUADLEN(i32 %105)
  %107 = mul nsw i32 %106, 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %138

110:                                              ; preds = %80
  %111 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %112 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ugt i8* %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i8*, i8** %10, align 8
  %118 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %119 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %123 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  store i32 %121, i32* %7, align 4
  br label %124

124:                                              ; preds = %116, %110
  %125 = load i32*, i32** %5, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %128 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load %struct.kvec*, %struct.kvec** %11, align 8
  %131 = getelementptr inbounds %struct.kvec, %struct.kvec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sub i32 %132, %133
  %135 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %136 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %124, %109, %79, %68, %32
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i8* @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
