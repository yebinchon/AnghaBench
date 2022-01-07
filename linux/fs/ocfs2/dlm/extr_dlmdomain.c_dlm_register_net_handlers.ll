; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_net_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_net_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLM_QUERY_JOIN_MSG = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@dlm_query_join_handler = common dso_local global i32 0, align 4
@dlm_join_handlers = common dso_local global i32 0, align 4
@DLM_ASSERT_JOINED_MSG = common dso_local global i32 0, align 4
@dlm_assert_joined_handler = common dso_local global i32 0, align 4
@DLM_CANCEL_JOIN_MSG = common dso_local global i32 0, align 4
@dlm_cancel_join_handler = common dso_local global i32 0, align 4
@DLM_QUERY_REGION = common dso_local global i32 0, align 4
@dlm_query_region_handler = common dso_local global i32 0, align 4
@DLM_QUERY_NODEINFO = common dso_local global i32 0, align 4
@dlm_query_nodeinfo_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dlm_register_net_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_register_net_handlers() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @DLM_QUERY_JOIN_MSG, align 4
  %3 = load i32, i32* @DLM_MOD_KEY, align 4
  %4 = load i32, i32* @dlm_query_join_handler, align 4
  %5 = call i32 @o2net_register_handler(i32 %2, i32 %3, i32 4, i32 %4, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %38

9:                                                ; preds = %0
  %10 = load i32, i32* @DLM_ASSERT_JOINED_MSG, align 4
  %11 = load i32, i32* @DLM_MOD_KEY, align 4
  %12 = load i32, i32* @dlm_assert_joined_handler, align 4
  %13 = call i32 @o2net_register_handler(i32 %10, i32 %11, i32 4, i32 %12, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %38

17:                                               ; preds = %9
  %18 = load i32, i32* @DLM_CANCEL_JOIN_MSG, align 4
  %19 = load i32, i32* @DLM_MOD_KEY, align 4
  %20 = load i32, i32* @dlm_cancel_join_handler, align 4
  %21 = call i32 @o2net_register_handler(i32 %18, i32 %19, i32 4, i32 %20, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* @DLM_QUERY_REGION, align 4
  %27 = load i32, i32* @DLM_MOD_KEY, align 4
  %28 = load i32, i32* @dlm_query_region_handler, align 4
  %29 = call i32 @o2net_register_handler(i32 %26, i32 %27, i32 4, i32 %28, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @DLM_QUERY_NODEINFO, align 4
  %35 = load i32, i32* @DLM_MOD_KEY, align 4
  %36 = load i32, i32* @dlm_query_nodeinfo_handler, align 4
  %37 = call i32 @o2net_register_handler(i32 %34, i32 %35, i32 4, i32 %36, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %32, %24, %16, %8
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @dlm_unregister_net_handlers()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @o2net_register_handler(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dlm_unregister_net_handlers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
