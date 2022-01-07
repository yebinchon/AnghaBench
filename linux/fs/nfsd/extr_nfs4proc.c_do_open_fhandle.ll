; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_do_open_fhandle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_do_open_fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.svc_fh }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_DELEG_CUR_FH = common dso_local global i64 0, align 8
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*)* @do_open_fhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_open_fhandle(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %6, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  store %struct.svc_fh* %11, %struct.svc_fh** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %12, i32 0, i32 3
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %16 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %17 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %18 = call i32 @nfsd4_set_open_owner_reply_cache(%struct.nfsd4_compound_state* %15, %struct.nfsd4_open* %16, %struct.svc_fh* %17)
  %19 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATTR_SIZE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i1 [ false, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFS4_OPEN_CLAIM_DELEG_CUR_FH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %46 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %47 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @do_open_permission(%struct.svc_rqst* %45, %struct.svc_fh* %46, %struct.nfsd4_open* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nfsd4_set_open_owner_reply_cache(%struct.nfsd4_compound_state*, %struct.nfsd4_open*, %struct.svc_fh*) #1

declare dso_local i32 @do_open_permission(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
