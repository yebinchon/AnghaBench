; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_ctrl_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_ctrl_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd_clsh_ctrl = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Class-H not a valid new state:\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLSH_REQ_ENABLE = common dso_local global i32 0, align 4
@CLSH_REQ_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcd_clsh_ctrl_set_state(%struct.wcd_clsh_ctrl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcd_clsh_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  store %struct.wcd_clsh_ctrl* %0, %struct.wcd_clsh_ctrl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %12 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %16 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @wcd_clsh_is_state_valid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 129, label %39
  ]

33:                                               ; preds = %31
  %34 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CLSH_REQ_ENABLE, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @_wcd_clsh_ctrl_set_state(%struct.wcd_clsh_ctrl* %34, i32 %35, i32 %36, i32 %37)
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CLSH_REQ_DISABLE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @_wcd_clsh_ctrl_set_state(%struct.wcd_clsh_ctrl* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %39, %33
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %48 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.wcd_clsh_ctrl*, %struct.wcd_clsh_ctrl** %6, align 8
  %51 = getelementptr inbounds %struct.wcd_clsh_ctrl, %struct.wcd_clsh_ctrl* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %24, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @wcd_clsh_is_state_valid(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @_wcd_clsh_ctrl_set_state(%struct.wcd_clsh_ctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
