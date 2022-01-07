; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_ematch.c___tcf_em_tree_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_ematch.c___tcf_em_tree_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch_tree = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_pkt_info = type { i32 }
%struct.tcf_ematch = type { i32 }

@CONFIG_NET_EMATCH_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"tc ematch: local stack overflow, increase NET_EMATCH_STACK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tcf_em_tree_match(%struct.sk_buff* %0, %struct.tcf_ematch_tree* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_ematch_tree*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcf_ematch*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_ematch_tree* %1, %struct.tcf_ematch_tree** %6, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @CONFIG_NET_EMATCH_STACK, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  br label %19

19:                                               ; preds = %91, %42, %3
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %6, align 8
  %23 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %20
  %28 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree* %28, i32 %29)
  store %struct.tcf_ematch* %30, %struct.tcf_ematch** %11, align 8
  %31 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %32 = call i64 @tcf_em_is_container(%struct.tcf_ematch* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CONFIG_NET_EMATCH_STACK, align 4
  %37 = icmp sge i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %96

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %18, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %49 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %19

51:                                               ; preds = %27
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %54 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %55 = call i32 @tcf_em_match(%struct.sk_buff* %52, %struct.tcf_ematch* %53, %struct.tcf_pkt_info* %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @tcf_em_early_end(%struct.tcf_ematch* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %20

64:                                               ; preds = %60, %20
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %18, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree* %74, i32 %75)
  store %struct.tcf_ematch* %76, %struct.tcf_ematch** %11, align 8
  %77 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %78 = call i64 @tcf_em_is_inverted(%struct.tcf_ematch* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %68
  %86 = load %struct.tcf_ematch*, %struct.tcf_ematch** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @tcf_em_early_end(%struct.tcf_ematch* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %65

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %19

94:                                               ; preds = %65
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

96:                                               ; preds = %41
  %97 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree*, i32) #2

declare dso_local i64 @tcf_em_is_container(%struct.tcf_ematch*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @tcf_em_match(%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*) #2

declare dso_local i64 @tcf_em_early_end(%struct.tcf_ematch*, i32) #2

declare dso_local i64 @tcf_em_is_inverted(%struct.tcf_ematch*) #2

declare dso_local i32 @net_warn_ratelimited(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
