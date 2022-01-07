; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { %struct.idletimer_tg_info* }
%struct.idletimer_tg_info = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [21 x i8] c"destroy targinfo %s\0A\00", align 1
@list_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"deleting timer %s\0A\00", align 1
@idletimer_tg_kobj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"decreased refcnt of timer %s to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @idletimer_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idletimer_tg_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.idletimer_tg_info*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %4 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %4, i32 0, i32 0
  %6 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %5, align 8
  store %struct.idletimer_tg_info* %6, %struct.idletimer_tg_info** %3, align 8
  %7 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %8 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @mutex_lock(i32* @list_mutex)
  %12 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %13 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %1
  %20 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %21 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %25 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %30 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @del_timer_sync(i32* %32)
  %34 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %35 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load i32, i32* @idletimer_tg_kobj, align 4
  %40 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %41 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_remove_file(i32 %39, %struct.TYPE_5__* %44)
  %46 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %47 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @kfree(%struct.TYPE_6__* %52)
  %54 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %55 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @kfree(%struct.TYPE_6__* %56)
  br label %68

58:                                               ; preds = %1
  %59 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %60 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %63 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %58, %19
  %69 = call i32 @mutex_unlock(i32* @list_mutex)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @sysfs_remove_file(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
