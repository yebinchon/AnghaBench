; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo_no_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo_no_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.nfsd4_op_u = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@nfserr_inval = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_secinfo_no_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_secinfo_no_name(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %9 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %10 = bitcast %union.nfsd4_op_u* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %24 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %3
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 0
  %18 = call i32 @nfsd4_do_lookupp(%struct.svc_rqst* %15, %struct.TYPE_5__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %14
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @nfserr_inval, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %23, %13
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @exp_get(i32 %30)
  %32 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %33 = bitcast %union.nfsd4_op_u* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %35, i32 0, i32 0
  %37 = call i32 @fh_put(%struct.TYPE_5__* %36)
  %38 = load i32, i32* @nfs_ok, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %24, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @nfsd4_do_lookupp(%struct.svc_rqst*, %struct.TYPE_5__*) #1

declare dso_local i32 @exp_get(i32) #1

declare dso_local i32 @fh_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
