; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_SECMARK.c_secmark_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_SECMARK.c_secmark_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, %struct.xt_secmark_target_info* }
%struct.xt_secmark_target_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"mangle\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"security\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"only valid in 'mangle' or 'security' table, not '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"mode already set to %hu cannot mix with rules for mode %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid mode: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @secmark_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secmark_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_secmark_target_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %7, align 8
  store %struct.xt_secmark_target_info* %8, %struct.xt_secmark_target_info** %4, align 8
  %9 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %16 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %22 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %71

27:                                               ; preds = %14, %1
  %28 = load i32, i32* @mode, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* @mode, align 4
  %32 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %33 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* @mode, align 4
  %38 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %39 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %30, %27
  %45 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %49 [
    i32 128, label %48
  ]

48:                                               ; preds = %44
  br label %56

49:                                               ; preds = %44
  %50 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %51 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %48
  %57 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %58 = call i32 @checkentry_lsm(%struct.xt_secmark_target_info* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %71

63:                                               ; preds = %56
  %64 = load i32, i32* @mode, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %4, align 8
  %68 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @mode, align 4
  br label %70

70:                                               ; preds = %66, %63
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %61, %49, %36, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, ...) #1

declare dso_local i32 @checkentry_lsm(%struct.xt_secmark_target_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
