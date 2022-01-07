; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_ipv6header.c_ipv6header_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_ipv6header.c_ipv6header_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.ip6t_ipv6header_info* }
%struct.ip6t_ipv6header_info = type { i32, i32, i64 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NEXTHDR_NONE = common dso_local global i32 0, align 4
@MASK_NONE = common dso_local global i32 0, align 4
@NEXTHDR_ESP = common dso_local global i32 0, align 4
@MASK_ESP = common dso_local global i32 0, align 4
@MASK_HOPOPTS = common dso_local global i32 0, align 4
@MASK_ROUTING = common dso_local global i32 0, align 4
@MASK_FRAGMENT = common dso_local global i32 0, align 4
@MASK_AH = common dso_local global i32 0, align 4
@MASK_DSTOPTS = common dso_local global i32 0, align 4
@MASK_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ipv6header_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6header_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ip6t_ipv6header_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6_opt_hdr*, align 8
  %12 = alloca %struct.ipv6_opt_hdr, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %14 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %15 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %14, i32 0, i32 1
  %16 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %15, align 8
  store %struct.ip6t_ipv6header_info* %16, %struct.ip6t_ipv6header_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %112, %2
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @nf_ip6_ext_hdr(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NEXTHDR_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @MASK_NONE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %113

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %166

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NEXTHDR_ESP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MASK_ESP, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %113

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.ipv6_opt_hdr* @skb_header_pointer(%struct.sk_buff* %51, i32 %52, i32 4, %struct.ipv6_opt_hdr* %12)
  store %struct.ipv6_opt_hdr* %53, %struct.ipv6_opt_hdr** %11, align 8
  %54 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %55 = icmp ne %struct.ipv6_opt_hdr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %58 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %166

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 130
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 8, i32* %13, align 4
  br label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 132
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %68 = call i32 @ipv6_authlen(%struct.ipv6_opt_hdr* %67)
  store i32 %68, i32* %13, align 4
  br label %72

69:                                               ; preds = %63
  %70 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %71 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %95 [
    i32 129, label %75
    i32 128, label %79
    i32 130, label %83
    i32 132, label %87
    i32 131, label %91
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* @MASK_HOPOPTS, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %96

79:                                               ; preds = %73
  %80 = load i32, i32* @MASK_ROUTING, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %96

83:                                               ; preds = %73
  %84 = load i32, i32* @MASK_FRAGMENT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %96

87:                                               ; preds = %73
  %88 = load i32, i32* @MASK_AH, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %96

91:                                               ; preds = %73
  %92 = load i32, i32* @MASK_DSTOPTS, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %166

96:                                               ; preds = %91, %87, %83, %79, %75
  %97 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %11, align 8
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ugt i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %113

112:                                              ; preds = %96
  br label %26

113:                                              ; preds = %111, %46, %34, %26
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @NEXTHDR_NONE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @NEXTHDR_ESP, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @MASK_PROTO, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %117, %113
  %126 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %127 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %133 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = xor i32 %131, %134
  %136 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %137 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %135, %138
  %140 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %141 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %3, align 4
  br label %166

147:                                              ; preds = %125
  %148 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %149 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %155 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %153, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %166

159:                                              ; preds = %147
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.ip6t_ipv6header_info*, %struct.ip6t_ipv6header_info** %6, align 8
  %162 = getelementptr inbounds %struct.ip6t_ipv6header_info, %struct.ip6t_ipv6header_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %159, %152, %130, %95, %56, %41
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nf_ip6_ext_hdr(i32) #1

declare dso_local %struct.ipv6_opt_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_opt_hdr*) #1

declare dso_local i32 @ipv6_authlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
