; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_led_info* }
%struct.xt_led_info = type { i8*, %struct.xt_led_info_internal* }
%struct.xt_led_info_internal = type { i32, %struct.xt_led_info_internal*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xt_led_info_internal* }

@EINVAL = common dso_local global i32 0, align 4
@xt_led_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Trigger name is already in use.\0A\00", align 1
@led_timeout_callback = common dso_local global i32 0, align 4
@xt_led_triggers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @led_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_led_info*, align 8
  %5 = alloca %struct.xt_led_info_internal*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 0
  %9 = load %struct.xt_led_info*, %struct.xt_led_info** %8, align 8
  store %struct.xt_led_info* %9, %struct.xt_led_info** %4, align 8
  %10 = load %struct.xt_led_info*, %struct.xt_led_info** %4, align 8
  %11 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %94

20:                                               ; preds = %1
  %21 = call i32 @mutex_lock(i32* @xt_led_mutex)
  %22 = load %struct.xt_led_info*, %struct.xt_led_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct.xt_led_info_internal* @led_trigger_lookup(i8* %24)
  store %struct.xt_led_info_internal* %25, %struct.xt_led_info_internal** %5, align 8
  %26 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %27 = icmp ne %struct.xt_led_info_internal* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %30 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %78

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.xt_led_info_internal* @kzalloc(i32 32, i32 %36)
  store %struct.xt_led_info_internal* %37, %struct.xt_led_info_internal** %5, align 8
  %38 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %39 = icmp ne %struct.xt_led_info_internal* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %91

41:                                               ; preds = %33
  %42 = load %struct.xt_led_info*, %struct.xt_led_info** %4, align 8
  %43 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.xt_led_info_internal* @kstrdup(i8* %44, i32 %45)
  %47 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %48 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %47, i32 0, i32 1
  store %struct.xt_led_info_internal* %46, %struct.xt_led_info_internal** %48, align 8
  %49 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %50 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %49, i32 0, i32 1
  %51 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %50, align 8
  %52 = icmp ne %struct.xt_led_info_internal* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %88

54:                                               ; preds = %41
  %55 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %56 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %58 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %57, i32 0, i32 1
  %59 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %58, align 8
  %60 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %61 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.xt_led_info_internal* %59, %struct.xt_led_info_internal** %62, align 8
  %63 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %64 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %63, i32 0, i32 4
  %65 = call i32 @led_trigger_register(%struct.TYPE_2__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %83

70:                                               ; preds = %54
  %71 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %72 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %71, i32 0, i32 3
  %73 = load i32, i32* @led_timeout_callback, align 4
  %74 = call i32 @timer_setup(i32* %72, i32 %73, i32 0)
  %75 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %76 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %75, i32 0, i32 2
  %77 = call i32 @list_add_tail(i32* %76, i32* @xt_led_triggers)
  br label %78

78:                                               ; preds = %70, %28
  %79 = call i32 @mutex_unlock(i32* @xt_led_mutex)
  %80 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %81 = load %struct.xt_led_info*, %struct.xt_led_info** %4, align 8
  %82 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %81, i32 0, i32 1
  store %struct.xt_led_info_internal* %80, %struct.xt_led_info_internal** %82, align 8
  store i32 0, i32* %2, align 4
  br label %94

83:                                               ; preds = %68
  %84 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %85 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %84, i32 0, i32 1
  %86 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %85, align 8
  %87 = call i32 @kfree(%struct.xt_led_info_internal* %86)
  br label %88

88:                                               ; preds = %83, %53
  %89 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %5, align 8
  %90 = call i32 @kfree(%struct.xt_led_info_internal* %89)
  br label %91

91:                                               ; preds = %88, %40
  %92 = call i32 @mutex_unlock(i32* @xt_led_mutex)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %78, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xt_led_info_internal* @led_trigger_lookup(i8*) #1

declare dso_local %struct.xt_led_info_internal* @kzalloc(i32, i32) #1

declare dso_local %struct.xt_led_info_internal* @kstrdup(i8*, i32) #1

declare dso_local i32 @led_trigger_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_info_ratelimited(i8*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.xt_led_info_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
