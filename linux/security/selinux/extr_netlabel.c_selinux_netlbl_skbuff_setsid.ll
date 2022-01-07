; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_setsid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_setsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64 }

@NLBL_REQSKB = common dso_local global i64 0, align 8
@selinux_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_skbuff_setsid(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlbl_lsm_secattr, align 4
  %10 = alloca %struct.netlbl_lsm_secattr*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_security_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.sock* @skb_to_full_sk(%struct.sk_buff* %13)
  store %struct.sock* %14, %struct.sock** %11, align 8
  %15 = load %struct.sock*, %struct.sock** %11, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load %struct.sk_security_struct*, %struct.sk_security_struct** %19, align 8
  store %struct.sk_security_struct* %20, %struct.sk_security_struct** %12, align 8
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %12, align 8
  %22 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NLBL_REQSKB, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.sock*, %struct.sock** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_getattr(%struct.sock* %28, i32 %29)
  store %struct.netlbl_lsm_secattr* %30, %struct.netlbl_lsm_secattr** %10, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %33 = icmp eq %struct.netlbl_lsm_secattr* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  store %struct.netlbl_lsm_secattr* %9, %struct.netlbl_lsm_secattr** %10, align 8
  %35 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %36 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %39 = call i32 @security_netlbl_sid_to_secattr(i32* @selinux_state, i32 %37, %struct.netlbl_lsm_secattr* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %49

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %48 = call i32 @netlbl_skbuff_setattr(%struct.sk_buff* %45, i32 %46, %struct.netlbl_lsm_secattr* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %51 = icmp eq %struct.netlbl_lsm_secattr* %50, %9
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %54 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.sock* @skb_to_full_sk(%struct.sk_buff*) #1

declare dso_local %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_getattr(%struct.sock*, i32) #1

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @security_netlbl_sid_to_secattr(i32*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_skbuff_setattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
