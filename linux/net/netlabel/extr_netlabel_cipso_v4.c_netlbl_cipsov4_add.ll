; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_DOI = common dso_local global i64 0, align 8
@NLBL_CIPSOV4_A_MTYPE = common dso_local global i64 0, align 8
@netlabel_mgmt_protocount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_cipsov4_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_cipsov4_add(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_audit, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @NLBL_CIPSOV4_A_DOI, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @NLBL_CIPSOV4_A_MTYPE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %17
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @netlbl_netlink_auditinfo(%struct.sk_buff* %29, %struct.netlbl_audit* %7)
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NLBL_CIPSOV4_A_MTYPE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nla_get_u32(i32 %36)
  switch i32 %37, label %47 [
    i32 128, label %38
    i32 129, label %41
    i32 130, label %44
  ]

38:                                               ; preds = %28
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = call i32 @netlbl_cipsov4_add_std(%struct.genl_info* %39, %struct.netlbl_audit* %7)
  store i32 %40, i32* %6, align 4
  br label %47

41:                                               ; preds = %28
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = call i32 @netlbl_cipsov4_add_pass(%struct.genl_info* %42, %struct.netlbl_audit* %7)
  store i32 %43, i32* %6, align 4
  br label %47

44:                                               ; preds = %28
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = call i32 @netlbl_cipsov4_add_local(%struct.genl_info* %45, %struct.netlbl_audit* %7)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %28, %44, %41, %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @atomic_inc(i32* @netlabel_mgmt_protocount)
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @netlbl_netlink_auditinfo(%struct.sk_buff*, %struct.netlbl_audit*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @netlbl_cipsov4_add_std(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_cipsov4_add_pass(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_cipsov4_add_local(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
