; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_spo_must_allow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_spo_must_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundres* }
%struct.nfsd4_compoundargs = type { i32, %struct.nfsd4_op* }
%struct.nfsd4_op = type { i32 }
%struct.nfsd4_compoundres = type { i32, %struct.nfsd4_compound_state }
%struct.nfsd4_compound_state = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.nfs4_op_map }
%struct.nfs4_op_map = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_spo_must_allow(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca %struct.nfsd4_compoundargs*, align 8
  %6 = alloca %struct.nfsd4_op*, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.nfs4_op_map*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %11, align 8
  store %struct.nfsd4_compoundres* %12, %struct.nfsd4_compoundres** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %14, align 8
  store %struct.nfsd4_compoundargs* %15, %struct.nfsd4_compoundargs** %5, align 8
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %16, i32 0, i32 1
  %18 = load %struct.nfsd4_op*, %struct.nfsd4_op** %17, align 8
  %19 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %18, i64 %23
  store %struct.nfsd4_op* %24, %struct.nfsd4_op** %6, align 8
  %25 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %25, i32 0, i32 1
  store %struct.nfsd4_compound_state* %26, %struct.nfsd4_compound_state** %7, align 8
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %struct.nfs4_op_map* %30, %struct.nfs4_op_map** %8, align 8
  %31 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

36:                                               ; preds = %1
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %90

42:                                               ; preds = %36
  %43 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %86, %42
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %54 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %53, i32 0, i32 1
  %55 = load %struct.nfsd4_op*, %struct.nfsd4_op** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %55, i64 %58
  store %struct.nfsd4_op* %59, %struct.nfsd4_op** %6, align 8
  %60 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %61 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs4_op_map*, %struct.nfs4_op_map** %8, align 8
  %64 = getelementptr inbounds %struct.nfs4_op_map, %struct.nfs4_op_map* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i32 %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %52
  %70 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %71 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %78 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %81 = call i64 @nfsd4_mach_creds_match(%struct.TYPE_4__* %79, %struct.svc_rqst* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %85 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  store i32 1, i32* %2, align 4
  br label %90

86:                                               ; preds = %76, %69, %52
  br label %46

87:                                               ; preds = %46
  %88 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %89 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %83, %41, %35
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @nfsd4_mach_creds_match(%struct.TYPE_4__*, %struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
