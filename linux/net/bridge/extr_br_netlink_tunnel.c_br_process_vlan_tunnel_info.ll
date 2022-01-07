; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_process_vlan_tunnel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_process_vlan_tunnel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.vtunnel_info = type { i32, i64, i64 }

@BRIDGE_VLAN_INFO_RANGE_BEGIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_process_vlan_tunnel_info(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i32 %2, %struct.vtunnel_info* %3, %struct.vtunnel_info* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vtunnel_info*, align 8
  %12 = alloca %struct.vtunnel_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %8, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.vtunnel_info* %3, %struct.vtunnel_info** %11, align 8
  store %struct.vtunnel_info* %4, %struct.vtunnel_info** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %18 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  %24 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %25 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %143

33:                                               ; preds = %23
  %34 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %35 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %36 = call i32 @memcpy(%struct.vtunnel_info* %34, %struct.vtunnel_info* %35, i32 24)
  br label %142

37:                                               ; preds = %6
  %38 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %39 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_END, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %37
  %45 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %46 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %143

54:                                               ; preds = %44
  %55 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %56 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %59 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %63 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %66 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = icmp ne i64 %61, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %143

73:                                               ; preds = %54
  %74 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %75 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %15, align 4
  %78 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %79 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %103, %73
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %86 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sle i64 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @br_vlan_tunnel_info(%struct.net_bridge_port* %90, i32 %91, i32 %92, i32 %93, i32* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %7, align 4
  br label %143

100:                                              ; preds = %89
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %82

106:                                              ; preds = %82
  %107 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %108 = call i32 @memset(%struct.vtunnel_info* %107, i32 0, i32 24)
  %109 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %110 = call i32 @memset(%struct.vtunnel_info* %109, i32 0, i32 24)
  br label %141

111:                                              ; preds = %37
  %112 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %113 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %143

119:                                              ; preds = %111
  %120 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %123 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %127 = getelementptr inbounds %struct.vtunnel_info, %struct.vtunnel_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @br_vlan_tunnel_info(%struct.net_bridge_port* %120, i32 %121, i32 %125, i32 %129, i32* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %119
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %7, align 4
  br label %143

136:                                              ; preds = %119
  %137 = load %struct.vtunnel_info*, %struct.vtunnel_info** %12, align 8
  %138 = call i32 @memset(%struct.vtunnel_info* %137, i32 0, i32 24)
  %139 = load %struct.vtunnel_info*, %struct.vtunnel_info** %11, align 8
  %140 = call i32 @memset(%struct.vtunnel_info* %139, i32 0, i32 24)
  br label %141

141:                                              ; preds = %136, %106
  br label %142

142:                                              ; preds = %141, %33
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %134, %116, %98, %70, %51, %30
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @memcpy(%struct.vtunnel_info*, %struct.vtunnel_info*, i32) #1

declare dso_local i32 @br_vlan_tunnel_info(%struct.net_bridge_port*, i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.vtunnel_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
