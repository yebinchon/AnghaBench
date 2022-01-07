; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_check_ctrlact.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_check_ctrlact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TC_ACT_VALUE_MAX = common dso_local global i32 0, align 4
@TC_ACT_EXT_OPCODE_MAX = common dso_local global i32 0, align 4
@TC_ACT_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid control action\00", align 1
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@TC_ACT_EXT_VAL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't goto NULL proto/chain\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't allocate goto_chain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_check_ctrlact(i32 %0, %struct.tcf_proto* %1, %struct.tcf_chain** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_chain**, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_chain** %2, %struct.tcf_chain*** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TC_ACT_EXT_OPCODE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TC_ACT_VALUE_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %10, align 4
  br label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @TC_ACT_EXT_OPCODE_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @TC_ACT_UNSPEC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %82

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TC_ACT_GOTO_CHAIN, align 4
  %47 = call i64 @TC_ACT_EXT_CMP(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TC_ACT_EXT_VAL_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %54 = icmp ne %struct.tcf_proto* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.tcf_chain**, %struct.tcf_chain*** %7, align 8
  %57 = icmp ne %struct.tcf_chain** %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %62 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %82

63:                                               ; preds = %55
  %64 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %65 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.tcf_chain* @tcf_chain_get_by_act(i32 %68, i32 %69)
  %71 = load %struct.tcf_chain**, %struct.tcf_chain*** %7, align 8
  store %struct.tcf_chain* %70, %struct.tcf_chain** %71, align 8
  %72 = load %struct.tcf_chain**, %struct.tcf_chain*** %7, align 8
  %73 = load %struct.tcf_chain*, %struct.tcf_chain** %72, align 8
  %74 = icmp ne %struct.tcf_chain* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %79 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %63
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %58, %41
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i32 @TC_ACT_EXT_OPCODE(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @TC_ACT_EXT_CMP(i32, i32) #1

declare dso_local %struct.tcf_chain* @tcf_chain_get_by_act(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
