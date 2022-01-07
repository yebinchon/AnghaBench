; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_nsh.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_nsh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.nshhdr = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@NSH_BASE_HDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NSH_M_TYPE1_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*)* @parse_nsh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nsh(%struct.sk_buff* %0, %struct.sw_flow_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.nshhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_network_offset(%struct.sk_buff* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @NSH_BASE_HDR_LEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @check_header(%struct.sk_buff* %13, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %116

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.nshhdr* @nsh_hdr(%struct.sk_buff* %25)
  store %struct.nshhdr* %26, %struct.nshhdr** %6, align 8
  %27 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %28 = call i64 @nsh_get_ver(%struct.nshhdr* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %30 = call i64 @nsh_hdr_len(%struct.nshhdr* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %116

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @check_header(%struct.sk_buff* %37, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %116

48:                                               ; preds = %36
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.nshhdr* @nsh_hdr(%struct.sk_buff* %49)
  store %struct.nshhdr* %50, %struct.nshhdr** %6, align 8
  %51 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %52 = call i32 @nsh_get_flags(%struct.nshhdr* %51)
  %53 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %54 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %58 = call i32 @nsh_get_ttl(%struct.nshhdr* %57)
  %59 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %60 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 4
  %63 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %64 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %67 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %71 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %74 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %78 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %81 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %85 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %112 [
    i32 129, label %89
    i32 128, label %106
  ]

89:                                               ; preds = %48
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @NSH_M_TYPE1_LEN, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %116

96:                                               ; preds = %89
  %97 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %98 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %102 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i32 %100, i32 %104, i32 4)
  br label %115

106:                                              ; preds = %48
  %107 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %108 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memset(i32 %110, i32 0, i32 4)
  br label %115

112:                                              ; preds = %48
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %116

115:                                              ; preds = %106, %96
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %112, %93, %46, %33, %22
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @check_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nshhdr* @nsh_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nsh_get_ver(%struct.nshhdr*) #1

declare dso_local i64 @nsh_hdr_len(%struct.nshhdr*) #1

declare dso_local i32 @nsh_get_flags(%struct.nshhdr*) #1

declare dso_local i32 @nsh_get_ttl(%struct.nshhdr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
