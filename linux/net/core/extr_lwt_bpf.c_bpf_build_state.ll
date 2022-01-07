; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i64, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.bpf_lwt = type { i32, i32, i32, i32 }

@LWT_BPF_MAX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@bpf_nl_policy = common dso_local global i32 0, align 4
@LWT_BPF_IN = common dso_local global i64 0, align 8
@LWT_BPF_OUT = common dso_local global i64 0, align 8
@LWT_BPF_XMIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_BPF = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_INPUT_REDIRECT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_LWT_IN = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_OUTPUT_REDIRECT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_LWT_OUT = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_XMIT_REDIRECT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_LWT_XMIT = common dso_local global i32 0, align 4
@LWT_BPF_XMIT_HEADROOM = common dso_local global i64 0, align 8
@LWT_BPF_MAX_HEADROOM = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* @bpf_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_build_state(%struct.nlattr* %0, i32 %1, i8* %2, %struct.lwtunnel_state** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lwtunnel_state**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lwtunnel_state*, align 8
  %15 = alloca %struct.bpf_lwt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.lwtunnel_state** %3, %struct.lwtunnel_state*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load i32, i32* @LWT_BPF_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AF_INET, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EAFNOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

34:                                               ; preds = %27, %5
  %35 = load i32, i32* @LWT_BPF_MAX, align 4
  %36 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %37 = load i32, i32* @bpf_nl_policy, align 4
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %39 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %35, %struct.nlattr* %36, i32 %37, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

44:                                               ; preds = %34
  %45 = load i64, i64* @LWT_BPF_IN, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @LWT_BPF_OUT, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* @LWT_BPF_XMIT, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

62:                                               ; preds = %54, %49, %44
  %63 = call %struct.lwtunnel_state* @lwtunnel_state_alloc(i32 16)
  store %struct.lwtunnel_state* %63, %struct.lwtunnel_state** %14, align 8
  %64 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %65 = icmp ne %struct.lwtunnel_state* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

69:                                               ; preds = %62
  %70 = load i32, i32* @LWTUNNEL_ENCAP_BPF, align 4
  %71 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %72 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %74 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state* %73)
  store %struct.bpf_lwt* %74, %struct.bpf_lwt** %15, align 8
  %75 = load i64, i64* @LWT_BPF_IN, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load i32, i32* @LWTUNNEL_STATE_INPUT_REDIRECT, align 4
  %81 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %82 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i64, i64* @LWT_BPF_IN, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = load %struct.bpf_lwt*, %struct.bpf_lwt** %15, align 8
  %89 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %88, i32 0, i32 3
  %90 = load i32, i32* @BPF_PROG_TYPE_LWT_IN, align 4
  %91 = call i32 @bpf_parse_prog(%struct.nlattr* %87, i32* %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %166

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i64, i64* @LWT_BPF_OUT, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i32, i32* @LWTUNNEL_STATE_OUTPUT_REDIRECT, align 4
  %103 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %104 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i64, i64* @LWT_BPF_OUT, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = load %struct.bpf_lwt*, %struct.bpf_lwt** %15, align 8
  %111 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %110, i32 0, i32 2
  %112 = load i32, i32* @BPF_PROG_TYPE_LWT_OUT, align 4
  %113 = call i32 @bpf_parse_prog(%struct.nlattr* %109, i32* %111, i32 %112)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %166

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i64, i64* @LWT_BPF_XMIT, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load i32, i32* @LWTUNNEL_STATE_XMIT_REDIRECT, align 4
  %125 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %126 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i64, i64* @LWT_BPF_XMIT, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = load %struct.bpf_lwt*, %struct.bpf_lwt** %15, align 8
  %133 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %132, i32 0, i32 1
  %134 = load i32, i32* @BPF_PROG_TYPE_LWT_XMIT, align 4
  %135 = call i32 @bpf_parse_prog(%struct.nlattr* %131, i32* %133, i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  br label %166

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %118
  %141 = load i64, i64* @LWT_BPF_XMIT_HEADROOM, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = icmp ne %struct.nlattr* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load i64, i64* @LWT_BPF_XMIT_HEADROOM, align 8
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = call i64 @nla_get_u32(%struct.nlattr* %148)
  store i64 %149, i64* %18, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* @LWT_BPF_MAX_HEADROOM, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @ERANGE, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  br label %166

156:                                              ; preds = %145
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %159 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %140
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.bpf_lwt*, %struct.bpf_lwt** %15, align 8
  %163 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %165 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* %164, %struct.lwtunnel_state** %165, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

166:                                              ; preds = %153, %138, %116, %94
  %167 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %168 = call i32 @bpf_destroy_state(%struct.lwtunnel_state* %167)
  %169 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %170 = call i32 @kfree(%struct.lwtunnel_state* %169)
  %171 = load i32, i32* %16, align 4
  store i32 %171, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %172

172:                                              ; preds = %166, %160, %66, %59, %42, %31
  %173 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.lwtunnel_state* @lwtunnel_state_alloc(i32) #2

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state*) #2

declare dso_local i32 @bpf_parse_prog(%struct.nlattr*, i32*, i32) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @bpf_destroy_state(%struct.lwtunnel_state*) #2

declare dso_local i32 @kfree(%struct.lwtunnel_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
