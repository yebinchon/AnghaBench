; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_em_ipt_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_em_ipt_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.em_ipt_match = type { i32, i32, i32, %struct.xt_match* }
%struct.xt_match = type { i32 }
%struct.nlattr = type { i32 }

@TCA_EM_IPT_MAX = common dso_local global i32 0, align 4
@em_ipt_policy = common dso_local global i32 0, align 4
@TCA_EM_IPT_HOOK = common dso_local global i64 0, align 8
@TCA_EM_IPT_MATCH_NAME = common dso_local global i64 0, align 8
@TCA_EM_IPT_MATCH_DATA = common dso_local global i64 0, align 8
@TCA_EM_IPT_NFPROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to load match\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_ipt_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_ipt_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_ematch*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.em_ipt_match*, align 8
  %13 = alloca %struct.xt_match*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %9, align 8
  %18 = load i32, i32* @TCA_EM_IPT_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store %struct.em_ipt_match* null, %struct.em_ipt_match** %12, align 8
  %23 = load i32, i32* @TCA_EM_IPT_MAX, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @em_ipt_policy, align 4
  %27 = call i32 @nla_parse_deprecated(%struct.nlattr** %22, i32 %23, i8* %24, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

32:                                               ; preds = %4
  %33 = load i64, i64* @TCA_EM_IPT_HOOK, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i64, i64* @TCA_EM_IPT_MATCH_NAME, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i64, i64* @TCA_EM_IPT_MATCH_DATA, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* @TCA_EM_IPT_NFPROTO, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %42, %37, %32
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

55:                                               ; preds = %47
  %56 = load i64, i64* @TCA_EM_IPT_NFPROTO, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_u8(%struct.nlattr* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  switch i32 %60, label %62 [
    i32 129, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %55, %55
  br label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

65:                                               ; preds = %61
  %66 = call %struct.xt_match* @get_xt_match(%struct.nlattr** %22)
  store %struct.xt_match* %66, %struct.xt_match** %13, align 8
  %67 = load %struct.xt_match*, %struct.xt_match** %13, align 8
  %68 = call i64 @IS_ERR(%struct.xt_match* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.xt_match*, %struct.xt_match** %13, align 8
  %73 = call i32 @PTR_ERR(%struct.xt_match* %72)
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

74:                                               ; preds = %65
  %75 = load i64, i64* @TCA_EM_IPT_MATCH_DATA, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i32 @nla_len(%struct.nlattr* %77)
  %79 = call i32 @XT_ALIGN(i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 24, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.em_ipt_match* @kzalloc(i32 %83, i32 %84)
  store %struct.em_ipt_match* %85, %struct.em_ipt_match** %12, align 8
  %86 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %87 = icmp ne %struct.em_ipt_match* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %74
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %130

91:                                               ; preds = %74
  %92 = load %struct.xt_match*, %struct.xt_match** %13, align 8
  %93 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %94 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %93, i32 0, i32 3
  store %struct.xt_match* %92, %struct.xt_match** %94, align 8
  %95 = load i64, i64* @TCA_EM_IPT_HOOK, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_get_u32(%struct.nlattr* %97)
  %99 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %100 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %103 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %105 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @TCA_EM_IPT_MATCH_DATA, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @nla_memcpy(i32 %106, %struct.nlattr* %109, i32 %110)
  %112 = load %struct.net*, %struct.net** %6, align 8
  %113 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @check_match(%struct.net* %112, %struct.em_ipt_match* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %91
  br label %130

119:                                              ; preds = %91
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 24, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %125 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %127 = ptrtoint %struct.em_ipt_match* %126 to i64
  %128 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %129 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

130:                                              ; preds = %118, %88
  %131 = load %struct.em_ipt_match*, %struct.em_ipt_match** %12, align 8
  %132 = call i32 @kfree(%struct.em_ipt_match* %131)
  %133 = load %struct.xt_match*, %struct.xt_match** %13, align 8
  %134 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @module_put(i32 %135)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %138

138:                                              ; preds = %130, %119, %70, %62, %52, %30
  %139 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local %struct.xt_match* @get_xt_match(%struct.nlattr**) #2

declare dso_local i64 @IS_ERR(%struct.xt_match*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @PTR_ERR(%struct.xt_match*) #2

declare dso_local i32 @XT_ALIGN(i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local %struct.em_ipt_match* @kzalloc(i32, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i32 @check_match(%struct.net*, %struct.em_ipt_match*, i32) #2

declare dso_local i32 @kfree(%struct.em_ipt_match*) #2

declare dso_local i32 @module_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
