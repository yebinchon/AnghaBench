; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_l2tp_info* }
%struct.xt_l2tp_info = type { i32, i64, i32, i32, i32 }

@XT_L2TP_TID = common dso_local global i32 0, align 4
@XT_L2TP_SID = common dso_local global i32 0, align 4
@XT_L2TP_VERSION = common dso_local global i32 0, align 4
@XT_L2TP_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown flags: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XT_L2TP_TYPE_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid flags combination: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"wrong L2TP version: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"v2 tid > 0xffff: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"v2 sid > 0xffff: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @l2tp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_l2tp_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %6, align 8
  store %struct.xt_l2tp_info* %7, %struct.xt_l2tp_info** %4, align 8
  %8 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @XT_L2TP_TID, align 4
  %12 = load i32, i32* @XT_L2TP_SID, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @XT_L2TP_VERSION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @XT_L2TP_TYPE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %132

28:                                               ; preds = %1
  %29 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %30 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @XT_L2TP_TID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %37 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XT_L2TP_SID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %35
  %43 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %44 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XT_L2TP_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %51 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XT_L2TP_TYPE_CONTROL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %42
  %56 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %57 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %132

62:                                               ; preds = %49, %35, %28
  %63 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %64 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @XT_L2TP_VERSION, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %62
  %70 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %71 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %76 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 3
  br i1 %78, label %79, label %86

79:                                               ; preds = %74, %69
  %80 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %81 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %132

86:                                               ; preds = %74
  %87 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %88 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %93 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XT_L2TP_TID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %100 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 65535
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %105 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %132

110:                                              ; preds = %98, %91
  %111 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %112 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @XT_L2TP_SID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %119 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 65535
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %124 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %132

129:                                              ; preds = %117, %110
  br label %130

130:                                              ; preds = %129, %86
  br label %131

131:                                              ; preds = %130, %62
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %122, %103, %79, %55, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
