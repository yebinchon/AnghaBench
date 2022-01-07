; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_limit.c_ebt_limit_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_limit.c_ebt_limit_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_limit_info* }
%struct.ebt_limit_info = type { i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"overflow, try lower: %u/%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_limit_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_limit_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_limit_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  store %struct.ebt_limit_info* %7, %struct.ebt_limit_info** %4, align 8
  %8 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %9 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %14 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %17 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = call i64 @user2credits(i32 %19)
  %21 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %22 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @user2credits(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %12, %1
  %27 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %28 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %31 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %12
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %39 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %41 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %44 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = call i64 @user2credits(i32 %46)
  %48 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %49 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %51 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %54 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = call i64 @user2credits(i32 %56)
  %58 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %59 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %61 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @user2credits(i32 %62)
  %64 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %4, align 8
  %65 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %36, %26
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @user2credits(i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
