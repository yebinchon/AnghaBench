; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_mach_creds_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_mach_creds_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.svc_rqst = type { %struct.svc_cred }
%struct.svc_cred = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_mach_creds_match(%struct.nfs4_client* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_cred*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  store %struct.svc_cred* %8, %struct.svc_cred** %6, align 8
  %9 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.svc_cred*, %struct.svc_cred** %6, align 8
  %20 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %63

24:                                               ; preds = %14
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = call i32 @svc_rqst_integrity_protected(%struct.svc_rqst* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %63

29:                                               ; preds = %24
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %37 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.svc_cred*, %struct.svc_cred** %6, align 8
  %41 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i64 %39, i32 %42)
  %44 = icmp eq i64 0, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %29
  %47 = load %struct.svc_cred*, %struct.svc_cred** %6, align 8
  %48 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

52:                                               ; preds = %46
  %53 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %54 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.svc_cred*, %struct.svc_cred** %6, align 8
  %58 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strcmp(i64 %56, i32 %59)
  %61 = icmp eq i64 0, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %52, %51, %35, %28, %23, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @svc_rqst_integrity_protected(%struct.svc_rqst*) #1

declare dso_local i64 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
