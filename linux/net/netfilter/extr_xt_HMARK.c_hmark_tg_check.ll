; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_hmark_info* }
%struct.xt_hmark_info = type { i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"proto mask must be zero with L3 mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XT_HMARK_METHOD_L3 = common dso_local global i32 0, align 4
@XT_HMARK_SPI_MASK = common dso_local global i32 0, align 4
@XT_HMARK_SPORT_MASK = common dso_local global i32 0, align 4
@XT_HMARK_DPORT_MASK = common dso_local global i32 0, align 4
@XT_HMARK_SPI = common dso_local global i32 0, align 4
@XT_HMARK_SPORT = common dso_local global i32 0, align 4
@XT_HMARK_DPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"spi-set and port-set can't be combined\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @hmark_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmark_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_hmark_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %7, align 8
  store %struct.xt_hmark_info* %8, %struct.xt_hmark_info** %4, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %9 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %10 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %18 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XT_HMARK_METHOD_L3, align 4
  %26 = call i32 @XT_HMARK_FLAG(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %73

30:                                               ; preds = %21, %16
  %31 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %32 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XT_HMARK_SPI_MASK, align 4
  %35 = call i32 @XT_HMARK_FLAG(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %40 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XT_HMARK_SPORT_MASK, align 4
  %43 = call i32 @XT_HMARK_FLAG(i32 %42)
  %44 = load i32, i32* @XT_HMARK_DPORT_MASK, align 4
  %45 = call i32 @XT_HMARK_FLAG(i32 %44)
  %46 = or i32 %43, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %78

52:                                               ; preds = %38, %30
  %53 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %54 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XT_HMARK_SPI, align 4
  %57 = call i32 @XT_HMARK_FLAG(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %62 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @XT_HMARK_SPORT, align 4
  %65 = call i32 @XT_HMARK_FLAG(i32 %64)
  %66 = load i32, i32* @XT_HMARK_DPORT, align 4
  %67 = call i32 @XT_HMARK_FLAG(i32 %66)
  %68 = or i32 %65, %67
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %73

72:                                               ; preds = %60, %52
  store i32 0, i32* %2, align 4
  br label %78

73:                                               ; preds = %71, %29
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %72, %49, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @XT_HMARK_FLAG(i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
