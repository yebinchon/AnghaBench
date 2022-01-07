; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_tunnel.c_decap_internal.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_tunnel.c_decap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.gre_hdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }

@TC_ACT_OK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@BPF_ADJ_ROOM_MAC = common dso_local global i32 0, align 4
@BPF_F_ADJ_ROOM_FIXED_GSO = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*, i32, i32, i8)* @decap_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decap_internal(%struct.__sk_buff* %0, i32 %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.gre_hdr, align 4
  %12 = alloca %struct.udphdr, align 4
  %13 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8, i8* %9, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %73 [
    i32 131, label %17
    i32 130, label %17
    i32 132, label %18
    i32 129, label %46
  ]

17:                                               ; preds = %4, %4
  br label %75

18:                                               ; preds = %4
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load %struct.__sk_buff*, %struct.__sk_buff** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %24, %25
  %27 = bitcast %struct.gre_hdr* %11 to %struct.udphdr*
  %28 = call i32 @bpf_skb_load_bytes(%struct.__sk_buff* %23, i32 %26, %struct.udphdr* %27, i32 8)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %31, i32* %5, align 4
  br label %87

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.gre_hdr, %struct.gre_hdr* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bpf_ntohs(i32 %34)
  switch i32 %35, label %45 [
    i32 134, label %36
    i32 133, label %41
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @ETH_HLEN, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %32, %41, %36
  br label %75

46:                                               ; preds = %4
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load %struct.__sk_buff*, %struct.__sk_buff** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @bpf_skb_load_bytes(%struct.__sk_buff* %51, i32 %54, %struct.udphdr* %12, i32 8)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %87

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bpf_ntohs(i32 %61)
  switch i32 %62, label %72 [
    i32 128, label %63
    i32 135, label %68
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @ETH_HLEN, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %59, %68, %63
  br label %75

73:                                               ; preds = %4
  %74 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %74, i32* %5, align 4
  br label %87

75:                                               ; preds = %72, %45, %17
  %76 = load %struct.__sk_buff*, %struct.__sk_buff** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32, i32* @BPF_ADJ_ROOM_MAC, align 4
  %80 = load i32, i32* @BPF_F_ADJ_ROOM_FIXED_GSO, align 4
  %81 = call i64 @bpf_skb_adjust_room(%struct.__sk_buff* %76, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %83, %73, %57, %30
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @bpf_skb_load_bytes(%struct.__sk_buff*, i32, %struct.udphdr*, i32) #1

declare dso_local i32 @bpf_ntohs(i32) #1

declare dso_local i64 @bpf_skb_adjust_room(%struct.__sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
