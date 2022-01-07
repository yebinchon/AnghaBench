; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_sock_has_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_sock_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64, i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { %struct.sock*, i32 }

@SECINITSID_KERNEL = common dso_local global i64 0, align 8
@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @sock_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_has_perm(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_security_struct*, align 8
  %7 = alloca %struct.common_audit_data, align 8
  %8 = alloca %struct.lsm_network_audit, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  store %struct.sk_security_struct* %11, %struct.sk_security_struct** %6, align 8
  %12 = bitcast %struct.lsm_network_audit* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %14 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SECINITSID_KERNEL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %21 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.lsm_network_audit* %8, %struct.lsm_network_audit** %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %26, align 8
  %28 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %27, i32 0, i32 0
  store %struct.sock* %24, %struct.sock** %28, align 8
  %29 = call i32 (...) @current_sid()
  %30 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %31 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %34 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @avc_has_perm(i32* @selinux_state, i32 %29, i64 %32, i32 %35, i32 %36, %struct.common_audit_data* %7)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i64, i32, i32, %struct.common_audit_data*) #2

declare dso_local i32 @current_sid(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
