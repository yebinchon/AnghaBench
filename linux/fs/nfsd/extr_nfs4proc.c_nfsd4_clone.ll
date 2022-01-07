; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_clone }
%struct.nfsd4_clone = type { i32, i32, i32, i32, i32 }
%struct.nfsd_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_clone(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_clone*, align 8
  %8 = alloca %struct.nfsd_file*, align 8
  %9 = alloca %struct.nfsd_file*, align 8
  %10 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %11 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %12 = bitcast %union.nfsd4_op_u* %11 to %struct.nfsd4_clone*
  store %struct.nfsd4_clone* %12, %struct.nfsd4_clone** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %15 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %15, i32 0, i32 4
  %17 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %17, i32 0, i32 3
  %19 = call i64 @nfsd4_verify_copy(%struct.svc_rqst* %13, %struct.nfsd4_compound_state* %14, i32* %16, %struct.nfsd_file** %8, i32* %18, %struct.nfsd_file** %9)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.nfsd_file*, %struct.nfsd_file** %8, align 8
  %25 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %31 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nfsd4_clone_file_range(i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %41 = call i32 @nfsd_file_put(%struct.nfsd_file* %40)
  %42 = load %struct.nfsd_file*, %struct.nfsd_file** %8, align 8
  %43 = call i32 @nfsd_file_put(%struct.nfsd_file* %42)
  br label %44

44:                                               ; preds = %23, %22
  %45 = load i64, i64* %10, align 8
  ret i64 %45
}

declare dso_local i64 @nfsd4_verify_copy(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, %struct.nfsd_file**, i32*, %struct.nfsd_file**) #1

declare dso_local i64 @nfsd4_clone_file_range(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
