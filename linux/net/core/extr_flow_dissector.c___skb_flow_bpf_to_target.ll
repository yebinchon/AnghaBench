; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_bpf_to_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_bpf_to_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_flow_keys = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.flow_dissector = type { i32 }
%struct.flow_dissector_key_control = type { i8*, i32, i32 }
%struct.flow_dissector_key_basic = type { i32, i32 }
%struct.flow_dissector_key_addrs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.flow_dissector_key_ports = type { i32, i32 }
%struct.flow_dissector_key_tags = type { i32 }

@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i8* null, align 8
@FLOW_DIS_IS_FRAGMENT = common dso_local global i32 0, align 4
@FLOW_DIS_FIRST_FRAG = common dso_local global i32 0, align 4
@FLOW_DIS_ENCAPSULATION = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i8* null, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i8* null, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i8* null, align 8
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i8* null, align 8
@FLOW_DISSECTOR_KEY_FLOW_LABEL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_flow_keys*, %struct.flow_dissector*, i8*)* @__skb_flow_bpf_to_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__skb_flow_bpf_to_target(%struct.bpf_flow_keys* %0, %struct.flow_dissector* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_flow_keys*, align 8
  %5 = alloca %struct.flow_dissector*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flow_dissector_key_control*, align 8
  %8 = alloca %struct.flow_dissector_key_basic*, align 8
  %9 = alloca %struct.flow_dissector_key_addrs*, align 8
  %10 = alloca %struct.flow_dissector_key_ports*, align 8
  %11 = alloca %struct.flow_dissector_key_tags*, align 8
  store %struct.bpf_flow_keys* %0, %struct.bpf_flow_keys** %4, align 8
  store %struct.flow_dissector* %1, %struct.flow_dissector** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %13 = load i8*, i8** @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %12, i8* %13, i8* %14)
  %16 = bitcast i8* %15 to %struct.flow_dissector_key_control*
  store %struct.flow_dissector_key_control* %16, %struct.flow_dissector_key_control** %7, align 8
  %17 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %21 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %28 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %29 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @FLOW_DIS_FIRST_FRAG, align 4
  %39 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %40 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @FLOW_DIS_ENCAPSULATION, align 4
  %50 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %51 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %56 = load i8*, i8** @FLOW_DISSECTOR_KEY_BASIC, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %55, i8* %56, i8* %57)
  %59 = bitcast i8* %58 to %struct.flow_dissector_key_basic*
  store %struct.flow_dissector_key_basic* %59, %struct.flow_dissector_key_basic** %8, align 8
  %60 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %61 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.flow_dissector_key_basic*, %struct.flow_dissector_key_basic** %8, align 8
  %64 = getelementptr inbounds %struct.flow_dissector_key_basic, %struct.flow_dissector_key_basic* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %66 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.flow_dissector_key_basic*, %struct.flow_dissector_key_basic** %8, align 8
  %69 = getelementptr inbounds %struct.flow_dissector_key_basic, %struct.flow_dissector_key_basic* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %71 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ETH_P_IP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %54
  %76 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %77 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %78 = call i64 @dissector_uses_key(%struct.flow_dissector* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %82 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %81, i8* %82, i8* %83)
  %85 = bitcast i8* %84 to %struct.flow_dissector_key_addrs*
  store %struct.flow_dissector_key_addrs* %85, %struct.flow_dissector_key_addrs** %9, align 8
  %86 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %87 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.flow_dissector_key_addrs*, %struct.flow_dissector_key_addrs** %9, align 8
  %90 = getelementptr inbounds %struct.flow_dissector_key_addrs, %struct.flow_dissector_key_addrs* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %93 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.flow_dissector_key_addrs*, %struct.flow_dissector_key_addrs** %9, align 8
  %96 = getelementptr inbounds %struct.flow_dissector_key_addrs, %struct.flow_dissector_key_addrs* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %99 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %100 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %127

101:                                              ; preds = %75, %54
  %102 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %103 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ETH_P_IPV6, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %109 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %110 = call i64 @dissector_uses_key(%struct.flow_dissector* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %114 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %113, i8* %114, i8* %115)
  %117 = bitcast i8* %116 to %struct.flow_dissector_key_addrs*
  store %struct.flow_dissector_key_addrs* %117, %struct.flow_dissector_key_addrs** %9, align 8
  %118 = load %struct.flow_dissector_key_addrs*, %struct.flow_dissector_key_addrs** %9, align 8
  %119 = getelementptr inbounds %struct.flow_dissector_key_addrs, %struct.flow_dissector_key_addrs* %118, i32 0, i32 0
  %120 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %121 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %120, i32 0, i32 4
  %122 = call i32 @memcpy(i32* %119, i32* %121, i32 4)
  %123 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %124 = load %struct.flow_dissector_key_control*, %struct.flow_dissector_key_control** %7, align 8
  %125 = getelementptr inbounds %struct.flow_dissector_key_control, %struct.flow_dissector_key_control* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %112, %107, %101
  br label %127

127:                                              ; preds = %126, %80
  %128 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %129 = load i8*, i8** @FLOW_DISSECTOR_KEY_PORTS, align 8
  %130 = call i64 @dissector_uses_key(%struct.flow_dissector* %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %134 = load i8*, i8** @FLOW_DISSECTOR_KEY_PORTS, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %133, i8* %134, i8* %135)
  %137 = bitcast i8* %136 to %struct.flow_dissector_key_ports*
  store %struct.flow_dissector_key_ports* %137, %struct.flow_dissector_key_ports** %10, align 8
  %138 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %139 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %10, align 8
  %142 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %144 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %10, align 8
  %147 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %127
  %149 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %150 = load i8*, i8** @FLOW_DISSECTOR_KEY_FLOW_LABEL, align 8
  %151 = call i64 @dissector_uses_key(%struct.flow_dissector* %149, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %155 = load i8*, i8** @FLOW_DISSECTOR_KEY_FLOW_LABEL, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %154, i8* %155, i8* %156)
  %158 = bitcast i8* %157 to %struct.flow_dissector_key_tags*
  store %struct.flow_dissector_key_tags* %158, %struct.flow_dissector_key_tags** %11, align 8
  %159 = load %struct.bpf_flow_keys*, %struct.bpf_flow_keys** %4, align 8
  %160 = getelementptr inbounds %struct.bpf_flow_keys, %struct.bpf_flow_keys* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ntohl(i32 %161)
  %163 = load %struct.flow_dissector_key_tags*, %struct.flow_dissector_key_tags** %11, align 8
  %164 = getelementptr inbounds %struct.flow_dissector_key_tags, %struct.flow_dissector_key_tags* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %153, %148
  ret void
}

declare dso_local i8* @skb_flow_dissector_target(%struct.flow_dissector*, i8*, i8*) #1

declare dso_local i64 @dissector_uses_key(%struct.flow_dissector*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
