; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_symlinkargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_symlinkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_7__, %struct.nfsd_symlinkargs* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.nfsd_symlinkargs = type { i64, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_symlinkargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_symlinkargs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 1
  %11 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %10, align 8
  store %struct.nfsd_symlinkargs* %11, %struct.nfsd_symlinkargs** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %15, i32 0, i32 5
  %17 = call i32* @decode_fh(i32* %14, i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %21, i32 0, i32 4
  %23 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %23, i32 0, i32 3
  %25 = call i32* @decode_filename(i32* %20, i32* %22, i32* %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %116

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i64 @ntohl(i32 %31)
  %33 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %34 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %116

40:                                               ; preds = %28
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i8*, i8** %7, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %62 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %40
  %74 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %75 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %116

83:                                               ; preds = %73
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %85 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %5, align 8
  br label %109

91:                                               ; preds = %40
  %92 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %93 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @XDR_QUADLEN(i64 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %98 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 32
  %103 = icmp ugt i64 %96, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %116

105:                                              ; preds = %91
  %106 = load i64, i64* %8, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %5, align 8
  br label %109

109:                                              ; preds = %105, %83
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %6, align 8
  %112 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %111, i32 0, i32 1
  %113 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %114 = call i32 @nfsd_user_namespace(%struct.svc_rqst* %113)
  %115 = call i32 @decode_sattr(i32* %110, i32* %112, i32 %114)
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %104, %82, %39, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @XDR_QUADLEN(i64) #1

declare dso_local i32 @decode_sattr(i32*, i32*, i32) #1

declare dso_local i32 @nfsd_user_namespace(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
