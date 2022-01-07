; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_entryplus_baggage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_entryplus_baggage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd3_readdirres = type { i32, %struct.svc_fh }
%struct.svc_fh = type { i32 }

@NFS3_FHSIZE = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.nfsd3_readdirres*, i64*, i8*, i32, i32)* @encode_entryplus_baggage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @encode_entryplus_baggage(%struct.nfsd3_readdirres* %0, i64* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfsd3_readdirres*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.svc_fh*, align 8
  %12 = alloca i64, align 8
  store %struct.nfsd3_readdirres* %0, %struct.nfsd3_readdirres** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %13, i32 0, i32 1
  store %struct.svc_fh* %14, %struct.svc_fh** %11, align 8
  %15 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %16 = load i32, i32* @NFS3_FHSIZE, align 4
  %17 = call i32 @fh_init(%struct.svc_fh* %15, i32 %16)
  %18 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @compose_entry_fh(%struct.nfsd3_readdirres* %18, %struct.svc_fh* %19, i8* %20, i32 %21, i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %7, align 8
  store i64 0, i64* %27, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %7, align 8
  store i64 0, i64* %29, align 8
  br label %44

31:                                               ; preds = %5
  %32 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64*, i64** %7, align 8
  %36 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %37 = call i64* @encode_post_op_attr(i32 %34, i64* %35, %struct.svc_fh* %36)
  store i64* %37, i64** %7, align 8
  %38 = load i64, i64* @xdr_one, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %43 = call i64* @encode_fh(i64* %41, %struct.svc_fh* %42)
  store i64* %43, i64** %7, align 8
  br label %44

44:                                               ; preds = %31, %26
  %45 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %46 = call i32 @fh_put(%struct.svc_fh* %45)
  %47 = load i64*, i64** %7, align 8
  ret i64* %47
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @compose_entry_fh(%struct.nfsd3_readdirres*, %struct.svc_fh*, i8*, i32, i32) #1

declare dso_local i64* @encode_post_op_attr(i32, i64*, %struct.svc_fh*) #1

declare dso_local i64* @encode_fh(i64*, %struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
