; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_check_assign_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_check_assign_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_head = type { i32 }
%struct.cls_fl_filter = type { %struct.fl_flow_mask* }
%struct.fl_flow_mask = type { i32, i32 }

@mask_ht_params = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cls_fl_head*, %struct.cls_fl_filter*, %struct.cls_fl_filter*, %struct.fl_flow_mask*)* @fl_check_assign_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_check_assign_mask(%struct.cls_fl_head* %0, %struct.cls_fl_filter* %1, %struct.cls_fl_filter* %2, %struct.fl_flow_mask* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cls_fl_head*, align 8
  %7 = alloca %struct.cls_fl_filter*, align 8
  %8 = alloca %struct.cls_fl_filter*, align 8
  %9 = alloca %struct.fl_flow_mask*, align 8
  %10 = alloca %struct.fl_flow_mask*, align 8
  %11 = alloca i32, align 4
  store %struct.cls_fl_head* %0, %struct.cls_fl_head** %6, align 8
  store %struct.cls_fl_filter* %1, %struct.cls_fl_filter** %7, align 8
  store %struct.cls_fl_filter* %2, %struct.cls_fl_filter** %8, align 8
  store %struct.fl_flow_mask* %3, %struct.fl_flow_mask** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.cls_fl_head*, %struct.cls_fl_head** %6, align 8
  %14 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %13, i32 0, i32 0
  %15 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %9, align 8
  %16 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %15, i32 0, i32 0
  %17 = load i32, i32* @mask_ht_params, align 4
  %18 = call %struct.fl_flow_mask* @rhashtable_lookup_get_insert_fast(i32* %14, i32* %16, i32 %17)
  %19 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %20 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %19, i32 0, i32 0
  store %struct.fl_flow_mask* %18, %struct.fl_flow_mask** %20, align 8
  %21 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %22 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %21, i32 0, i32 0
  %23 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %22, align 8
  %24 = icmp ne %struct.fl_flow_mask* %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %4
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %28 = icmp ne %struct.cls_fl_filter* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %87

32:                                               ; preds = %25
  %33 = load %struct.cls_fl_head*, %struct.cls_fl_head** %6, align 8
  %34 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %9, align 8
  %35 = call %struct.fl_flow_mask* @fl_create_new_mask(%struct.cls_fl_head* %33, %struct.fl_flow_mask* %34)
  store %struct.fl_flow_mask* %35, %struct.fl_flow_mask** %10, align 8
  %36 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %10, align 8
  %37 = call i64 @IS_ERR(%struct.fl_flow_mask* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %10, align 8
  %41 = call i32 @PTR_ERR(%struct.fl_flow_mask* %40)
  store i32 %41, i32* %11, align 4
  br label %87

42:                                               ; preds = %32
  %43 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %10, align 8
  %44 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %45 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %44, i32 0, i32 0
  store %struct.fl_flow_mask* %43, %struct.fl_flow_mask** %45, align 8
  store i32 0, i32* %5, align 4
  br label %95

46:                                               ; preds = %4
  %47 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %48 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %47, i32 0, i32 0
  %49 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %48, align 8
  %50 = call i64 @IS_ERR(%struct.fl_flow_mask* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %54 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %53, i32 0, i32 0
  %55 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.fl_flow_mask* %55)
  store i32 %56, i32* %11, align 4
  br label %83

57:                                               ; preds = %46
  %58 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %59 = icmp ne %struct.cls_fl_filter* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %62 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %61, i32 0, i32 0
  %63 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %62, align 8
  %64 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %65 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %64, i32 0, i32 0
  %66 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %65, align 8
  %67 = icmp ne %struct.fl_flow_mask* %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %82

71:                                               ; preds = %60, %57
  %72 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %73 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %72, i32 0, i32 0
  %74 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %73, align 8
  %75 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %74, i32 0, i32 1
  %76 = call i32 @refcount_inc_not_zero(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %83
  %85 = call i32 (...) @rcu_read_unlock()
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %95

87:                                               ; preds = %39, %29
  %88 = load %struct.cls_fl_head*, %struct.cls_fl_head** %6, align 8
  %89 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %88, i32 0, i32 0
  %90 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %9, align 8
  %91 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %90, i32 0, i32 0
  %92 = load i32, i32* @mask_ht_params, align 4
  %93 = call i32 @rhashtable_remove_fast(i32* %89, i32* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %84, %42
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fl_flow_mask* @rhashtable_lookup_get_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.fl_flow_mask* @fl_create_new_mask(%struct.cls_fl_head*, %struct.fl_flow_mask*) #1

declare dso_local i64 @IS_ERR(%struct.fl_flow_mask*) #1

declare dso_local i32 @PTR_ERR(%struct.fl_flow_mask*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
