; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_write }
%struct.nfsd4_write = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.nfsd_file = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@OFFSET_MAX = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i64 0, align 8
@WR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFSD: nfsd4_write: couldn't process stateid!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_write(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_write*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nfsd_file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %14 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %15 = bitcast %union.nfsd4_op_u* %14 to %struct.nfsd4_write*
  store %struct.nfsd4_write* %15, %struct.nfsd4_write** %8, align 8
  %16 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %17 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %16, i32 0, i32 8
  store i32* %17, i32** %9, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %10, align 8
  %18 = load i64, i64* @nfs_ok, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %20 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OFFSET_MAX, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @nfserr_inval, align 8
  store i64 %25, i64* %4, align 8
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %28 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %31 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %31, i32 0, i32 0
  %33 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %34 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @trace_nfsd_write_start(%struct.svc_rqst* %30, i32* %32, i64 %35, i64 %36)
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %39 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %40 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @WR_STATE, align 4
  %44 = call i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %38, %struct.nfsd4_compound_state* %39, i32* %41, i32* %42, i32 %43, %struct.nfsd_file** %10)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %4, align 8
  br label %110

50:                                               ; preds = %26
  %51 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %52 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %55 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %57 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %56, i32 0, i32 6
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = call i32 @SVC_NET(%struct.svc_rqst* %58)
  %60 = call i32 @gen_boot_verifier(i32* %57, i32 %59)
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %63 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %66 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %65, i32 0, i32 4
  %67 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %68 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @svc_fill_write_vector(%struct.svc_rqst* %61, i32 %64, i32* %66, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = icmp sgt i32 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON_ONCE(i32 %77)
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %80 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %81 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %80, i32 0, i32 0
  %82 = load %struct.nfsd_file*, %struct.nfsd_file** %10, align 8
  %83 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %86 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %89 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %93 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @nfsd_vfs_write(%struct.svc_rqst* %79, i32* %81, i32 %84, i64 %87, i32 %90, i32 %91, i64* %12, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load %struct.nfsd_file*, %struct.nfsd_file** %10, align 8
  %97 = call i32 @nfsd_file_put(%struct.nfsd_file* %96)
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %100 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %102 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %103 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %102, i32 0, i32 0
  %104 = load %struct.nfsd4_write*, %struct.nfsd4_write** %8, align 8
  %105 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @trace_nfsd_write_done(%struct.svc_rqst* %101, i32* %103, i64 %106, i64 %107)
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %50, %47, %24
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i32 @trace_nfsd_write_start(%struct.svc_rqst*, i32*, i64, i64) #1

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32, %struct.nfsd_file**) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @gen_boot_verifier(i32*, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @svc_fill_write_vector(%struct.svc_rqst*, i32, i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @nfsd_vfs_write(%struct.svc_rqst*, i32*, i32, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i32 @trace_nfsd_write_done(%struct.svc_rqst*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
