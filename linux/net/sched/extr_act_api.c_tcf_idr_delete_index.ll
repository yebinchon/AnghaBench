; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_delete_index.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_delete_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_idrinfo = type { i32, i32 }
%struct.tc_action = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_idrinfo*, i32)* @tcf_idr_delete_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_idr_delete_index(%struct.tcf_idrinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_idrinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.module*, align 8
  store %struct.tcf_idrinfo* %0, %struct.tcf_idrinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.tc_action* @idr_find(i32* %13, i32 %14)
  store %struct.tc_action* %15, %struct.tc_action** %6, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %17 = icmp ne %struct.tc_action* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %20 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %26 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %25, i32 0, i32 3
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %24
  %30 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %31 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %30, i32 0, i32 2
  %32 = call i64 @refcount_dec_and_test(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %36 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.module*, %struct.module** %38, align 8
  store %struct.module* %39, %struct.module** %8, align 8
  %40 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %41 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %42 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %41, i32 0, i32 1
  %43 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %44 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.tc_action* @idr_remove(i32* %42, i32 %45)
  %47 = icmp ne %struct.tc_action* %40, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %51 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %54 = call i32 @tcf_action_cleanup(%struct.tc_action* %53)
  %55 = load %struct.module*, %struct.module** %8, align 8
  %56 = call i32 @module_put(%struct.module* %55)
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %61

58:                                               ; preds = %24
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %4, align 8
  %63 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %34, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tc_action* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.tc_action* @idr_remove(i32*, i32) #1

declare dso_local i32 @tcf_action_cleanup(%struct.tc_action*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
