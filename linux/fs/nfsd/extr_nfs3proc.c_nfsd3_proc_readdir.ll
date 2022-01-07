; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.page**, %struct.page**, %struct.nfsd3_readdirres*, %struct.nfsd3_readdirargs* }
%struct.page = type { i32 }
%struct.nfsd3_readdirres = type { i32, i32, i8**, i8**, i64, i32, %struct.TYPE_2__, i32, %struct.svc_rqst* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd3_readdirargs = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfsd: READDIR(3)  %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@nfs3svc_encode_entry = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_readdir(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_readdirargs*, align 8
  %5 = alloca %struct.nfsd3_readdirres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 3
  %13 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %12, align 8
  store %struct.nfsd3_readdirargs* %13, %struct.nfsd3_readdirargs** %4, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 2
  %16 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %15, align 8
  store %struct.nfsd3_readdirres* %16, %struct.nfsd3_readdirres** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %17 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %17, i32 0, i32 4
  %19 = call i32 @SVCFH_fmt(i32* %18)
  %20 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %21 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25)
  %27 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 2
  %31 = sub nsw i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %32, i32 0, i32 7
  %34 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %35 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %34, i32 0, i32 4
  %36 = call i32 @fh_copy(i32* %33, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @nfs_ok, align 4
  %41 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %48 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %50 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %50, i32 0, i32 8
  store %struct.svc_rqst* %49, %struct.svc_rqst** %51, align 8
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %53 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %54 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %53, i32 0, i32 7
  %55 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %56 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %55, i32 0, i32 1
  %57 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %58 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %57, i32 0, i32 6
  %59 = load i32, i32* @nfs3svc_encode_entry, align 4
  %60 = call i32 @nfsd_readdir(%struct.svc_rqst* %52, i32* %54, i32* %56, %struct.TYPE_2__* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %62 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %65 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32 %63, i32 %66, i32 8)
  store i32 0, i32* %7, align 4
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 1
  %70 = load %struct.page**, %struct.page*** %69, align 8
  %71 = getelementptr inbounds %struct.page*, %struct.page** %70, i64 1
  store %struct.page** %71, %struct.page*** %8, align 8
  br label %72

72:                                               ; preds = %111, %1
  %73 = load %struct.page**, %struct.page*** %8, align 8
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 0
  %76 = load %struct.page**, %struct.page*** %75, align 8
  %77 = icmp ult %struct.page** %73, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load %struct.page**, %struct.page*** %8, align 8
  %80 = load %struct.page*, %struct.page** %79, align 8
  %81 = call i64 @page_address(%struct.page* %80)
  store i64 %81, i64* %9, align 8
  %82 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %83 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %78
  %88 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %89 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = add nsw i64 %91, %92
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %97 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  br label %114

105:                                              ; preds = %87, %78
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %105
  %112 = load %struct.page**, %struct.page*** %8, align 8
  %113 = getelementptr inbounds %struct.page*, %struct.page** %112, i32 1
  store %struct.page** %113, %struct.page*** %8, align 8
  br label %72

114:                                              ; preds = %95, %72
  %115 = load i32, i32* %7, align 4
  %116 = ashr i32 %115, 2
  %117 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %118 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %120 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  %122 = icmp ne i8** %121, null
  br i1 %122, label %123, label %155

123:                                              ; preds = %114
  %124 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %125 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %128 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %127, i32 0, i32 3
  %129 = load i8**, i8*** %128, align 8
  %130 = call i64 @unlikely(i8** %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = ashr i32 %133, 32
  %135 = call i8* @htonl(i32 %134)
  %136 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %137 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %136, i32 0, i32 2
  %138 = load i8**, i8*** %137, align 8
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i8* @htonl(i32 %139)
  %141 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %142 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %141, i32 0, i32 3
  %143 = load i8**, i8*** %142, align 8
  store i8* %140, i8** %143, align 8
  %144 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %145 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %144, i32 0, i32 3
  store i8** null, i8*** %145, align 8
  br label %152

146:                                              ; preds = %123
  %147 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %148 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %147, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @xdr_encode_hyper(i8** %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %132
  %153 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %154 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %153, i32 0, i32 2
  store i8** null, i8*** %154, align 8
  br label %155

155:                                              ; preds = %152, %114
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @RETURN_STATUS(i32 %156)
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_readdir(%struct.svc_rqst*, i32*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @unlikely(i8**) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_hyper(i8**, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
