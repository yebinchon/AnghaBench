; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_check_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_check_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action_net = type { %struct.tcf_idrinfo* }
%struct.tcf_idrinfo = type { i32, i32 }
%struct.tc_action = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net* %0, i32* %1, %struct.tc_action** %2, i32 %3) #0 {
  %5 = alloca %struct.tc_action_net*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tc_action**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_idrinfo*, align 8
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca i32, align 4
  store %struct.tc_action_net* %0, %struct.tc_action_net** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.tc_action** %2, %struct.tc_action*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tc_action_net*, %struct.tc_action_net** %5, align 8
  %13 = getelementptr inbounds %struct.tc_action_net, %struct.tc_action_net* %12, i32 0, i32 0
  %14 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %13, align 8
  store %struct.tcf_idrinfo* %14, %struct.tcf_idrinfo** %9, align 8
  br label %15

15:                                               ; preds = %31, %4
  %16 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %17 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %15
  %23 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %24 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %23, i32 0, i32 1
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.tc_action* @idr_find(i32* %24, i32 %26)
  store %struct.tc_action* %27, %struct.tc_action** %10, align 8
  %28 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %29 = call i64 @IS_ERR(%struct.tc_action* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %33 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %15

35:                                               ; preds = %22
  %36 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %37 = icmp ne %struct.tc_action* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %40 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %39, i32 0, i32 1
  %41 = call i32 @refcount_inc(i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %46 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %50 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  store %struct.tc_action* %49, %struct.tc_action** %50, align 8
  store i32 1, i32* %11, align 4
  br label %72

51:                                               ; preds = %35
  %52 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  store %struct.tc_action* null, %struct.tc_action** %52, align 8
  %53 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %54 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %53, i32 0, i32 1
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @idr_alloc_u32(i32* %54, i32* null, i32* %55, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %51
  %63 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %64 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %63, i32 0, i32 1
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @ERR_PTR(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @idr_replace(i32* %64, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %62, %51
  br label %72

72:                                               ; preds = %71, %48
  br label %94

73:                                               ; preds = %15
  %74 = load i32*, i32** %6, align 8
  store i32 1, i32* %74, align 4
  %75 = load %struct.tc_action**, %struct.tc_action*** %7, align 8
  store %struct.tc_action* null, %struct.tc_action** %75, align 8
  %76 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %77 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %76, i32 0, i32 1
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @UINT_MAX, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @idr_alloc_u32(i32* %77, i32* null, i32* %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %73
  %85 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %86 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %85, i32 0, i32 1
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @ERR_PTR(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @idr_replace(i32* %86, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %84, %73
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %96 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tc_action* @idr_find(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tc_action*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @idr_alloc_u32(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @idr_replace(i32*, i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
