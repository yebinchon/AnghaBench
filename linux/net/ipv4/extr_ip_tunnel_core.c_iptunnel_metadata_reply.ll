; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_iptunnel_metadata_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_iptunnel_metadata_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metadata_dst = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@METADATA_IP_TUNNEL = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.metadata_dst* @iptunnel_metadata_reply(%struct.metadata_dst* %0, i32 %1) #0 {
  %3 = alloca %struct.metadata_dst*, align 8
  %4 = alloca %struct.metadata_dst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.metadata_dst*, align 8
  %7 = alloca %struct.ip_tunnel_info*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.metadata_dst* %0, %struct.metadata_dst** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %10 = icmp ne %struct.metadata_dst* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %13 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @METADATA_IP_TUNNEL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %19 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %11, %2
  store %struct.metadata_dst* null, %struct.metadata_dst** %3, align 8
  br label %94

27:                                               ; preds = %17
  %28 = load i64, i64* @METADATA_IP_TUNNEL, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.metadata_dst* @metadata_dst_alloc(i32 0, i64 %28, i32 %29)
  store %struct.metadata_dst* %30, %struct.metadata_dst** %6, align 8
  %31 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %32 = icmp ne %struct.metadata_dst* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store %struct.metadata_dst* null, %struct.metadata_dst** %3, align 8
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  %36 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.ip_tunnel_info* %37, %struct.ip_tunnel_info** %7, align 8
  %38 = load %struct.metadata_dst*, %struct.metadata_dst** %4, align 8
  %39 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.ip_tunnel_info* %40, %struct.ip_tunnel_info** %8, align 8
  %41 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %46 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IP_TUNNEL_INFO_IPV6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %34
  %55 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @memcpy(i32* %59, i32* %64, i32 4)
  br label %78

66:                                               ; preds = %34
  %67 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %54
  %79 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %80 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %92 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  store %struct.metadata_dst* %93, %struct.metadata_dst** %3, align 8
  br label %94

94:                                               ; preds = %78, %33, %26
  %95 = load %struct.metadata_dst*, %struct.metadata_dst** %3, align 8
  ret %struct.metadata_dst* %95
}

declare dso_local %struct.metadata_dst* @metadata_dst_alloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
