; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sidlookup_cached.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sidlookup_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@NETLBL_SECATTR_CACHEABLE = common dso_local global i32 0, align 4
@NETLBL_SECATTR_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*, i32*)* @selinux_netlbl_sidlookup_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_netlbl_sidlookup_cached(%struct.sk_buff* %0, i32 %1, %struct.netlbl_lsm_secattr* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @security_netlbl_secattr_to_sid(i32* @selinux_state, %struct.netlbl_lsm_secattr* %10, i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %17 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETLBL_SECATTR_CACHEABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %24 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETLBL_SECATTR_CACHE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %33 = call i32 @netlbl_cache_add(%struct.sk_buff* %30, i32 %31, %struct.netlbl_lsm_secattr* %32)
  br label %34

34:                                               ; preds = %29, %22, %15, %4
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @security_netlbl_secattr_to_sid(i32*, %struct.netlbl_lsm_secattr*, i32*) #1

declare dso_local i32 @netlbl_cache_add(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
