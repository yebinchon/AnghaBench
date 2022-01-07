; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_key_extract_userspace.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_key_extract_userspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OVS_KEY_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_key_extract_userspace(%struct.net* %0, %struct.nlattr* %1, %struct.sk_buff* %2, %struct.sw_flow_key* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sw_flow_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.sw_flow_key* %3, %struct.sw_flow_key** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @OVS_KEY_ATTR_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @parse_flow_nlattrs(%struct.nlattr* %22, %struct.nlattr** %21, i32* %14, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

30:                                               ; preds = %5
  %31 = load %struct.net*, %struct.net** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ovs_nla_get_flow_metadata(%struct.net* %31, %struct.nlattr** %21, i32 %32, %struct.sw_flow_key* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

40:                                               ; preds = %30
  %41 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %42 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %49 = call i32 @key_extract(%struct.sk_buff* %47, %struct.sw_flow_key* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

54:                                               ; preds = %40
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %62 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_P_IP, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

71:                                               ; preds = %60, %54
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %79 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @ETH_P_IPV6, align 4
  %83 = call i64 @htons(i32 %82)
  %84 = icmp ne i64 %81, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %87 = call i64 @sw_flow_key_is_nd(%struct.sw_flow_key* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %77
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

92:                                               ; preds = %85, %71
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %92, %89, %68, %52, %38, %27
  %94 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_flow_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*, i32) #2

declare dso_local i32 @ovs_nla_get_flow_metadata(%struct.net*, %struct.nlattr**, i32, %struct.sw_flow_key*, i32) #2

declare dso_local i32 @key_extract(%struct.sk_buff*, %struct.sw_flow_key*) #2

declare dso_local i64 @htons(i32) #2

declare dso_local i64 @sw_flow_key_is_nd(%struct.sw_flow_key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
