; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_unregister_quota_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_unregister_quota_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quota_format_type = type { %struct.quota_format_type* }

@dq_list_lock = common dso_local global i32 0, align 4
@quota_formats = common dso_local global %struct.quota_format_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_quota_format(%struct.quota_format_type* %0) #0 {
  %2 = alloca %struct.quota_format_type*, align 8
  %3 = alloca %struct.quota_format_type**, align 8
  store %struct.quota_format_type* %0, %struct.quota_format_type** %2, align 8
  %4 = call i32 @spin_lock(i32* @dq_list_lock)
  store %struct.quota_format_type** @quota_formats, %struct.quota_format_type*** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  %7 = load %struct.quota_format_type*, %struct.quota_format_type** %6, align 8
  %8 = icmp ne %struct.quota_format_type* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  %11 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %12 = load %struct.quota_format_type*, %struct.quota_format_type** %2, align 8
  %13 = icmp ne %struct.quota_format_type* %11, %12
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ false, %5 ], [ %13, %9 ]
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  %19 = load %struct.quota_format_type*, %struct.quota_format_type** %18, align 8
  %20 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %19, i32 0, i32 0
  store %struct.quota_format_type** %20, %struct.quota_format_type*** %3, align 8
  br label %5

21:                                               ; preds = %14
  %22 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  %23 = load %struct.quota_format_type*, %struct.quota_format_type** %22, align 8
  %24 = icmp ne %struct.quota_format_type* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  %27 = load %struct.quota_format_type*, %struct.quota_format_type** %26, align 8
  %28 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %27, i32 0, i32 0
  %29 = load %struct.quota_format_type*, %struct.quota_format_type** %28, align 8
  %30 = load %struct.quota_format_type**, %struct.quota_format_type*** %3, align 8
  store %struct.quota_format_type* %29, %struct.quota_format_type** %30, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = call i32 @spin_unlock(i32* @dq_list_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
