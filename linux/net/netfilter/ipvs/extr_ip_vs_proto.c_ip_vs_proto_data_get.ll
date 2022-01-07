; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_proto_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_proto_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_proto_data = type { %struct.TYPE_2__*, %struct.ip_vs_proto_data* }
%struct.TYPE_2__ = type { i16 }
%struct.netns_ipvs = type { %struct.ip_vs_proto_data** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.ip_vs_proto_data*, align 8
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.ip_vs_proto_data*, align 8
  %7 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = call i32 @IP_VS_PROTO_HASH(i16 zeroext %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %11 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %10, i32 0, i32 0
  %12 = load %struct.ip_vs_proto_data**, %struct.ip_vs_proto_data*** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, i64 %14
  %16 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %15, align 8
  store %struct.ip_vs_proto_data* %16, %struct.ip_vs_proto_data** %6, align 8
  br label %17

17:                                               ; preds = %33, %2
  %18 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %6, align 8
  %19 = icmp ne %struct.ip_vs_proto_data* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %6, align 8
  %22 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %6, align 8
  store %struct.ip_vs_proto_data* %31, %struct.ip_vs_proto_data** %3, align 8
  br label %38

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %6, align 8
  %35 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %34, i32 0, i32 1
  %36 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %35, align 8
  store %struct.ip_vs_proto_data* %36, %struct.ip_vs_proto_data** %6, align 8
  br label %17

37:                                               ; preds = %17
  store %struct.ip_vs_proto_data* null, %struct.ip_vs_proto_data** %3, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %3, align 8
  ret %struct.ip_vs_proto_data* %39
}

declare dso_local i32 @IP_VS_PROTO_HASH(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
