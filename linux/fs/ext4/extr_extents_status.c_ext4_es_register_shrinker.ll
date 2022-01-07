; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_register_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_register_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ES_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ext4_es_scan = common dso_local global i32 0, align 4
@ext4_es_count = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_es_register_shrinker(%struct.ext4_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %3, align 8
  %5 = load i32, i32* @ES_SHIFT, align 4
  %6 = icmp slt i32 %5, 48
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUILD_BUG_ON(i32 %7)
  %9 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %9, i32 0, i32 4
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @percpu_counter_init(i32* %22, i32 0, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %1
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @percpu_counter_init(i32* %32, i32 0, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %97

38:                                               ; preds = %29
  %39 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %46 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @percpu_counter_init(i32* %47, i32 0, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %92

53:                                               ; preds = %38
  %54 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %55 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @percpu_counter_init(i32* %56, i32 0, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %87

62:                                               ; preds = %53
  %63 = load i32, i32* @ext4_es_scan, align 4
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @ext4_es_count, align 4
  %68 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %69 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @DEFAULT_SEEKS, align 4
  %72 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %73 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %75, i32 0, i32 1
  %77 = call i32 @register_shrinker(%struct.TYPE_4__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  br label %82

81:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %103

82:                                               ; preds = %80
  %83 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %84 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = call i32 @percpu_counter_destroy(i32* %85)
  br label %87

87:                                               ; preds = %82, %61
  %88 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %89 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = call i32 @percpu_counter_destroy(i32* %90)
  br label %92

92:                                               ; preds = %87, %52
  %93 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %94 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = call i32 @percpu_counter_destroy(i32* %95)
  br label %97

97:                                               ; preds = %92, %37
  %98 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %99 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = call i32 @percpu_counter_destroy(i32* %100)
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %81, %27
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @register_shrinker(%struct.TYPE_4__*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
