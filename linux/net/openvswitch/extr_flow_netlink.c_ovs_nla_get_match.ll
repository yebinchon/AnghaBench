; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_get_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_get_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.sw_flow_match = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tun_key = common dso_local global i32 0, align 4
@eth = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_get_match(%struct.net* %0, %struct.sw_flow_match* %1, %struct.nlattr* %2, %struct.nlattr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sw_flow_match*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sw_flow_match* %1, %struct.sw_flow_match** %8, align 8
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store %struct.nlattr* %3, %struct.nlattr** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @OVS_KEY_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store %struct.nlattr* null, %struct.nlattr** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @parse_flow_nlattrs(%struct.nlattr* %24, %struct.nlattr** %23, i32* %15, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %131

31:                                               ; preds = %5
  %32 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @parse_vlan_from_nlattrs(%struct.sw_flow_match* %32, i32* %15, %struct.nlattr** %23, i32 0, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %131

39:                                               ; preds = %31
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ovs_key_from_nlattrs(%struct.net* %40, %struct.sw_flow_match* %41, i32 %42, %struct.nlattr** %23, i32 0, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %131

49:                                               ; preds = %39
  %50 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %51 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %49
  %55 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %60 = call i32 @nla_len(%struct.nlattr* %59)
  %61 = call i32 @nla_total_size(i32 %60)
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.nlattr* @kmemdup(%struct.nlattr* %58, i32 %61, i32 %62)
  store %struct.nlattr* %63, %struct.nlattr** %14, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %131

69:                                               ; preds = %57
  %70 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %71 = call i32 @mask_set_nlattr(%struct.nlattr* %70, i32 255)
  %72 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %73 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %80 = load i32, i32* @tun_key, align 4
  %81 = call i32 @SW_FLOW_KEY_MEMSET_FIELD(%struct.sw_flow_match* %79, i32 %80, i32 255, i32 1)
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  store %struct.nlattr* %83, %struct.nlattr** %10, align 8
  br label %84

84:                                               ; preds = %82, %54
  %85 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @parse_flow_mask_nlattrs(%struct.nlattr* %85, %struct.nlattr** %23, i32* %16, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %127

91:                                               ; preds = %84
  %92 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @eth, i32 0, i32 1, i32 0), align 4
  %94 = call i32 @htons(i32 65535)
  %95 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %92, i32 %93, i32 %94, i32 1)
  %96 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @eth, i32 0, i32 0, i32 0), align 4
  %98 = call i32 @htons(i32 65535)
  %99 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %96, i32 %97, i32 %98, i32 1)
  %100 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @parse_vlan_from_nlattrs(%struct.sw_flow_match* %100, i32* %16, %struct.nlattr** %23, i32 1, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %127

106:                                              ; preds = %91
  %107 = load %struct.net*, %struct.net** %7, align 8
  %108 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @ovs_key_from_nlattrs(%struct.net* %107, %struct.sw_flow_match* %108, i32 %109, %struct.nlattr** %23, i32 1, i32 %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %127

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %49
  %117 = load %struct.sw_flow_match*, %struct.sw_flow_match** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @match_validate(%struct.sw_flow_match* %117, i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %114, %105, %90
  %128 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %129 = call i32 @kfree(%struct.nlattr* %128)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %131

131:                                              ; preds = %127, %66, %47, %37, %29
  %132 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_flow_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*, i32) #2

declare dso_local i32 @parse_vlan_from_nlattrs(%struct.sw_flow_match*, i32*, %struct.nlattr**, i32, i32) #2

declare dso_local i32 @ovs_key_from_nlattrs(%struct.net*, %struct.sw_flow_match*, i32, %struct.nlattr**, i32, i32) #2

declare dso_local %struct.nlattr* @kmemdup(%struct.nlattr*, i32, i32) #2

declare dso_local i32 @nla_total_size(i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @mask_set_nlattr(%struct.nlattr*, i32) #2

declare dso_local i32 @SW_FLOW_KEY_MEMSET_FIELD(%struct.sw_flow_match*, i32, i32, i32) #2

declare dso_local i32 @parse_flow_mask_nlattrs(%struct.nlattr*, %struct.nlattr**, i32*, i32) #2

declare dso_local i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match*, i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @match_validate(%struct.sw_flow_match*, i32, i32, i32) #2

declare dso_local i32 @kfree(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
