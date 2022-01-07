; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_get_xt_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_get_xt_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_ipt_xt_match = type { i32 (%struct.nlattr**, i32)*, i64 }
%struct.nlattr = type { i32 }
%struct.xt_match = type { i32 }

@TCA_EM_IPT_MATCH_NAME = common dso_local global i64 0, align 8
@em_ipt_xt_matches = common dso_local global %struct.em_ipt_xt_match* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unsupported xt match\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_EM_IPT_MATCH_REVISION = common dso_local global i64 0, align 8
@TCA_EM_IPT_NFPROTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xt_match* (%struct.nlattr**)* @get_xt_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xt_match* @get_xt_match(%struct.nlattr** %0) #0 {
  %2 = alloca %struct.xt_match*, align 8
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.em_ipt_xt_match*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %10 = load i64, i64* @TCA_EM_IPT_MATCH_NAME, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  store %struct.nlattr* %12, %struct.nlattr** %5, align 8
  %13 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** @em_ipt_xt_matches, align 8
  store %struct.em_ipt_xt_match* %13, %struct.em_ipt_xt_match** %4, align 8
  br label %14

14:                                               ; preds = %28, %1
  %15 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %16 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %22 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nla_strcmp(%struct.nlattr* %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %30 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %29, i32 1
  store %struct.em_ipt_xt_match* %30, %struct.em_ipt_xt_match** %4, align 8
  br label %14

31:                                               ; preds = %26, %14
  %32 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %33 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.xt_match* @ERR_PTR(i32 %39)
  store %struct.xt_match* %40, %struct.xt_match** %2, align 8
  br label %77

41:                                               ; preds = %31
  %42 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %43 = load i64, i64* @TCA_EM_IPT_MATCH_REVISION, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %49 = load i64, i64* @TCA_EM_IPT_MATCH_REVISION, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_get_u8(%struct.nlattr* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %55 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %54, i32 0, i32 0
  %56 = load i32 (%struct.nlattr**, i32)*, i32 (%struct.nlattr**, i32)** %55, align 8
  %57 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 %56(%struct.nlattr** %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.xt_match* @ERR_PTR(i32 %63)
  store %struct.xt_match* %64, %struct.xt_match** %2, align 8
  br label %77

65:                                               ; preds = %53
  %66 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %67 = load i64, i64* @TCA_EM_IPT_NFPROTO, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_u8(%struct.nlattr* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.em_ipt_xt_match*, %struct.em_ipt_xt_match** %4, align 8
  %73 = getelementptr inbounds %struct.em_ipt_xt_match, %struct.em_ipt_xt_match* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.xt_match* @xt_request_find_match(i32 %71, i64 %74, i32 %75)
  store %struct.xt_match* %76, %struct.xt_match** %2, align 8
  br label %77

77:                                               ; preds = %65, %62, %36
  %78 = load %struct.xt_match*, %struct.xt_match** %2, align 8
  ret %struct.xt_match* %78
}

declare dso_local i32 @nla_strcmp(%struct.nlattr*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.xt_match* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.xt_match* @xt_request_find_match(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
