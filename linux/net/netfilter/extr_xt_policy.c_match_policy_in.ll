; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_match_policy_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_match_policy_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_policy_info = type { i32, i32, %struct.xt_policy_elem* }
%struct.xt_policy_elem = type { i32 }
%struct.sec_path = type { i32, i32* }

@XT_POLICY_MATCH_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_policy_info*, i16)* @match_policy_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_policy_in(%struct.sk_buff* %0, %struct.xt_policy_info* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_policy_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.xt_policy_elem*, align 8
  %9 = alloca %struct.sec_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_policy_info* %1, %struct.xt_policy_info** %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %13)
  store %struct.sec_path* %14, %struct.sec_path** %9, align 8
  %15 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %16 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XT_POLICY_MATCH_STRICT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %21 = icmp eq %struct.sec_path* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %28 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %31 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %99

35:                                               ; preds = %26, %23
  %36 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %37 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %91, %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %49 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = add nsw i32 %51, 1
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi i32 [ %52, %46 ], [ 0, %53 ]
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %58 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %99

62:                                               ; preds = %54
  %63 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %64 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %63, i32 0, i32 2
  %65 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.xt_policy_elem, %struct.xt_policy_elem* %65, i64 %67
  store %struct.xt_policy_elem* %68, %struct.xt_policy_elem** %8, align 8
  %69 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %70 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %8, align 8
  %77 = load i16, i16* %7, align 2
  %78 = call i64 @match_xfrm_state(i32 %75, %struct.xt_policy_elem* %76, i16 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %62
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %99

84:                                               ; preds = %80
  br label %90

85:                                               ; preds = %62
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %99

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %84
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %11, align 4
  br label %40

94:                                               ; preds = %40
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %88, %83, %61, %34, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @match_xfrm_state(i32, %struct.xt_policy_elem*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
