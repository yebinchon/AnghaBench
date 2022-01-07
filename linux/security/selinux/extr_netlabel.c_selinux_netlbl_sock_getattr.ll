; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sock_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sock_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { %struct.netlbl_lsm_secattr* }

@NETLBL_SECATTR_SECID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_lsm_secattr* (%struct.sock*, i64)* @selinux_netlbl_sock_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_getattr(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.netlbl_lsm_secattr*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  store %struct.sk_security_struct* %10, %struct.sk_security_struct** %6, align 8
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %12 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %11, i32 0, i32 0
  %13 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %12, align 8
  store %struct.netlbl_lsm_secattr* %13, %struct.netlbl_lsm_secattr** %7, align 8
  %14 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %15 = icmp eq %struct.netlbl_lsm_secattr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %3, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %19 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NETLBL_SECATTR_SECID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %26 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  store %struct.netlbl_lsm_secattr* %32, %struct.netlbl_lsm_secattr** %3, align 8
  br label %34

33:                                               ; preds = %24, %17
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %3, align 8
  br label %34

34:                                               ; preds = %33, %31, %16
  %35 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  ret %struct.netlbl_lsm_secattr* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
