; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth.c_svc_authorise.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth.c_svc_authorise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.auth_ops* }
%struct.auth_ops = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_authorise(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.auth_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load %struct.auth_ops*, %struct.auth_ops** %6, align 8
  store %struct.auth_ops* %7, %struct.auth_ops** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  store %struct.auth_ops* null, %struct.auth_ops** %9, align 8
  %10 = load %struct.auth_ops*, %struct.auth_ops** %3, align 8
  %11 = icmp ne %struct.auth_ops* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.auth_ops*, %struct.auth_ops** %3, align 8
  %14 = getelementptr inbounds %struct.auth_ops, %struct.auth_ops* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.svc_rqst*)**
  %16 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %15, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %18 = call i32 %16(%struct.svc_rqst* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.auth_ops*, %struct.auth_ops** %3, align 8
  %20 = call i32 @svc_put_auth_ops(%struct.auth_ops* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @svc_put_auth_ops(%struct.auth_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
