; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_entry__init_have_children.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_entry__init_have_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_entry*)* @hist_entry__init_have_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_entry__init_have_children(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %3 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %10 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 3
  %16 = call i32 @RB_EMPTY_ROOT(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 3
  %24 = call i32 @callchain__init_have_children(i32* %23)
  br label %35

25:                                               ; preds = %8
  %26 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @RB_EMPTY_ROOT(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %34 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %13
  %36 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %37 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @callchain__init_have_children(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
