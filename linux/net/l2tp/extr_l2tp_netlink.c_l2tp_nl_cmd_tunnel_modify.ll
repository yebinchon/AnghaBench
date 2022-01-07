; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_modify.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.l2tp_tunnel = type { i8* }
%struct.net = type { i32 }

@L2TP_ATTR_CONN_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@L2TP_ATTR_DEBUG = common dso_local global i64 0, align 8
@l2tp_nl_family = common dso_local global i32 0, align 4
@L2TP_CMD_TUNNEL_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @l2tp_nl_cmd_tunnel_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_tunnel_modify(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.l2tp_tunnel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = call %struct.net* @genl_info_net(%struct.genl_info* %9)
  store %struct.net* %10, %struct.net** %8, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @nla_get_u32(i64 %27)
  store i8* %28, i8** %6, align 8
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net* %29, i8* %30)
  store %struct.l2tp_tunnel* %31, %struct.l2tp_tunnel** %5, align 8
  %32 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %33 = icmp ne %struct.l2tp_tunnel* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %62

37:                                               ; preds = %21
  %38 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @nla_get_u32(i64 %51)
  %53 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %54 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %45, %37
  %56 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %57 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %58 = load i32, i32* @L2TP_CMD_TUNNEL_MODIFY, align 4
  %59 = call i32 @l2tp_tunnel_notify(i32* @l2tp_nl_family, %struct.genl_info* %56, %struct.l2tp_tunnel* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %61 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %60)
  br label %62

62:                                               ; preds = %55, %34, %18
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net*, i8*) #1

declare dso_local i32 @l2tp_tunnel_notify(i32*, %struct.genl_info*, %struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
