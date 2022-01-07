; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.seg6_iptunnel_encap = type { i32, i32 }
%struct.seg6_lwt = type { i32, i32 }

@SEG6_IPTUNNEL_MAX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@seg6_iptunnel_policy = common dso_local global i32 0, align 4
@SEG6_IPTUNNEL_SRH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_SEG6 = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_INPUT_REDIRECT = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_OUTPUT_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* @seg6_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_build_state(%struct.nlattr* %0, i32 %1, i8* %2, %struct.lwtunnel_state** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lwtunnel_state**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.seg6_iptunnel_encap*, align 8
  %15 = alloca %struct.lwtunnel_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.seg6_lwt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.lwtunnel_state** %3, %struct.lwtunnel_state*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %21 = load i32, i32* @SEG6_IPTUNNEL_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AF_INET, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AF_INET6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

36:                                               ; preds = %29, %5
  %37 = load i32, i32* @SEG6_IPTUNNEL_MAX, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %39 = load i32, i32* @seg6_iptunnel_policy, align 4
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %41 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %25, i32 %37, %struct.nlattr* %38, i32 %39, %struct.netlink_ext_ack* %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

46:                                               ; preds = %36
  %47 = load i64, i64* @SEG6_IPTUNNEL_SRH, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

54:                                               ; preds = %46
  %55 = load i64, i64* @SEG6_IPTUNNEL_SRH, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call %struct.seg6_iptunnel_encap* @nla_data(%struct.nlattr* %57)
  store %struct.seg6_iptunnel_encap* %58, %struct.seg6_iptunnel_encap** %14, align 8
  %59 = load i64, i64* @SEG6_IPTUNNEL_SRH, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_len(%struct.nlattr* %61)
  store i32 %62, i32* %16, align 4
  store i32 16, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

69:                                               ; preds = %54
  %70 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %14, align 8
  %71 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %83 [
    i32 129, label %73
    i32 130, label %81
    i32 128, label %82
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @AF_INET6, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %69
  br label %86

82:                                               ; preds = %69
  br label %86

83:                                               ; preds = %69
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

86:                                               ; preds = %82, %81, %80
  %87 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %14, align 8
  %88 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @seg6_validate_srh(i32 %89, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

99:                                               ; preds = %86
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call %struct.lwtunnel_state* @lwtunnel_state_alloc(i32 %103)
  store %struct.lwtunnel_state* %104, %struct.lwtunnel_state** %15, align 8
  %105 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %106 = icmp ne %struct.lwtunnel_state* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

110:                                              ; preds = %99
  %111 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %112 = call %struct.seg6_lwt* @seg6_lwt_lwtunnel(%struct.lwtunnel_state* %111)
  store %struct.seg6_lwt* %112, %struct.seg6_lwt** %18, align 8
  %113 = load %struct.seg6_lwt*, %struct.seg6_lwt** %18, align 8
  %114 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %113, i32 0, i32 1
  %115 = load i32, i32* @GFP_ATOMIC, align 4
  %116 = call i32 @dst_cache_init(i32* %114, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %121 = call i32 @kfree(%struct.lwtunnel_state* %120)
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

123:                                              ; preds = %110
  %124 = load %struct.seg6_lwt*, %struct.seg6_lwt** %18, align 8
  %125 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %124, i32 0, i32 0
  %126 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %14, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @memcpy(i32* %125, %struct.seg6_iptunnel_encap* %126, i32 %127)
  %129 = load i32, i32* @LWTUNNEL_ENCAP_SEG6, align 4
  %130 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %131 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @LWTUNNEL_STATE_INPUT_REDIRECT, align 4
  %133 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %134 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %14, align 8
  %138 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 128
  br i1 %140, label %141, label %147

141:                                              ; preds = %123
  %142 = load i32, i32* @LWTUNNEL_STATE_OUTPUT_REDIRECT, align 4
  %143 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %144 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %123
  %148 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %14, align 8
  %149 = call i32 @seg6_lwt_headroom(%struct.seg6_iptunnel_encap* %148)
  %150 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %151 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %153 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* %152, %struct.lwtunnel_state** %153, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %154

154:                                              ; preds = %147, %119, %107, %96, %83, %77, %66, %51, %44, %33
  %155 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.seg6_iptunnel_encap* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @seg6_validate_srh(i32, i32) #2

declare dso_local %struct.lwtunnel_state* @lwtunnel_state_alloc(i32) #2

declare dso_local %struct.seg6_lwt* @seg6_lwt_lwtunnel(%struct.lwtunnel_state*) #2

declare dso_local i32 @dst_cache_init(i32*, i32) #2

declare dso_local i32 @kfree(%struct.lwtunnel_state*) #2

declare dso_local i32 @memcpy(i32*, %struct.seg6_iptunnel_encap*, i32) #2

declare dso_local i32 @seg6_lwt_headroom(%struct.seg6_iptunnel_encap*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
