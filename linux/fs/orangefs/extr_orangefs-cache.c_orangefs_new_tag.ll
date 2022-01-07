; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_orangefs_new_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_orangefs_new_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { i64 }

@next_tag_value_lock = common dso_local global i32 0, align 4
@next_tag_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orangefs_new_tag(%struct.orangefs_kernel_op_s* %0) #0 {
  %2 = alloca %struct.orangefs_kernel_op_s*, align 8
  store %struct.orangefs_kernel_op_s* %0, %struct.orangefs_kernel_op_s** %2, align 8
  %3 = call i32 @spin_lock(i32* @next_tag_value_lock)
  %4 = load i32, i32* @next_tag_value, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @next_tag_value, align 4
  %6 = sext i32 %4 to i64
  %7 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %8 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load i32, i32* @next_tag_value, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 100, i32* @next_tag_value, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = call i32 @spin_unlock(i32* @next_tag_value_lock)
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
