; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LOG.c_log_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LOG.c_log_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i64, %struct.xt_log_info* }
%struct.xt_log_info = type { i32, i8* }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"level %u >= 8\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"prefix is not null-terminated\0A\00", align 1
@NF_LOG_TYPE_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @log_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_log_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 1
  %7 = load %struct.xt_log_info*, %struct.xt_log_info** %6, align 8
  store %struct.xt_log_info* %7, %struct.xt_log_info** %4, align 8
  %8 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %9 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NFPROTO_IPV4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %15 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFPROTO_IPV6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13, %1
  %23 = load %struct.xt_log_info*, %struct.xt_log_info** %4, align 8
  %24 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.xt_log_info*, %struct.xt_log_info** %4, align 8
  %29 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %22
  %35 = load %struct.xt_log_info*, %struct.xt_log_info** %4, align 8
  %36 = getelementptr inbounds %struct.xt_log_info, %struct.xt_log_info* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 7
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %48 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @NF_LOG_TYPE_LOG, align 4
  %51 = call i32 @nf_logger_find_get(i64 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %42, %27, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_logger_find_get(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
