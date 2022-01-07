; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_is_dump_unreclaim_slabs.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_is_dump_unreclaim_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_ACTIVE_ANON = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i32 0, align 4
@NR_ISOLATED_FILE = common dso_local global i32 0, align 4
@NR_UNEVICTABLE = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_dump_unreclaim_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dump_unreclaim_slabs() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %3 = call i64 @global_node_page_state(i32 %2)
  %4 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %5 = call i64 @global_node_page_state(i32 %4)
  %6 = add i64 %3, %5
  %7 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %8 = call i64 @global_node_page_state(i32 %7)
  %9 = add i64 %6, %8
  %10 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %11 = call i64 @global_node_page_state(i32 %10)
  %12 = add i64 %9, %11
  %13 = load i32, i32* @NR_ISOLATED_ANON, align 4
  %14 = call i64 @global_node_page_state(i32 %13)
  %15 = add i64 %12, %14
  %16 = load i32, i32* @NR_ISOLATED_FILE, align 4
  %17 = call i64 @global_node_page_state(i32 %16)
  %18 = add i64 %15, %17
  %19 = load i32, i32* @NR_UNEVICTABLE, align 4
  %20 = call i64 @global_node_page_state(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %1, align 8
  %22 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  %23 = call i64 @global_node_page_state(i32 %22)
  %24 = load i64, i64* %1, align 8
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @global_node_page_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
