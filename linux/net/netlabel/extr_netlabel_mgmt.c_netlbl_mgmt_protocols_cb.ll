; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_protocols_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_protocols_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netlbl_mgmt_gnl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLBL_MGMT_C_PROTOCOLS = common dso_local global i32 0, align 4
@NLBL_MGMT_A_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, i32)* @netlbl_mgmt_protocols_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_protocols_cb(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @NETLINK_CB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NLM_F_MULTI, align 4
  %27 = load i32, i32* @NLBL_MGMT_C_PROTOCOLS, align 4
  %28 = call i8* @genlmsg_put(%struct.sk_buff* %13, i32 %20, i32 %25, i32* @netlbl_mgmt_gnl_family, i32 %26, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @NLBL_MGMT_A_PROTOCOL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @nla_put_u32(%struct.sk_buff* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @genlmsg_end(%struct.sk_buff* %41, i8* %42)
  store i32 0, i32* %4, align 4
  br label %49

44:                                               ; preds = %39, %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @genlmsg_cancel(%struct.sk_buff* %45, i8* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
