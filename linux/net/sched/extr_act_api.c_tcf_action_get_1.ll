; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_get_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_get_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_ops = type { i64 (%struct.net.0*, %struct.tc_action.1**, i32)*, i32 }
%struct.net.0 = type opaque
%struct.tc_action.1 = type opaque

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@tcf_action_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid TC action index value\00", align 1
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Specified TC action kind not found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"TC action with specified index not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_action* (%struct.net*, %struct.nlattr*, %struct.nlmsghdr*, i32, %struct.netlink_ext_ack*)* @tcf_action_get_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_action* @tcf_action_get_1(%struct.net* %0, %struct.nlattr* %1, %struct.nlmsghdr* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_action_ops*, align 8
  %15 = alloca %struct.tc_action*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load i32, i32* @TCA_ACT_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @TCA_ACT_MAX, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %26 = load i32, i32* @tcf_action_policy, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %24, %struct.nlattr* %25, i32 %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %91

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %17, align 4
  %35 = load i64, i64* @TCA_ACT_INDEX, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp eq %struct.nlattr* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* @TCA_ACT_INDEX, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_len(%struct.nlattr* %42)
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %48 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %91

49:                                               ; preds = %39
  %50 = load i64, i64* @TCA_ACT_INDEX, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_u32(%struct.nlattr* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  %56 = load i64, i64* @TCA_ACT_KIND, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr* %58)
  store %struct.tc_action_ops* %59, %struct.tc_action_ops** %14, align 8
  %60 = load %struct.tc_action_ops*, %struct.tc_action_ops** %14, align 8
  %61 = icmp ne %struct.tc_action_ops* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %64 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %91

65:                                               ; preds = %49
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  %68 = load %struct.tc_action_ops*, %struct.tc_action_ops** %14, align 8
  %69 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %68, i32 0, i32 0
  %70 = load i64 (%struct.net.0*, %struct.tc_action.1**, i32)*, i64 (%struct.net.0*, %struct.tc_action.1**, i32)** %69, align 8
  %71 = load %struct.net*, %struct.net** %7, align 8
  %72 = bitcast %struct.net* %71 to %struct.net.0*
  %73 = bitcast %struct.tc_action** %15 to %struct.tc_action.1**
  %74 = load i32, i32* %16, align 4
  %75 = call i64 %70(%struct.net.0* %72, %struct.tc_action.1** %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %79 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %86

80:                                               ; preds = %65
  %81 = load %struct.tc_action_ops*, %struct.tc_action_ops** %14, align 8
  %82 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %85, %struct.tc_action** %6, align 8
  store i32 1, i32* %18, align 4
  br label %94

86:                                               ; preds = %77
  %87 = load %struct.tc_action_ops*, %struct.tc_action_ops** %14, align 8
  %88 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @module_put(i32 %89)
  br label %91

91:                                               ; preds = %86, %62, %46, %31
  %92 = load i32, i32* %17, align 4
  %93 = call %struct.tc_action* @ERR_PTR(i32 %92)
  store %struct.tc_action* %93, %struct.tc_action** %6, align 8
  store i32 1, i32* %18, align 4
  br label %94

94:                                               ; preds = %91, %80
  %95 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  ret %struct.tc_action* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr*) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local %struct.tc_action* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
