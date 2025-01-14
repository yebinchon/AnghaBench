; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_pseudoroot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_pseudoroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.svc_export = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp_pseudoroot(%struct.svc_rqst* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %9 = call %struct.svc_export* @rqst_find_fsidzero_export(%struct.svc_rqst* %8)
  store %struct.svc_export* %9, %struct.svc_export** %6, align 8
  %10 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %11 = call i64 @IS_ERR(%struct.svc_export* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.svc_export* %14)
  %16 = call i32 @nfserrno(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %19 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %20 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %21 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fh_compose(%struct.svc_fh* %18, %struct.svc_export* %19, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %26 = call i32 @exp_put(%struct.svc_export* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.svc_export* @rqst_find_fsidzero_export(%struct.svc_rqst*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @fh_compose(%struct.svc_fh*, %struct.svc_export*, i32, i32*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
