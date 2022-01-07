; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_rqst_authname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_rqst_authname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.auth_domain*, %struct.auth_domain* }
%struct.auth_domain = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.svc_rqst*)* @rqst_authname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rqst_authname(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.auth_domain*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %4 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %4, i32 0, i32 1
  %6 = load %struct.auth_domain*, %struct.auth_domain** %5, align 8
  %7 = icmp ne %struct.auth_domain* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 1
  %11 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.auth_domain*, %struct.auth_domain** %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi %struct.auth_domain* [ %11, %8 ], [ %15, %12 ]
  store %struct.auth_domain* %17, %struct.auth_domain** %3, align 8
  %18 = load %struct.auth_domain*, %struct.auth_domain** %3, align 8
  %19 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
