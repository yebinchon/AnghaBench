; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_dccp.c_dccp_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_dccp.c_dccp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i64, i32, i32, %struct.xt_dccp_info* }
%struct.xt_dccp_info = type { i64*, i64*, i32, i32, i32, i32 }
%struct.dccp_hdr = type { i32, i32 }

@XT_DCCP_SRC_PORTS = common dso_local global i32 0, align 4
@XT_DCCP_DEST_PORTS = common dso_local global i32 0, align 4
@XT_DCCP_TYPE = common dso_local global i32 0, align 4
@XT_DCCP_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @dccp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_dccp_info*, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca %struct.dccp_hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 3
  %11 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %10, align 8
  store %struct.xt_dccp_info* %11, %struct.xt_dccp_info** %6, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %20 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %21, i32 8, %struct.dccp_hdr* %8)
  store %struct.dccp_hdr* %22, %struct.dccp_hdr** %7, align 8
  %23 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %24 = icmp eq %struct.dccp_hdr* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %27 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %135

28:                                               ; preds = %17
  %29 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  %33 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %34 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %32, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %28
  %40 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  %44 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %45 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %43, %48
  br label %50

50:                                               ; preds = %39, %28
  %51 = phi i1 [ false, %28 ], [ %49, %39 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @XT_DCCP_SRC_PORTS, align 4
  %54 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %55 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %58 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @DCCHECK(i32 %52, i32 %53, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %50
  %63 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ntohs(i32 %65)
  %67 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %68 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %66, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %62
  %74 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ntohs(i32 %76)
  %78 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %79 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %77, %82
  br label %84

84:                                               ; preds = %73, %62
  %85 = phi i1 [ false, %62 ], [ %83, %73 ]
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @XT_DCCP_DEST_PORTS, align 4
  %88 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %89 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %92 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @DCCHECK(i32 %86, i32 %87, i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %84
  %97 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %98 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %99 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @match_types(%struct.dccp_hdr* %97, i32 %100)
  %102 = load i32, i32* @XT_DCCP_TYPE, align 4
  %103 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %104 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %107 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @DCCHECK(i32 %101, i32 %102, i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %96
  %112 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %113 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %117 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %120 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %121 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %120, i32 0, i32 1
  %122 = call i32 @match_option(i32 %114, %struct.sk_buff* %115, i32 %118, %struct.dccp_hdr* %119, i32* %121)
  %123 = load i32, i32* @XT_DCCP_OPTION, align 4
  %124 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %125 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.xt_dccp_info*, %struct.xt_dccp_info** %6, align 8
  %128 = getelementptr inbounds %struct.xt_dccp_info, %struct.xt_dccp_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @DCCHECK(i32 %122, i32 %123, i32 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br label %132

132:                                              ; preds = %111, %96, %84, %50
  %133 = phi i1 [ false, %96 ], [ false, %84 ], [ false, %50 ], [ %131, %111 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %132, %25, %16
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

declare dso_local i64 @DCCHECK(i32, i32, i32, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @match_types(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @match_option(i32, %struct.sk_buff*, i32, %struct.dccp_hdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
