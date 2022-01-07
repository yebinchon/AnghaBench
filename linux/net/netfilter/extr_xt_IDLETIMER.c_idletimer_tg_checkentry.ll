; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.idletimer_tg_info* }
%struct.idletimer_tg_info = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"checkentry targinfo%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"timeout value is zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"timeout value is too big\0A\00", align 1
@MAX_IDLETIMER_LABEL_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"label is empty or not nul-terminated\0A\00", align 1
@list_mutex = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"increased refcnt of timer %s to %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to create timer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @idletimer_tg_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idletimer_tg_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.idletimer_tg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %7, align 8
  store %struct.idletimer_tg_info* %8, %struct.idletimer_tg_info** %4, align 8
  %9 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %10 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %14 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %23 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INT_MAX, align 4
  %26 = sdiv i32 %25, 1000
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %21
  %33 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %34 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %42 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* @MAX_IDLETIMER_LABEL_SIZE, align 8
  %45 = call i64 @strnlen(i8* %43, i64 %44)
  %46 = load i64, i64* @MAX_IDLETIMER_LABEL_SIZE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40, %32
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %104

52:                                               ; preds = %40
  %53 = call i32 @mutex_lock(i32* @list_mutex)
  %54 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %55 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call %struct.TYPE_2__* @__idletimer_tg_find_by_label(i8* %56)
  %58 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %59 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %58, i32 0, i32 2
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %59, align 8
  %60 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %61 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %52
  %65 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %66 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %72 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %76 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 1000
  %79 = call i64 @msecs_to_jiffies(i32 %78)
  %80 = load i64, i64* @jiffies, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @mod_timer(i32* %74, i64 %81)
  %83 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %84 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %87 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %85, i32 %90)
  br label %102

92:                                               ; preds = %52
  %93 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %4, align 8
  %94 = call i32 @idletimer_tg_create(%struct.idletimer_tg_info* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 @mutex_unlock(i32* @list_mutex)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %104

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %64
  %103 = call i32 @mutex_unlock(i32* @list_mutex)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %97, %48, %28, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @__idletimer_tg_find_by_label(i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @idletimer_tg_create(%struct.idletimer_tg_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
