; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_info2flavor.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_info2flavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcsec_gss_info = type { i32, i32, i32 }
%struct.gss_api_mech = type { i32 }

@RPC_AUTH_MAXFLAVOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_mech_info2flavor(%struct.rpcsec_gss_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpcsec_gss_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gss_api_mech*, align 8
  store %struct.rpcsec_gss_info* %0, %struct.rpcsec_gss_info** %3, align 8
  %6 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %3, align 8
  %7 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %6, i32 0, i32 2
  %8 = call %struct.gss_api_mech* @gss_mech_get_by_OID(i32* %7)
  store %struct.gss_api_mech* %8, %struct.gss_api_mech** %5, align 8
  %9 = load %struct.gss_api_mech*, %struct.gss_api_mech** %5, align 8
  %10 = icmp eq %struct.gss_api_mech* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @RPC_AUTH_MAXFLAVOR, align 4
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.gss_api_mech*, %struct.gss_api_mech** %5, align 8
  %15 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %3, align 8
  %16 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %3, align 8
  %19 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gss_svc_to_pseudoflavor(%struct.gss_api_mech* %14, i32 %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.gss_api_mech*, %struct.gss_api_mech** %5, align 8
  %23 = call i32 @gss_mech_put(%struct.gss_api_mech* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %13, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.gss_api_mech* @gss_mech_get_by_OID(i32*) #1

declare dso_local i32 @gss_svc_to_pseudoflavor(%struct.gss_api_mech*, i32, i32) #1

declare dso_local i32 @gss_mech_put(%struct.gss_api_mech*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
