; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_rpfilter.c_rpfilter_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_rpfilter.c_rpfilter_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_rpfilter_info* }
%struct.xt_rpfilter_info = type { i32 }

@XT_RPFILTER_OPTION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown options\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mangle\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"only valid in 'raw' or 'mangle' table, not '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @rpfilter_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpfilter_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_rpfilter_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %7, align 8
  store %struct.xt_rpfilter_info* %8, %struct.xt_rpfilter_info** %4, align 8
  %9 = load i32, i32* @XT_RPFILTER_OPTION_MASK, align 4
  %10 = xor i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_rpfilter_info, %struct.xt_rpfilter_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %23 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %29 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %35 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
