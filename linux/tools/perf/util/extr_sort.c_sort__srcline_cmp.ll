; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__srcline_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__srcline_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__srcline_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__srcline_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %5 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %6 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %11 = call i8* @hist_entry__srcline(%struct.hist_entry* %10)
  %12 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %21 = call i8* @hist_entry__srcline(%struct.hist_entry* %20)
  %22 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %27, i8* %30)
  ret i32 %31
}

declare dso_local i8* @hist_entry__srcline(%struct.hist_entry*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
