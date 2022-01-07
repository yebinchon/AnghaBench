; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_tunnel_obj = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NFTA_TUNNEL_KEY_ID = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_TOS = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_object*, i32)* @nft_tunnel_obj_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_dump(%struct.sk_buff* %0, %struct.nft_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nft_tunnel_obj*, align 8
  %9 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_object* %1, %struct.nft_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nft_object*, %struct.nft_object** %6, align 8
  %11 = call %struct.nft_tunnel_obj* @nft_obj_data(%struct.nft_object* %10)
  store %struct.nft_tunnel_obj* %11, %struct.nft_tunnel_obj** %8, align 8
  %12 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %13 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ip_tunnel_info* %16, %struct.ip_tunnel_info** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @NFTA_TUNNEL_KEY_ID, align 4
  %19 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tunnel_id_to_key32(i32 %22)
  %24 = call i64 @nla_put_be32(%struct.sk_buff* %17, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %29 = call i64 @nft_tunnel_ip_dump(%struct.sk_buff* %27, %struct.ip_tunnel_info* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %34 = call i64 @nft_tunnel_ports_dump(%struct.sk_buff* %32, %struct.ip_tunnel_info* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %39 = call i64 @nft_tunnel_flags_dump(%struct.sk_buff* %37, %struct.ip_tunnel_info* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @NFTA_TUNNEL_KEY_TOS, align 4
  %44 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %45 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u8(%struct.sk_buff* %42, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @NFTA_TUNNEL_KEY_TTL, align 4
  %53 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put_u8(%struct.sk_buff* %51, i32 %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %62 = call i64 @nft_tunnel_opts_dump(%struct.sk_buff* %60, %struct.nft_tunnel_obj* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %50, %41, %36, %31, %26, %3
  br label %66

65:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.nft_tunnel_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i64 @nft_tunnel_ip_dump(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i64 @nft_tunnel_ports_dump(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i64 @nft_tunnel_flags_dump(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nft_tunnel_opts_dump(%struct.sk_buff*, %struct.nft_tunnel_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
