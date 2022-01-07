; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_transition.c_klp_cancel_transition.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_transition.c_klp_cancel_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@klp_target_state = common dso_local global i64 0, align 8
@KLP_PATCHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"'%s': canceling patching transition, going to unpatch\0A\00", align 1
@klp_transition_patch = common dso_local global %struct.TYPE_4__* null, align 8
@KLP_UNPATCHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klp_cancel_transition() #0 {
  %1 = load i64, i64* @klp_target_state, align 8
  %2 = load i64, i64* @KLP_PATCHED, align 8
  %3 = icmp ne i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i64 @WARN_ON_ONCE(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @klp_transition_patch, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* @KLP_UNPATCHED, align 8
  store i64 %15, i64* @klp_target_state, align 8
  %16 = call i32 (...) @klp_complete_transition()
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @klp_complete_transition(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
