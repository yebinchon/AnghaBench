; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_net_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_net_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32, i64 }

@BPF_F_ADJ_ROOM_FIXED_GSO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @bpf_skb_net_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_skb_net_shrink(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @skb_is_gso(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_is_gso_tcp(%struct.sk_buff* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %92

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %24, %20
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i32 @skb_unclone(%struct.sk_buff* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %92

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bpf_skb_net_hdr_pop(%struct.sk_buff* %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %92

68:                                               ; preds = %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i64 @skb_is_gso(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %73)
  store %struct.skb_shared_info* %74, %struct.skb_shared_info** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @skb_increase_gso_size(%struct.skb_shared_info* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* @SKB_GSO_DODGY, align 4
  %85 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %86 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %90 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %68
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %66, %54, %41, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso_tcp(%struct.sk_buff*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bpf_skb_net_hdr_pop(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_increase_gso_size(%struct.skb_shared_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
