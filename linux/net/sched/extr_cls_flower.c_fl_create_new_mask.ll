; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_create_new_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_create_new_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_head = type { i32, i32, i32 }
%struct.fl_flow_mask = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCA_FLOWER_MASK_FLAGS_RANGE = common dso_local global i32 0, align 4
@mask_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fl_flow_mask* (%struct.cls_fl_head*, %struct.fl_flow_mask*)* @fl_create_new_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fl_flow_mask* @fl_create_new_mask(%struct.cls_fl_head* %0, %struct.fl_flow_mask* %1) #0 {
  %3 = alloca %struct.fl_flow_mask*, align 8
  %4 = alloca %struct.cls_fl_head*, align 8
  %5 = alloca %struct.fl_flow_mask*, align 8
  %6 = alloca %struct.fl_flow_mask*, align 8
  %7 = alloca i32, align 4
  store %struct.cls_fl_head* %0, %struct.cls_fl_head** %4, align 8
  store %struct.fl_flow_mask* %1, %struct.fl_flow_mask** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.fl_flow_mask* @kzalloc(i32 64, i32 %8)
  store %struct.fl_flow_mask* %9, %struct.fl_flow_mask** %6, align 8
  %10 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %11 = icmp ne %struct.fl_flow_mask* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.fl_flow_mask* @ERR_PTR(i32 %14)
  store %struct.fl_flow_mask* %15, %struct.fl_flow_mask** %3, align 8
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %18 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %19 = call i32 @fl_mask_copy(%struct.fl_flow_mask* %17, %struct.fl_flow_mask* %18)
  %20 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %21 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %28 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %35 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %42 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %26
  %48 = load i32, i32* @TCA_FLOWER_MASK_FLAGS_RANGE, align 4
  %49 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %50 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40, %33
  %54 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %55 = call i32 @fl_init_mask_hashtable(%struct.fl_flow_mask* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %99

59:                                               ; preds = %53
  %60 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %61 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %60, i32 0, i32 6
  %62 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %63 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %62, i32 0, i32 5
  %64 = call i32 @fl_init_dissector(i32* %61, %struct.TYPE_6__* %63)
  %65 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %66 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD_RCU(i32* %66)
  %68 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %69 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %68, i32 0, i32 3
  %70 = call i32 @refcount_set(i32* %69, i32 1)
  %71 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %72 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %71, i32 0, i32 2
  %73 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %74 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %73, i32 0, i32 2
  %75 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %76 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %75, i32 0, i32 2
  %77 = load i32, i32* @mask_ht_params, align 4
  %78 = call i32 @rhashtable_replace_fast(i32* %72, i32* %74, i32* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %59
  br label %95

82:                                               ; preds = %59
  %83 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %84 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %87 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %86, i32 0, i32 1
  %88 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %89 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail_rcu(i32* %87, i32* %89)
  %91 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %92 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  store %struct.fl_flow_mask* %94, %struct.fl_flow_mask** %3, align 8
  br label %104

95:                                               ; preds = %81
  %96 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %97 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %96, i32 0, i32 0
  %98 = call i32 @rhashtable_destroy(i32* %97)
  br label %99

99:                                               ; preds = %95, %58
  %100 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %6, align 8
  %101 = call i32 @kfree(%struct.fl_flow_mask* %100)
  %102 = load i32, i32* %7, align 4
  %103 = call %struct.fl_flow_mask* @ERR_PTR(i32 %102)
  store %struct.fl_flow_mask* %103, %struct.fl_flow_mask** %3, align 8
  br label %104

104:                                              ; preds = %99, %82, %12
  %105 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  ret %struct.fl_flow_mask* %105
}

declare dso_local %struct.fl_flow_mask* @kzalloc(i32, i32) #1

declare dso_local %struct.fl_flow_mask* @ERR_PTR(i32) #1

declare dso_local i32 @fl_mask_copy(%struct.fl_flow_mask*, %struct.fl_flow_mask*) #1

declare dso_local i32 @fl_init_mask_hashtable(%struct.fl_flow_mask*) #1

declare dso_local i32 @fl_init_dissector(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @rhashtable_replace_fast(i32*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fl_flow_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
