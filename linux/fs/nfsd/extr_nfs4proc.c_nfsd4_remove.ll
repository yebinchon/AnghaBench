; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_remove }
%struct.nfsd4_remove = type { i32, i32, i32 }

@nfserr_grace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_remove(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_remove*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %10 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %11 = bitcast %union.nfsd4_op_u* %10 to %struct.nfsd4_remove*
  store %struct.nfsd4_remove* %11, %struct.nfsd4_remove** %8, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %13 = call i32 @SVC_NET(%struct.svc_rqst* %12)
  %14 = call i64 @opens_in_grace(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @nfserr_grace, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %20, i32 0, i32 0
  %22 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %8, align 8
  %23 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %8, align 8
  %26 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfsd_unlink(%struct.svc_rqst* %19, i32* %21, i32 0, i32 %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %18
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %32, i32 0, i32 0
  %34 = call i32 @fh_unlock(i32* %33)
  %35 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %8, align 8
  %36 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %35, i32 0, i32 0
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %37, i32 0, i32 0
  %39 = call i32 @set_change_info(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %31, %18
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @opens_in_grace(i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @nfsd_unlink(%struct.svc_rqst*, i32*, i32, i32, i32) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
