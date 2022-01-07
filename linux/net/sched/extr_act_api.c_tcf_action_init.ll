; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_init(%struct.net* %0, %struct.tcf_proto* %1, %struct.nlattr* %2, %struct.nlattr* %3, i8* %4, i32 %5, i32 %6, %struct.tc_action** %7, i64* %8, i32 %9, %struct.netlink_ext_ack* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.tcf_proto*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tc_action**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.netlink_ext_ack*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.tc_action*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %13, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %14, align 8
  store %struct.nlattr* %2, %struct.nlattr** %15, align 8
  store %struct.nlattr* %3, %struct.nlattr** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.tc_action** %7, %struct.tc_action*** %20, align 8
  store i64* %8, i64** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.netlink_ext_ack* %10, %struct.netlink_ext_ack** %23, align 8
  %31 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %24, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %25, align 8
  store i64 0, i64* %27, align 8
  %36 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %37 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %39 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %35, i32 %36, %struct.nlattr* %37, i32* null, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %28, align 4
  %40 = load i32, i32* %28, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %11
  %43 = load i32, i32* %28, align 4
  store i32 %43, i32* %12, align 4
  store i32 1, i32* %30, align 4
  br label %105

44:                                               ; preds = %11
  store i32 1, i32* %29, align 4
  br label %45

45:                                               ; preds = %91, %44
  %46 = load i32, i32* %29, align 4
  %47 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %29, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i1 [ false, %45 ], [ %54, %49 ]
  br i1 %56, label %57, label %94

57:                                               ; preds = %55
  %58 = load %struct.net*, %struct.net** %13, align 8
  %59 = load %struct.tcf_proto*, %struct.tcf_proto** %14, align 8
  %60 = load i32, i32* %29, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %70 = call %struct.tc_action* @tcf_action_init_1(%struct.net* %58, %struct.tcf_proto* %59, %struct.nlattr* %63, %struct.nlattr* %64, i8* %65, i32 %66, i32 %67, i32 %68, %struct.netlink_ext_ack* %69)
  store %struct.tc_action* %70, %struct.tc_action** %26, align 8
  %71 = load %struct.tc_action*, %struct.tc_action** %26, align 8
  %72 = call i64 @IS_ERR(%struct.tc_action* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = load %struct.tc_action*, %struct.tc_action** %26, align 8
  %76 = call i32 @PTR_ERR(%struct.tc_action* %75)
  store i32 %76, i32* %28, align 4
  br label %100

77:                                               ; preds = %57
  %78 = load i32, i32* %29, align 4
  %79 = load %struct.tc_action*, %struct.tc_action** %26, align 8
  %80 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tc_action*, %struct.tc_action** %26, align 8
  %82 = call i64 @tcf_action_fill_size(%struct.tc_action* %81)
  %83 = load i64, i64* %27, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %27, align 8
  %85 = load %struct.tc_action*, %struct.tc_action** %26, align 8
  %86 = load %struct.tc_action**, %struct.tc_action*** %20, align 8
  %87 = load i32, i32* %29, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %86, i64 %89
  store %struct.tc_action* %85, %struct.tc_action** %90, align 8
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %29, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %29, align 4
  br label %45

94:                                               ; preds = %55
  %95 = load i64, i64* %27, align 8
  %96 = call i64 @tcf_action_full_attrs_size(i64 %95)
  %97 = load i64*, i64** %21, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* %29, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  store i32 1, i32* %30, align 4
  br label %105

100:                                              ; preds = %74
  %101 = load %struct.tc_action**, %struct.tc_action*** %20, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @tcf_action_destroy(%struct.tc_action** %101, i32 %102)
  %104 = load i32, i32* %28, align 4
  store i32 %104, i32* %12, align 4
  store i32 1, i32* %30, align 4
  br label %105

105:                                              ; preds = %100, %94, %42
  %106 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, %struct.netlink_ext_ack*) #2

declare dso_local %struct.tc_action* @tcf_action_init_1(%struct.net*, %struct.tcf_proto*, %struct.nlattr*, %struct.nlattr*, i8*, i32, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i64 @IS_ERR(%struct.tc_action*) #2

declare dso_local i32 @PTR_ERR(%struct.tc_action*) #2

declare dso_local i64 @tcf_action_fill_size(%struct.tc_action*) #2

declare dso_local i64 @tcf_action_full_attrs_size(i64) #2

declare dso_local i32 @tcf_action_destroy(%struct.tc_action**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
