; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_originating_port_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_originating_port_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NFSEXP_INSECURE_PORT = common dso_local global i32 0, align 4
@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@RQ_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32)* @nfsd_originating_port_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_originating_port_ok(%struct.svc_rqst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NFSEXP_INSECURE_PORT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPC_AUTH_GSS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @RQ_SECURE, align 4
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %18, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
