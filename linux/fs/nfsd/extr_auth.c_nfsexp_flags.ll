; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_auth.c_nfsexp_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_auth.c_nfsexp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.svc_export = type { i32, i32, %struct.exp_flavor_info* }
%struct.exp_flavor_info = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsexp_flags(%struct.svc_rqst* %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.exp_flavor_info*, align 8
  %7 = alloca %struct.exp_flavor_info*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %8 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %9 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %8, i32 0, i32 2
  %10 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %11 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %12 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %10, i64 %14
  store %struct.exp_flavor_info* %15, %struct.exp_flavor_info** %7, align 8
  %16 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %17 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %16, i32 0, i32 2
  %18 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %17, align 8
  store %struct.exp_flavor_info* %18, %struct.exp_flavor_info** %6, align 8
  br label %19

19:                                               ; preds = %37, %2
  %20 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %21 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %7, align 8
  %22 = icmp ult %struct.exp_flavor_info* %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %25 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %34 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %6, align 8
  %39 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %38, i32 1
  store %struct.exp_flavor_info* %39, %struct.exp_flavor_info** %6, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %42 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
