; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_seek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_seek }
%struct.nfsd4_seek = type { i32, i64, i32, i32, i32 }
%struct.nfsd_file = type { i32 }

@RD_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NFSD: nfsd4_seek: couldn't process stateid!\0A\00", align 1
@SEEK_DATA = common dso_local global i32 0, align 4
@SEEK_HOLE = common dso_local global i32 0, align 4
@nfserr_union_notsupp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_seek(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_seek*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfsd_file*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %12 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %13 = bitcast %union.nfsd4_op_u* %12 to %struct.nfsd4_seek*
  store %struct.nfsd4_seek* %13, %struct.nfsd4_seek** %8, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 0
  %18 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %19 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %18, i32 0, i32 4
  %20 = load i32, i32* @RD_STATE, align 4
  %21 = call i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %14, %struct.nfsd4_compound_state* %15, i32* %17, i32* %19, i32 %20, %struct.nfsd_file** %11)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %4, align 8
  br label %76

27:                                               ; preds = %3
  %28 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %29 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @SEEK_DATA, align 4
  store i32 %32, i32* %9, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @SEEK_HOLE, align 4
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @nfserr_union_notsupp, align 8
  store i64 %36, i64* %10, align 8
  br label %72

37:                                               ; preds = %33, %31
  %38 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %39 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %42 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @vfs_llseek(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %47 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %49 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %54 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @nfserrno(i64 %55)
  store i64 %56, i64* %10, align 8
  br label %71

57:                                               ; preds = %37
  %58 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %59 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %62 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @file_inode(i32 %63)
  %65 = call i64 @i_size_read(i32 %64)
  %66 = icmp sge i64 %60, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %8, align 8
  %69 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %57
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %35
  %73 = load %struct.nfsd_file*, %struct.nfsd_file** %11, align 8
  %74 = call i32 @nfsd_file_put(%struct.nfsd_file* %73)
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %72, %24
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32, %struct.nfsd_file**) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @vfs_llseek(i32, i32, i32) #1

declare dso_local i64 @nfserrno(i64) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
