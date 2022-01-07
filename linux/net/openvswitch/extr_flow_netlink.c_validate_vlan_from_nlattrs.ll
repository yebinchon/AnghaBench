; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_vlan_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_vlan_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_ETHERNET = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_VLAN = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ENCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid %s frame\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"C-VLAN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"VLAN\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%s TCI does not have VLAN_CFI_MASK bit set.\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Truncated %s header has non-zero encap attribute.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, i32, i32, %struct.nlattr**, i32)* @validate_vlan_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vlan_from_nlattrs(%struct.sw_flow_match* %0, i32 %1, i32 %2, %struct.nlattr** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sw_flow_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @OVS_KEY_ATTR_ETHERNET, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %26 = load i32, i32* @OVS_KEY_ATTR_ETHERTYPE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_get_be16(%struct.nlattr* %29)
  %31 = call i64 @eth_type_vlan(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %18, %5
  store i32 0, i32* %6, align 4
  br label %107

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @OVS_NLERR(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %107

55:                                               ; preds = %40
  %56 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %57 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %64 = load i32, i32* @OVS_KEY_ATTR_VLAN, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_be16(%struct.nlattr* %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @VLAN_CFI_MASK, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 @OVS_NLERR(i32 %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %107

87:                                               ; preds = %75
  %88 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %89 = load i32, i32* @OVS_KEY_ATTR_ENCAP, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i64 @nla_len(%struct.nlattr* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @OVS_NLERR(i32 %96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %107

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %69
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %95, %78, %46, %33
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @eth_type_vlan(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @OVS_NLERR(i32, i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
