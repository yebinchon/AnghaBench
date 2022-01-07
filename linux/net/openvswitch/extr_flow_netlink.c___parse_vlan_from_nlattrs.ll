; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___parse_vlan_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___parse_vlan_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_VLAN = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, i32*, i32, %struct.nlattr**, i32, i32)* @__parse_vlan_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_vlan_from_nlattrs(%struct.sw_flow_match* %0, i32* %1, i32 %2, %struct.nlattr** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_flow_match*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @validate_vlan_from_nlattrs(%struct.sw_flow_match* %19, i32 %21, i32 %22, %struct.nlattr** %23, i32 %24)
  store i32 %25, i32* %14, align 4
  br label %34

26:                                               ; preds = %6
  %27 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @validate_vlan_mask_from_nlattrs(%struct.sw_flow_match* %27, i32 %29, i32 %30, %struct.nlattr** %31, i32 %32)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %89

39:                                               ; preds = %34
  %40 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %41 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @encode_vlan_from_nlattrs(%struct.sw_flow_match* %40, %struct.nlattr** %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %7, align 4
  br label %89

49:                                               ; preds = %39
  %50 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %69 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  store %struct.nlattr* %72, %struct.nlattr** %15, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %49
  %76 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %77 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @parse_flow_nlattrs(%struct.nlattr* %76, %struct.nlattr** %77, i32* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  br label %87

81:                                               ; preds = %49
  %82 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %83 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @parse_flow_mask_nlattrs(%struct.nlattr* %82, %struct.nlattr** %83, i32* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %47, %37
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @validate_vlan_from_nlattrs(%struct.sw_flow_match*, i32, i32, %struct.nlattr**, i32) #1

declare dso_local i32 @validate_vlan_mask_from_nlattrs(%struct.sw_flow_match*, i32, i32, %struct.nlattr**, i32) #1

declare dso_local i32 @encode_vlan_from_nlattrs(%struct.sw_flow_match*, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @parse_flow_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*, i32) #1

declare dso_local i32 @parse_flow_mask_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
