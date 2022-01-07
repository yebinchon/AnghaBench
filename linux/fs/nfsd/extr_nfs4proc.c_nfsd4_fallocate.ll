; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_fallocate = type { i32, i32, i32 }
%struct.nfsd_file = type { i32 }

@WR_STATE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"NFSD: nfsd4_fallocate: couldn't process stateid!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_fallocate*, i32)* @nfsd4_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_fallocate(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_fallocate* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.nfsd4_fallocate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfsd_file*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %7, align 8
  store %struct.nfsd4_fallocate* %2, %struct.nfsd4_fallocate** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %14, i32 0, i32 0
  %16 = load %struct.nfsd4_fallocate*, %struct.nfsd4_fallocate** %8, align 8
  %17 = getelementptr inbounds %struct.nfsd4_fallocate, %struct.nfsd4_fallocate* %16, i32 0, i32 2
  %18 = load i32, i32* @WR_STATE, align 4
  %19 = call i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %12, %struct.nfsd4_compound_state* %13, i32* %15, i32* %17, i32 %18, %struct.nfsd_file** %11)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @nfs_ok, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %44

26:                                               ; preds = %4
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %28, i32 0, i32 0
  %30 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %31 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd4_fallocate*, %struct.nfsd4_fallocate** %8, align 8
  %34 = getelementptr inbounds %struct.nfsd4_fallocate, %struct.nfsd4_fallocate* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfsd4_fallocate*, %struct.nfsd4_fallocate** %8, align 8
  %37 = getelementptr inbounds %struct.nfsd4_fallocate, %struct.nfsd4_fallocate* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @nfsd4_vfs_fallocate(%struct.svc_rqst* %27, i32* %29, i32 %32, i32 %35, i32 %38, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %42 = call i32 @nfsd_file_put(%struct.nfsd_file* %41)
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %26, %23
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32, %struct.nfsd_file**) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @nfsd4_vfs_fallocate(%struct.svc_rqst*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
