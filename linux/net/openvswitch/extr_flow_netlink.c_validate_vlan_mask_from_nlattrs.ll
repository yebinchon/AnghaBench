; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_vlan_mask_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_vlan_mask_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Encap mask attribute is set for non-%s frame.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"C-VLAN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"VLAN\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_VLAN = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Must have an exact match on %s TPID (mask=%x).\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%s TCI mask does not have exact match for VLAN_CFI_MASK bit.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, i32, i32, %struct.nlattr**, i32)* @validate_vlan_mask_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vlan_mask_from_nlattrs(%struct.sw_flow_match* %0, i32 %1, i32 %2, %struct.nlattr** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sw_flow_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.sw_flow_match*, %struct.sw_flow_match** %7, align 8
  %17 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VLAN_CFI_MASK, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load %struct.sw_flow_match*, %struct.sw_flow_match** %7, align 8
  %31 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VLAN_CFI_MASK, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %126

50:                                               ; preds = %5
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 (i32, i8*, i8*, ...) @OVS_NLERR(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %126

71:                                               ; preds = %59, %56
  %72 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %73 = load i64, i64* @OVS_KEY_ATTR_VLAN, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %79 = load i64, i64* @OVS_KEY_ATTR_VLAN, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i32 @nla_get_be16(%struct.nlattr* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %85 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %91 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_get_be16(%struct.nlattr* %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @htons(i32 65535)
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ntohs(i32 %105)
  %107 = call i32 (i32, i8*, i8*, ...) @OVS_NLERR(i32 %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %104, i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %126

110:                                              ; preds = %95
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @VLAN_CFI_MASK, align 4
  %113 = call i32 @htons(i32 %112)
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %122 = call i32 (i32, i8*, i8*, ...) @OVS_NLERR(i32 %117, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %126

125:                                              ; preds = %110
  store i32 1, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %116, %99, %62, %49
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @OVS_NLERR(i32, i8*, i8*, ...) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
