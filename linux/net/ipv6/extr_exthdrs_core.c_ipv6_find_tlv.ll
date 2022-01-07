; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs_core.c_ipv6_find_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs_core.c_ipv6_find_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_find_tlv(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6_opt_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i8* @skb_network_header(%struct.sk_buff* %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i8* @skb_tail_pointer(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i8* @skb_network_header(%struct.sk_buff* %18)
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 2
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %91

29:                                               ; preds = %3
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = bitcast i8* %33 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %34, %struct.ipv6_opt_hdr** %10, align 8
  %35 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %36 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 3
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %91

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %83, %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %4, align 4
  br label %92

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  switch i32 %67, label %69 [
    i32 128, label %68
  ]

68:                                               ; preds = %66
  store i32 1, i32* %13, align 4
  br label %83

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %91

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %51

90:                                               ; preds = %51
  br label %91

91:                                               ; preds = %90, %81, %45, %28
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
