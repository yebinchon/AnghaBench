; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_param_set_ra.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_param_set_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }
%struct.batadv_algo_ops = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Routing algorithm '%s' is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @batadv_param_set_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_param_set_ra(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca %struct.batadv_algo_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %22, %14, %2
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.batadv_algo_ops* @batadv_algo_get(i8* %28)
  store %struct.batadv_algo_ops* %29, %struct.batadv_algo_ops** %6, align 8
  %30 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %6, align 8
  %31 = icmp ne %struct.batadv_algo_ops* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %40 = call i32 @param_set_copystring(i8* %38, %struct.kernel_param* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.batadv_algo_ops* @batadv_algo_get(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @param_set_copystring(i8*, %struct.kernel_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
