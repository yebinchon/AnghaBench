; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.file = type { i32 }

@S_IFREG = common dso_local global i64 0, align 8
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_open(%struct.svc_rqst* %0, %struct.svc_fh* %1, i64 %2, i32 %3, %struct.file** %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file**, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.file** %4, %struct.file*** %10, align 8
  %12 = call i32 (...) @validate_process_creds()
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @S_IFREG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16, %5
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @fh_verify(%struct.svc_rqst* %21, %struct.svc_fh* %22, i64 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %30 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.file**, %struct.file*** %10, align 8
  %34 = call i64 @__nfsd_open(%struct.svc_rqst* %29, %struct.svc_fh* %30, i64 %31, i32 %32, %struct.file** %33)
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %28, %20
  %36 = call i32 (...) @validate_process_creds()
  %37 = load i64, i64* %11, align 8
  ret i64 %37
}

declare dso_local i32 @validate_process_creds(...) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i64, i32) #1

declare dso_local i64 @__nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i64, i32, %struct.file**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
