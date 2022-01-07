; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32 }
%struct.nfs4_stid = type { i32 }
%struct.nfsd_file = type { i32 }

@RD_STATE = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfs4_stid*, %struct.nfsd_file**, i32)* @nfs4_check_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_check_file(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfs4_stid* %2, %struct.nfsd_file** %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca %struct.nfs4_stid*, align 8
  %10 = alloca %struct.nfsd_file**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsd_file*, align 8
  %14 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store %struct.nfs4_stid* %2, %struct.nfs4_stid** %9, align 8
  store %struct.nfsd_file** %3, %struct.nfsd_file*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @RD_STATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NFSD_MAY_READ, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @NFSD_MAY_WRITE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  %25 = load %struct.nfs4_stid*, %struct.nfs4_stid** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.nfsd_file* @nfs4_find_file(%struct.nfs4_stid* %25, i32 %26)
  store %struct.nfsd_file* %27, %struct.nfsd_file** %13, align 8
  %28 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  %29 = icmp ne %struct.nfsd_file* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %32 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %33 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %36 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @nfsd_permission(%struct.svc_rqst* %31, i32 %34, i32 %37, i32 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  %46 = call i32 @nfsd_file_put(%struct.nfsd_file* %45)
  br label %61

47:                                               ; preds = %30
  br label %58

48:                                               ; preds = %23
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %50 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @nfsd_file_acquire(%struct.svc_rqst* %49, %struct.svc_fh* %50, i32 %51, %struct.nfsd_file** %13)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %6, align 8
  br label %63

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  %60 = load %struct.nfsd_file**, %struct.nfsd_file*** %10, align 8
  store %struct.nfsd_file* %59, %struct.nfsd_file** %60, align 8
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i64, i64* %6, align 8
  ret i64 %64
}

declare dso_local %struct.nfsd_file* @nfs4_find_file(%struct.nfs4_stid*, i32) #1

declare dso_local i64 @nfsd_permission(%struct.svc_rqst*, i32, i32, i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i64 @nfsd_file_acquire(%struct.svc_rqst*, %struct.svc_fh*, i32, %struct.nfsd_file**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
