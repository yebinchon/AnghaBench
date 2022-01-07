; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfs_request_too_big.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfs_request_too_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.svc_procedure = type { i64 }

@NFS_PROGRAM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_procedure*)* @nfs_request_too_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_request_too_big(%struct.svc_rqst* %0, %struct.svc_procedure* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_procedure*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_procedure* %1, %struct.svc_procedure** %5, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NFS_PROGRAM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.svc_procedure*, %struct.svc_procedure** %5, align 8
  %20 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.svc_procedure*, %struct.svc_procedure** %5, align 8
  %25 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = call i64 @XDR_QUADLEN(i64 %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

31:                                               ; preds = %23, %18
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %30, %17, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @XDR_QUADLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
