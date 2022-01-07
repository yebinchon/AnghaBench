; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_log_status3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_log_status3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32 }

@WM5100_SPK_SHUTDOWN_WARN_EINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Speaker shutdown warning\0A\00", align 1
@WM5100_SPK_SHUTDOWN_EINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Speaker shutdown\0A\00", align 1
@WM5100_CLKGEN_ERR_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SYSCLK underclocked\0A\00", align 1
@WM5100_CLKGEN_ERR_ASYNC_EINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ASYNCCLK underclocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm5100_priv*, i32)* @wm5100_log_status3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_log_status3(%struct.wm5100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wm5100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WM5100_SPK_SHUTDOWN_WARN_EINT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_crit(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WM5100_SPK_SHUTDOWN_EINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %21 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_crit(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WM5100_CLKGEN_ERR_EINT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_crit(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WM5100_CLKGEN_ERR_ASYNC_EINT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_crit(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
