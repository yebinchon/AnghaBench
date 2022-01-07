; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_unix_stream_connect.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_unix_stream_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { %struct.sock*, i32 }

@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@UNIX_STREAM_SOCKET__CONNECTTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sock*, %struct.sock*)* @selinux_socket_unix_stream_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_unix_stream_connect(%struct.sock* %0, %struct.sock* %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_security_struct*, align 8
  %9 = alloca %struct.sk_security_struct*, align 8
  %10 = alloca %struct.sk_security_struct*, align 8
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca %struct.lsm_network_audit, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load %struct.sk_security_struct*, %struct.sk_security_struct** %18, align 8
  store %struct.sk_security_struct* %19, %struct.sk_security_struct** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load %struct.sk_security_struct*, %struct.sk_security_struct** %21, align 8
  store %struct.sk_security_struct* %22, %struct.sk_security_struct** %10, align 8
  %23 = bitcast %struct.lsm_network_audit* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  %24 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %25 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.lsm_network_audit* %12, %struct.lsm_network_audit** %27, align 8
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %30, align 8
  %32 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %31, i32 0, i32 0
  store %struct.sock* %28, %struct.sock** %32, align 8
  %33 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %34 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %37 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %40 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UNIX_STREAM_SOCKET__CONNECTTO, align 4
  %43 = call i32 @avc_has_perm(i32* @selinux_state, i32 %35, i32 %38, i32 %41, i32 %42, %struct.common_audit_data* %11)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %3
  %49 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %50 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  %53 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %55 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %58 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  %61 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %60, i32 0, i32 0
  %62 = call i32 @security_sid_mls_copy(i32* @selinux_state, i32 %56, i32 %59, i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %48
  %68 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  %69 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %72 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %65, %46
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #2

declare dso_local i32 @security_sid_mls_copy(i32*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
