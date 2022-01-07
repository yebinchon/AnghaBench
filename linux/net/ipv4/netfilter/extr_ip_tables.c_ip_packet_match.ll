; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_ip_packet_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_ip_packet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i64 }
%struct.ipt_ip = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPT_INV_SRCIP = common dso_local global i32 0, align 4
@IPT_INV_DSTIP = common dso_local global i32 0, align 4
@IPT_INV_VIA_IN = common dso_local global i32 0, align 4
@IPT_INV_VIA_OUT = common dso_local global i32 0, align 4
@IPT_INV_PROTO = common dso_local global i32 0, align 4
@IPT_INV_FRAG = common dso_local global i32 0, align 4
@IPT_F_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, i8*, i8*, %struct.ipt_ip*, i32)* @ip_packet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_packet_match(%struct.iphdr* %0, i8* %1, i8* %2, %struct.ipt_ip* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipt_ip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.iphdr* %0, %struct.iphdr** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.ipt_ip* %3, %struct.ipt_ip** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %14 = load i32, i32* @IPT_INV_SRCIP, align 4
  %15 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %19 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %17, %21
  %23 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %24 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %22, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @NF_INVF(%struct.ipt_ip* %13, i32 %14, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %5
  %32 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %33 = load i32, i32* @IPT_INV_DSTIP, align 4
  %34 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %38 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %36, %40
  %42 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %43 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @NF_INVF(%struct.ipt_ip* %32, i32 %33, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31, %5
  store i32 0, i32* %6, align 4
  br label %124

51:                                               ; preds = %31
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %54 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %57 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ifname_compare_aligned(i8* %52, i32 %55, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %61 = load i32, i32* @IPT_INV_VIA_IN, align 4
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @NF_INVF(%struct.ipt_ip* %60, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %124

68:                                               ; preds = %51
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %71 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %74 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ifname_compare_aligned(i8* %69, i32 %72, i32 %75)
  store i64 %76, i64* %12, align 8
  %77 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %78 = load i32, i32* @IPT_INV_VIA_OUT, align 4
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @NF_INVF(%struct.ipt_ip* %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %124

85:                                               ; preds = %68
  %86 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %87 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %92 = load i32, i32* @IPT_INV_PROTO, align 4
  %93 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %97 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @NF_INVF(%struct.ipt_ip* %91, i32 %92, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %124

104:                                              ; preds = %90, %85
  %105 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %106 = load i32, i32* @IPT_INV_FRAG, align 4
  %107 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  %108 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IPT_F_FRAG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %113, %104
  %118 = phi i1 [ false, %104 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = call i64 @NF_INVF(%struct.ipt_ip* %105, i32 %106, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %6, align 4
  br label %124

123:                                              ; preds = %117
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %122, %103, %84, %67, %50
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i64 @NF_INVF(%struct.ipt_ip*, i32, i32) #1

declare dso_local i64 @ifname_compare_aligned(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
