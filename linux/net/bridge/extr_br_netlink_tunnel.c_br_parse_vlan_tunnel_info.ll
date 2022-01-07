; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_parse_vlan_tunnel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_parse_vlan_tunnel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.vtunnel_info = type { i64, i64, i32 }

@IFLA_BRIDGE_VLAN_TUNNEL_MAX = common dso_local global i32 0, align 4
@vlan_tunnel_policy = common dso_local global i32 0, align 4
@IFLA_BRIDGE_VLAN_TUNNEL_ID = common dso_local global i64 0, align 8
@IFLA_BRIDGE_VLAN_TUNNEL_VID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@IFLA_BRIDGE_VLAN_TUNNEL_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_parse_vlan_tunnel_info(%struct.nlattr* %0, %struct.vtunnel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.vtunnel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.vtunnel_info* %1, %struct.vtunnel_info** %5, align 8
  %13 = load i32, i32* @IFLA_BRIDGE_VLAN_TUNNEL_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.vtunnel_info*, %struct.vtunnel_info** %5, align 8
  %19 = call i32 @memset(%struct.vtunnel_info* %18, i32 0, i32 24)
  %20 = load i32, i32* @IFLA_BRIDGE_VLAN_TUNNEL_MAX, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %22 = load i32, i32* @vlan_tunnel_policy, align 4
  %23 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %20, %struct.nlattr* %21, i32 %22, i32* null)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_ID, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_VID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

41:                                               ; preds = %33
  %42 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_ID, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_u32(%struct.nlattr* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_VID, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i64 @nla_get_u16(%struct.nlattr* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @VLAN_VID_MASK, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

56:                                               ; preds = %41
  %57 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_FLAGS, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i64, i64* @IFLA_BRIDGE_VLAN_TUNNEL_FLAGS, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i64 @nla_get_u16(%struct.nlattr* %64)
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.vtunnel_info*, %struct.vtunnel_info** %5, align 8
  %69 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.vtunnel_info*, %struct.vtunnel_info** %5, align 8
  %72 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.vtunnel_info*, %struct.vtunnel_info** %5, align 8
  %75 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %66, %53, %38, %26
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.vtunnel_info*, i32, i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
