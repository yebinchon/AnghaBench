; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_unix_may_send.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_unix_may_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { %struct.TYPE_4__*, i32 }

@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SOCKET__SENDTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @selinux_socket_unix_may_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_unix_may_send(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sk_security_struct*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  %7 = alloca %struct.common_audit_data, align 8
  %8 = alloca %struct.lsm_network_audit, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.sk_security_struct*, %struct.sk_security_struct** %12, align 8
  store %struct.sk_security_struct* %13, %struct.sk_security_struct** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %17, align 8
  store %struct.sk_security_struct* %18, %struct.sk_security_struct** %6, align 8
  %19 = bitcast %struct.lsm_network_audit* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %21 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.lsm_network_audit* %8, %struct.lsm_network_audit** %23, align 8
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %28, align 8
  %30 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %29, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %32 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %35 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %38 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOCKET__SENDTO, align 4
  %41 = call i32 @avc_has_perm(i32* @selinux_state, i32 %33, i32 %36, i32 %39, i32 %40, %struct.common_audit_data* %7)
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
