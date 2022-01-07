; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_limit_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_limit_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_rateinfo* }
%struct.xt_rateinfo = type { i32, i32, i64, i64, %struct.xt_limit_priv* }
%struct.xt_limit_priv = type { i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Overflow, try lower: %u/%u\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @limit_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_rateinfo*, align 8
  %5 = alloca %struct.xt_limit_priv*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %7, align 8
  store %struct.xt_rateinfo* %8, %struct.xt_rateinfo** %4, align 8
  %9 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %10 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %15 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %18 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = call i64 @user2credits(i32 %20)
  %22 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %23 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @user2credits(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %13, %1
  %28 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %29 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %32 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %13
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.xt_limit_priv* @kmalloc(i32 24, i32 %38)
  store %struct.xt_limit_priv* %39, %struct.xt_limit_priv** %5, align 8
  %40 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %41 = icmp eq %struct.xt_limit_priv* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %37
  %46 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %47 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %48 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %47, i32 0, i32 4
  store %struct.xt_limit_priv* %46, %struct.xt_limit_priv** %48, align 8
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %51 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %53 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %56 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = call i64 @user2credits(i32 %58)
  %60 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %61 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %63 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %45
  %67 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %68 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %71 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %73 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @user2credits(i32 %74)
  %76 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %77 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %45
  %79 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %80 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %79, i32 0, i32 0
  %81 = call i32 @spin_lock_init(i32* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %42, %27
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @user2credits(i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32) #1

declare dso_local %struct.xt_limit_priv* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
