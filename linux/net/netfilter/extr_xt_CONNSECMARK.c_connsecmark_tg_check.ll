; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_connsecmark_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_connsecmark_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, i32, %struct.xt_connsecmark_target_info* }
%struct.xt_connsecmark_target_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"mangle\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"security\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"only valid in 'mangle' or 'security' table, not '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid mode: %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"cannot load conntrack support for proto=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @connsecmark_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connsecmark_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_connsecmark_target_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 3
  %8 = load %struct.xt_connsecmark_target_info*, %struct.xt_connsecmark_target_info** %7, align 8
  store %struct.xt_connsecmark_target_info* %8, %struct.xt_connsecmark_target_info** %4, align 8
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
  %24 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %14, %1
  %28 = load %struct.xt_connsecmark_target_info*, %struct.xt_connsecmark_target_info** %4, align 8
  %29 = getelementptr inbounds %struct.xt_connsecmark_target_info, %struct.xt_connsecmark_target_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %27, %27
  br label %39

32:                                               ; preds = %27
  %33 = load %struct.xt_connsecmark_target_info*, %struct.xt_connsecmark_target_info** %4, align 8
  %34 = getelementptr inbounds %struct.xt_connsecmark_target_info, %struct.xt_connsecmark_target_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %41 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %44 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nf_ct_netns_get(i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %51 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %32, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
