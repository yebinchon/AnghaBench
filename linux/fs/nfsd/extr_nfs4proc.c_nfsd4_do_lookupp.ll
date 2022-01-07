; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_do_lookupp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_do_lookupp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i64 }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_fh*)* @nfsd4_do_lookupp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_do_lookupp(%struct.svc_rqst* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca %struct.svc_fh, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  %8 = load i32, i32* @NFS4_FHSIZE, align 4
  %9 = call i32 @fh_init(%struct.svc_fh* %6, i32 %8)
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = call i64 @exp_pseudoroot(%struct.svc_rqst* %10, %struct.svc_fh* %6)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @fh_put(%struct.svc_fh* %6)
  %25 = load i64, i64* @nfserr_noent, align 8
  store i64 %25, i64* %3, align 8
  br label %32

26:                                               ; preds = %16
  %27 = call i32 @fh_put(%struct.svc_fh* %6)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %31 = call i64 @nfsd_lookup(%struct.svc_rqst* %28, %struct.svc_fh* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, %struct.svc_fh* %30)
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %26, %23, %14
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @exp_pseudoroot(%struct.svc_rqst*, %struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i64 @nfsd_lookup(%struct.svc_rqst*, %struct.svc_fh*, i8*, i32, %struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
