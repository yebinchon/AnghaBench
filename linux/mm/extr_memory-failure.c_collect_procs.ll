; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_collect_procs.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_collect_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.list_head = type { i32 }
%struct.to_kill = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.list_head*, i32)* @collect_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_procs(%struct.page* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.to_kill*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %36

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call %struct.to_kill* @kmalloc(i32 4, i32 %14)
  store %struct.to_kill* %15, %struct.to_kill** %7, align 8
  %16 = load %struct.to_kill*, %struct.to_kill** %7, align 8
  %17 = icmp ne %struct.to_kill* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @PageAnon(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = load %struct.list_head*, %struct.list_head** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @collect_procs_anon(%struct.page* %24, %struct.list_head* %25, %struct.to_kill** %7, i32 %26)
  br label %33

28:                                               ; preds = %19
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load %struct.list_head*, %struct.list_head** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @collect_procs_file(%struct.page* %29, %struct.list_head* %30, %struct.to_kill** %7, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.to_kill*, %struct.to_kill** %7, align 8
  %35 = call i32 @kfree(%struct.to_kill* %34)
  br label %36

36:                                               ; preds = %33, %18, %12
  ret void
}

declare dso_local %struct.to_kill* @kmalloc(i32, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @collect_procs_anon(%struct.page*, %struct.list_head*, %struct.to_kill**, i32) #1

declare dso_local i32 @collect_procs_file(%struct.page*, %struct.list_head*, %struct.to_kill**, i32) #1

declare dso_local i32 @kfree(%struct.to_kill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
