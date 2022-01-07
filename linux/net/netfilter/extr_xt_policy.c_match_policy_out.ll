; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_match_policy_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_match_policy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_policy_info = type { i32, i32, %struct.xt_policy_elem* }
%struct.xt_policy_elem = type { i32 }
%struct.dst_entry = type { i32* }
%struct.xfrm_dst = type { %struct.dst_entry* }

@XT_POLICY_MATCH_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_policy_info*, i16)* @match_policy_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_policy_out(%struct.sk_buff* %0, %struct.xt_policy_info* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_policy_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.xt_policy_elem*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_policy_info* %1, %struct.xt_policy_info** %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %9, align 8
  %15 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %16 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XT_POLICY_MATCH_STRICT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %95

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %28 = icmp ne %struct.dst_entry* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %82

36:                                               ; preds = %34
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %46 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %95

50:                                               ; preds = %42
  %51 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %52 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %51, i32 0, i32 2
  %53 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.xt_policy_elem, %struct.xt_policy_elem* %53, i64 %55
  store %struct.xt_policy_elem* %56, %struct.xt_policy_elem** %8, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %58 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %8, align 8
  %61 = load i16, i16* %7, align 2
  %62 = call i64 @match_xfrm_state(i32* %59, %struct.xt_policy_elem* %60, i16 zeroext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %95

68:                                               ; preds = %64
  br label %74

69:                                               ; preds = %50
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %95

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %77 = bitcast %struct.dst_entry* %76 to %struct.xfrm_dst*
  %78 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %77, i32 0, i32 0
  %79 = load %struct.dst_entry*, %struct.dst_entry** %78, align 8
  store %struct.dst_entry* %79, %struct.dst_entry** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %26

82:                                               ; preds = %34
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %88 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  %91 = zext i1 %90 to i32
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %85
  %94 = phi i32 [ %91, %85 ], [ 0, %92 ]
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %72, %67, %49, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @match_xfrm_state(i32*, %struct.xt_policy_elem*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
