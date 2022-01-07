; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_register_quota_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_register_quota_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quota_format_type = type { %struct.quota_format_type* }

@dq_list_lock = common dso_local global i32 0, align 4
@quota_formats = common dso_local global %struct.quota_format_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_quota_format(%struct.quota_format_type* %0) #0 {
  %2 = alloca %struct.quota_format_type*, align 8
  store %struct.quota_format_type* %0, %struct.quota_format_type** %2, align 8
  %3 = call i32 @spin_lock(i32* @dq_list_lock)
  %4 = load %struct.quota_format_type*, %struct.quota_format_type** @quota_formats, align 8
  %5 = load %struct.quota_format_type*, %struct.quota_format_type** %2, align 8
  %6 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %5, i32 0, i32 0
  store %struct.quota_format_type* %4, %struct.quota_format_type** %6, align 8
  %7 = load %struct.quota_format_type*, %struct.quota_format_type** %2, align 8
  store %struct.quota_format_type* %7, %struct.quota_format_type** @quota_formats, align 8
  %8 = call i32 @spin_unlock(i32* @dq_list_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
