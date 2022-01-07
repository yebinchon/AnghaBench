; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_register_aggr_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_register_aggr_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32, i32 }

@text_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KPROBE_FLAG_GONE = common dso_local global i32 0, align 4
@KPROBE_FLAG_DISABLED = common dso_local global i32 0, align 4
@kprobes_all_disarmed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, %struct.kprobe*)* @register_aggr_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_aggr_kprobe(%struct.kprobe* %0, %struct.kprobe* %1) #0 {
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kprobe*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store %struct.kprobe* %1, %struct.kprobe** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  store %struct.kprobe* %7, %struct.kprobe** %6, align 8
  %8 = call i32 (...) @cpus_read_lock()
  %9 = call i32 (...) @jump_label_lock()
  %10 = call i32 @mutex_lock(i32* @text_mutex)
  %11 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %12 = call i32 @kprobe_aggrprobe(%struct.kprobe* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %16 = call %struct.kprobe* @alloc_aggr_kprobe(%struct.kprobe* %15)
  store %struct.kprobe* %16, %struct.kprobe** %6, align 8
  %17 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %18 = icmp ne %struct.kprobe* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %68

22:                                               ; preds = %14
  %23 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %24 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %25 = call i32 @init_aggr_kprobe(%struct.kprobe* %23, %struct.kprobe* %24)
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %28 = call i64 @kprobe_unused(%struct.kprobe* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %32 = call i32 @reuse_unused_kprobe(%struct.kprobe* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %68

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %40 = call i64 @kprobe_gone(%struct.kprobe* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %44 = call i32 @arch_prepare_kprobe(%struct.kprobe* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %68

48:                                               ; preds = %42
  %49 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %50 = call i32 @prepare_optimized_kprobe(%struct.kprobe* %49)
  %51 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %52 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @KPROBE_FLAG_GONE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %60 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %48, %38
  %62 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %63 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %64 = call i32 @copy_kprobe(%struct.kprobe* %62, %struct.kprobe* %63)
  %65 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %66 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %67 = call i32 @add_new_kprobe(%struct.kprobe* %65, %struct.kprobe* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %47, %35, %19
  %69 = call i32 @mutex_unlock(i32* @text_mutex)
  %70 = call i32 (...) @jump_label_unlock()
  %71 = call i32 (...) @cpus_read_unlock()
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %68
  %75 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %76 = call i64 @kprobe_disabled(%struct.kprobe* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %80 = call i64 @kprobe_disabled(%struct.kprobe* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %86 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @kprobes_all_disarmed, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %82
  %92 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %93 = call i32 @arm_kprobe(%struct.kprobe* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %98 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %99 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %103 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %102, i32 0, i32 1
  %104 = call i32 @list_del_rcu(i32* %103)
  %105 = call i32 (...) @synchronize_rcu()
  br label %106

106:                                              ; preds = %96, %91
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107, %78, %74, %68
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @cpus_read_lock(...) #1

declare dso_local i32 @jump_label_lock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kprobe_aggrprobe(%struct.kprobe*) #1

declare dso_local %struct.kprobe* @alloc_aggr_kprobe(%struct.kprobe*) #1

declare dso_local i32 @init_aggr_kprobe(%struct.kprobe*, %struct.kprobe*) #1

declare dso_local i64 @kprobe_unused(%struct.kprobe*) #1

declare dso_local i32 @reuse_unused_kprobe(%struct.kprobe*) #1

declare dso_local i64 @kprobe_gone(%struct.kprobe*) #1

declare dso_local i32 @arch_prepare_kprobe(%struct.kprobe*) #1

declare dso_local i32 @prepare_optimized_kprobe(%struct.kprobe*) #1

declare dso_local i32 @copy_kprobe(%struct.kprobe*, %struct.kprobe*) #1

declare dso_local i32 @add_new_kprobe(%struct.kprobe*, %struct.kprobe*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jump_label_unlock(...) #1

declare dso_local i32 @cpus_read_unlock(...) #1

declare dso_local i64 @kprobe_disabled(%struct.kprobe*) #1

declare dso_local i32 @arm_kprobe(%struct.kprobe*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
