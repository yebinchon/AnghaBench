; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_session_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_session_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32 }
%struct.genl_info = type { i64* }
%struct.l2tp_tunnel = type { i32 }
%struct.net = type { i32 }

@L2TP_ATTR_IFNAME = common dso_local global i64 0, align 8
@L2TP_ATTR_SESSION_ID = common dso_local global i64 0, align 8
@L2TP_ATTR_CONN_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2tp_session* (%struct.genl_info*)* @l2tp_nl_session_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2tp_session* @l2tp_nl_session_get(%struct.genl_info* %0) #0 {
  %2 = alloca %struct.genl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.l2tp_tunnel*, align 8
  %7 = alloca %struct.l2tp_session*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %2, align 8
  store %struct.l2tp_session* null, %struct.l2tp_session** %7, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %10 = call %struct.net* @genl_info_net(%struct.genl_info* %9)
  store %struct.net* %10, %struct.net** %8, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @L2TP_ATTR_IFNAME, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @L2TP_ATTR_IFNAME, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @nla_data(i64 %24)
  store i8* %25, i8** %5, align 8
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.l2tp_session* @l2tp_session_get_by_ifname(%struct.net* %26, i8* %27)
  store %struct.l2tp_session* %28, %struct.l2tp_session** %7, align 8
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @L2TP_ATTR_SESSION_ID, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %29
  %38 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @nla_get_u32(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @L2TP_ATTR_SESSION_ID, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @nla_get_u32(i64 %58)
  store i32 %59, i32* %4, align 4
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net* %60, i32 %61)
  store %struct.l2tp_tunnel* %62, %struct.l2tp_tunnel** %6, align 8
  %63 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %64 = icmp ne %struct.l2tp_tunnel* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %45
  %66 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel* %66, i32 %67)
  store %struct.l2tp_session* %68, %struct.l2tp_session** %7, align 8
  %69 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %70 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %69)
  br label %71

71:                                               ; preds = %65, %45
  br label %72

72:                                               ; preds = %71, %37, %29
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  ret %struct.l2tp_session* %74
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local %struct.l2tp_session* @l2tp_session_get_by_ifname(%struct.net*, i8*) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net*, i32) #1

declare dso_local %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
