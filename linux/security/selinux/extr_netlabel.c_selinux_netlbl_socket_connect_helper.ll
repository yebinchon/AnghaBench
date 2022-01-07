; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_socket_connect_helper.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_socket_connect_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sockaddr = type { i64 }
%struct.netlbl_lsm_secattr = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@NLBL_REQSKB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLBL_CONNLABELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*)* @selinux_netlbl_socket_connect_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_netlbl_socket_connect_helper(%struct.sock* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_security_struct*, align 8
  %8 = alloca %struct.netlbl_lsm_secattr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  store %struct.sk_security_struct* %11, %struct.sk_security_struct** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_UNSPEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @netlbl_sock_delattr(%struct.sock* %18)
  %20 = load i32, i32* @NLBL_REQSKB, align 4
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %22 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_genattr(%struct.sock* %25)
  store %struct.netlbl_lsm_secattr* %26, %struct.netlbl_lsm_secattr** %8, align 8
  %27 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %28 = icmp eq %struct.netlbl_lsm_secattr* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %37 = call i32 @netlbl_conn_setattr(%struct.sock* %34, %struct.sockaddr* %35, %struct.netlbl_lsm_secattr* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @NLBL_CONNLABELED, align 4
  %42 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %43 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %29, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @netlbl_sock_delattr(%struct.sock*) #1

declare dso_local %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_genattr(%struct.sock*) #1

declare dso_local i32 @netlbl_conn_setattr(%struct.sock*, %struct.sockaddr*, %struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
