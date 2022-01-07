; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user-return-notifier.c_user_return_notifier_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user-return-notifier.c_user_return_notifier_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_return_notifier = type { i32 }

@return_notifier_list = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIF_USER_RETURN_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_return_notifier_unregister(%struct.user_return_notifier* %0) #0 {
  %2 = alloca %struct.user_return_notifier*, align 8
  store %struct.user_return_notifier* %0, %struct.user_return_notifier** %2, align 8
  %3 = load %struct.user_return_notifier*, %struct.user_return_notifier** %2, align 8
  %4 = getelementptr inbounds %struct.user_return_notifier, %struct.user_return_notifier* %3, i32 0, i32 0
  %5 = call i32 @hlist_del(i32* %4)
  %6 = call i32 @this_cpu_ptr(i32* @return_notifier_list)
  %7 = call i64 @hlist_empty(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @current, align 4
  %11 = load i32, i32* @TIF_USER_RETURN_NOTIFY, align 4
  %12 = call i32 @clear_tsk_thread_flag(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i64 @hlist_empty(i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @clear_tsk_thread_flag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
