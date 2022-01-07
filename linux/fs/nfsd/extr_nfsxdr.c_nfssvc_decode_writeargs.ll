; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_writeargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, %struct.nfsd_writeargs* }
%struct.TYPE_3__ = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.nfsd_writeargs = type { i32, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32, i8* }

@NFSSVC_MAXBLKSIZE_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_writeargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_writeargs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvec*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 1
  %13 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %12, align 8
  store %struct.nfsd_writeargs* %13, %struct.nfsd_writeargs** %6, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  store %struct.kvec* %17, %struct.kvec** %10, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %19, i32 0, i32 3
  %21 = call i32* @decode_fh(i32* %18, i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  %30 = load i32, i32* %28, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* %36, align 4
  %39 = call i8* @ntohl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %6, align 8
  %42 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 %40, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %94

47:                                               ; preds = %25
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct.kvec*, %struct.kvec** %10, align 8
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %49 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.kvec*, %struct.kvec** %10, align 8
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %94

63:                                               ; preds = %47
  %64 = load %struct.kvec*, %struct.kvec** %10, align 8
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add i32 %66, %70
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @XDR_QUADLEN(i32 %75)
  %77 = mul nsw i32 %76, 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %94

80:                                               ; preds = %63
  %81 = load i32*, i32** %5, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %6, align 8
  %84 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load %struct.kvec*, %struct.kvec** %10, align 8
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %88, %89
  %91 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %6, align 8
  %92 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %80, %79, %62, %46, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
