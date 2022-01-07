; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c___copy_gigantic_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c___copy_gigantic_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*, i32)* @__copy_gigantic_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__copy_gigantic_page(%struct.page* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %10, %struct.page** %8, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %11, %struct.page** %9, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = call i32 (...) @cond_resched()
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @copy_highpage(%struct.page* %18, %struct.page* %19)
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.page* @mem_map_next(%struct.page* %23, %struct.page* %24, i32 %25)
  store %struct.page* %26, %struct.page** %4, align 8
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.page* @mem_map_next(%struct.page* %27, %struct.page* %28, i32 %29)
  store %struct.page* %30, %struct.page** %5, align 8
  br label %12

31:                                               ; preds = %12
  ret void
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local %struct.page* @mem_map_next(%struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
