; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_tag_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_tag_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"after extend_checks: %d allocated\0A\00", align 1
@nr_allocated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"after leak_check: %d allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"after simple_checks: %d allocated\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"after thrash_tags: %d allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tag_check() #0 {
  %1 = call i32 (...) @single_check()
  %2 = call i32 (...) @extend_checks()
  %3 = call i32 (...) @contract_checks()
  %4 = call i32 (...) @rcu_barrier()
  %5 = load i32, i32* @nr_allocated, align 4
  %6 = call i32 @printv(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (...) @__leak_check()
  %8 = call i32 (...) @leak_check()
  %9 = call i32 (...) @rcu_barrier()
  %10 = load i32, i32* @nr_allocated, align 4
  %11 = call i32 @printv(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = call i32 (...) @simple_checks()
  %13 = call i32 (...) @rcu_barrier()
  %14 = load i32, i32* @nr_allocated, align 4
  %15 = call i32 @printv(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @thrash_tags()
  %17 = call i32 (...) @rcu_barrier()
  %18 = load i32, i32* @nr_allocated, align 4
  %19 = call i32 @printv(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @single_check(...) #1

declare dso_local i32 @extend_checks(...) #1

declare dso_local i32 @contract_checks(...) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @printv(i32, i8*, i32) #1

declare dso_local i32 @__leak_check(...) #1

declare dso_local i32 @leak_check(...) #1

declare dso_local i32 @simple_checks(...) #1

declare dso_local i32 @thrash_tags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
