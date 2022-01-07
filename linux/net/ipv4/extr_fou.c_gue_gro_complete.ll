; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, i32)* }
%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.guehdr = type { i32, i64, i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@inet6_offloads = common dso_local global %struct.net_offload** null, align 8
@inet_offloads = common dso_local global %struct.net_offload** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @gue_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gue_gro_complete(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_offload**, align 8
  %9 = alloca %struct.guehdr*, align 8
  %10 = alloca %struct.net_offload*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.guehdr*
  store %struct.guehdr* %20, %struct.guehdr** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.guehdr*, %struct.guehdr** %9, align 8
  %24 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %49 [
    i32 0, label %26
    i32 1, label %37
  ]

26:                                               ; preds = %3
  %27 = load %struct.guehdr*, %struct.guehdr** %9, align 8
  %28 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.guehdr*, %struct.guehdr** %9, align 8
  %31 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = add i64 24, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.guehdr*, %struct.guehdr** %9, align 8
  %39 = bitcast %struct.guehdr* %38 to %struct.iphdr*
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %46 [
    i32 4, label %42
    i32 6, label %44
  ]

42:                                               ; preds = %37
  %43 = load i64, i64* @IPPROTO_IPIP, align 8
  store i64 %43, i64* %12, align 8
  br label %48

44:                                               ; preds = %37
  %45 = load i64, i64* @IPPROTO_IPV6, align 8
  store i64 %45, i64* %12, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %102

48:                                               ; preds = %44, %42
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %102

51:                                               ; preds = %48, %26
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load %struct.net_offload**, %struct.net_offload*** @inet6_offloads, align 8
  br label %62

60:                                               ; preds = %51
  %61 = load %struct.net_offload**, %struct.net_offload*** @inet_offloads, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi %struct.net_offload** [ %59, %58 ], [ %61, %60 ]
  store %struct.net_offload** %63, %struct.net_offload*** %8, align 8
  %64 = load %struct.net_offload**, %struct.net_offload*** %8, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.net_offload*, %struct.net_offload** %64, i64 %65
  %67 = load %struct.net_offload*, %struct.net_offload** %66, align 8
  %68 = call %struct.net_offload* @rcu_dereference(%struct.net_offload* %67)
  store %struct.net_offload* %68, %struct.net_offload** %10, align 8
  %69 = load %struct.net_offload*, %struct.net_offload** %10, align 8
  %70 = icmp ne %struct.net_offload* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.net_offload*, %struct.net_offload** %10, align 8
  %73 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.sk_buff*, i32)* %75, null
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %71, %62
  %79 = phi i1 [ true, %62 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %99

84:                                               ; preds = %78
  %85 = load %struct.net_offload*, %struct.net_offload** %10, align 8
  %86 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %87, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %90, %91
  %93 = call i32 %88(%struct.sk_buff* %89, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %95, %96
  %98 = call i32 @skb_set_inner_mac_header(%struct.sk_buff* %94, i32 %97)
  br label %99

99:                                               ; preds = %84, %83
  %100 = call i32 (...) @rcu_read_unlock()
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %49, %46
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local %struct.net_offload* @rcu_dereference(%struct.net_offload*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_set_inner_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
