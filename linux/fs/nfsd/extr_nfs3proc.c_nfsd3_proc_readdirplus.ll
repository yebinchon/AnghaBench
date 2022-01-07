; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdirplus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdirplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.page**, %struct.page**, %struct.nfsd3_readdirres*, %struct.nfsd3_readdirargs* }
%struct.page = type { i32 }
%struct.nfsd3_readdirres = type { i32, i32, i8**, i8**, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.svc_rqst* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nfsd3_readdirargs = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfsd: READDIR+(3) %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSEXP_NOREADDIRPLUS = common dso_local global i32 0, align 4
@nfserr_notsupp = common dso_local global i64 0, align 8
@nfs3svc_encode_entry_plus = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsd3_proc_readdirplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_readdirplus(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_readdirargs*, align 8
  %5 = alloca %struct.nfsd3_readdirres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64, align 8
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
  store i64 0, i64* %10, align 8
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
  %32 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %34, i32 0, i32 7
  %36 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %37 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %36, i32 0, i32 4
  %38 = call i32 @fh_copy(%struct.TYPE_7__* %35, i32* %37)
  %39 = load i32, i32* @nfs_ok, align 4
  %40 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %41 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %47 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %52 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %54 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %54, i32 0, i32 8
  store %struct.svc_rqst* %53, %struct.svc_rqst** %55, align 8
  %56 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %60 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %61 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %60, i32 0, i32 7
  %62 = load i32, i32* @S_IFDIR, align 4
  %63 = load i32, i32* @NFSD_MAY_NOP, align 4
  %64 = call i64 @fh_verify(%struct.svc_rqst* %59, %struct.TYPE_7__* %61, i32 %62, i32 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %1
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @RETURN_STATUS(i64 %68)
  br label %70

70:                                               ; preds = %67, %1
  %71 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %72 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NFSEXP_NOREADDIRPLUS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i64, i64* @nfserr_notsupp, align 8
  %82 = call i32 @RETURN_STATUS(i64 %81)
  br label %83

83:                                               ; preds = %80, %70
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %85 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %86 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %85, i32 0, i32 7
  %87 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %88 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %87, i32 0, i32 6
  %89 = load i32, i32* @nfs3svc_encode_entry_plus, align 4
  %90 = call i64 @nfsd_readdir(%struct.svc_rqst* %84, %struct.TYPE_7__* %86, i32* %8, %struct.TYPE_8__* %88, i32 %89)
  store i64 %90, i64* %6, align 8
  %91 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %92 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %4, align 8
  %95 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %93, i32 %96, i32 8)
  %98 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %98, i32 0, i32 1
  %100 = load %struct.page**, %struct.page*** %99, align 8
  %101 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 1
  store %struct.page** %101, %struct.page*** %9, align 8
  br label %102

102:                                              ; preds = %141, %83
  %103 = load %struct.page**, %struct.page*** %9, align 8
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %105 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %104, i32 0, i32 0
  %106 = load %struct.page**, %struct.page*** %105, align 8
  %107 = icmp ult %struct.page** %103, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %102
  %109 = load %struct.page**, %struct.page*** %9, align 8
  %110 = load %struct.page*, %struct.page** %109, align 8
  %111 = call i64 @page_address(%struct.page* %110)
  store i64 %111, i64* %10, align 8
  %112 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %113 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %108
  %118 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %119 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = add nsw i64 %121, %122
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %117
  %126 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %127 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  br label %144

135:                                              ; preds = %117, %108
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %135
  %142 = load %struct.page**, %struct.page*** %9, align 8
  %143 = getelementptr inbounds %struct.page*, %struct.page** %142, i32 1
  store %struct.page** %143, %struct.page*** %9, align 8
  br label %102

144:                                              ; preds = %125, %102
  %145 = load i32, i32* %7, align 4
  %146 = ashr i32 %145, 2
  %147 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %148 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %150 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %149, i32 0, i32 2
  %151 = load i8**, i8*** %150, align 8
  %152 = icmp ne i8** %151, null
  br i1 %152, label %153, label %182

153:                                              ; preds = %144
  %154 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %155 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %154, i32 0, i32 3
  %156 = load i8**, i8*** %155, align 8
  %157 = call i64 @unlikely(i8** %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = ashr i32 %160, 32
  %162 = call i8* @htonl(i32 %161)
  %163 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %164 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %163, i32 0, i32 2
  %165 = load i8**, i8*** %164, align 8
  store i8* %162, i8** %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i8* @htonl(i32 %166)
  %168 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %169 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %168, i32 0, i32 3
  %170 = load i8**, i8*** %169, align 8
  store i8* %167, i8** %170, align 8
  %171 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %172 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %171, i32 0, i32 3
  store i8** null, i8*** %172, align 8
  br label %179

173:                                              ; preds = %153
  %174 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %175 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %174, i32 0, i32 2
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @xdr_encode_hyper(i8** %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %159
  %180 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %181 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %180, i32 0, i32 2
  store i8** null, i8*** %181, align 8
  br label %182

182:                                              ; preds = %179, %144
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @RETURN_STATUS(i64 %183)
  %185 = load i64, i64* %2, align 8
  ret i64 %185
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local i64 @nfsd_readdir(%struct.svc_rqst*, %struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @unlikely(i8**) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_hyper(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
