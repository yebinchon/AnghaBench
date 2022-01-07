; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c___lock_page_or_retry.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c___lock_page_or_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_RETRY_NOWAIT = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lock_page_or_retry(%struct.page* %0, %struct.mm_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @wait_on_page_locked_killable(%struct.page* %28)
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @wait_on_page_locked(%struct.page* %31)
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* %4, align 4
  br label %53

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @__lock_page_killable(%struct.page* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = call i32 @up_read(i32* %46)
  store i32 0, i32* %4, align 4
  br label %53

48:                                               ; preds = %39
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @__lock_page(%struct.page* %50)
  br label %52

52:                                               ; preds = %49, %48
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %44, %33, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @wait_on_page_locked_killable(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @__lock_page_killable(%struct.page*) #1

declare dso_local i32 @__lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
