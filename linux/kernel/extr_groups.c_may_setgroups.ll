; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_groups.c_may_setgroups.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_groups.c_may_setgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }

@CAP_SETGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_setgroups() #0 {
  %1 = alloca %struct.user_namespace*, align 8
  %2 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %2, %struct.user_namespace** %1, align 8
  %3 = load %struct.user_namespace*, %struct.user_namespace** %1, align 8
  %4 = load i32, i32* @CAP_SETGID, align 4
  %5 = call i64 @ns_capable(%struct.user_namespace* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.user_namespace*, %struct.user_namespace** %1, align 8
  %9 = call i64 @userns_may_setgroups(%struct.user_namespace* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i64 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local i64 @userns_may_setgroups(%struct.user_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
