; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_list_debug.c___list_del_entry_valid.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_list_debug.c___list_del_entry_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@LIST_POISON1 = common dso_local global %struct.list_head* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"list_del corruption, %px->next is LIST_POISON1 (%px)\0A\00", align 1
@LIST_POISON2 = common dso_local global %struct.list_head* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"list_del corruption, %px->prev is LIST_POISON2 (%px)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"list_del corruption. prev->next should be %px, but was %px\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"list_del corruption. next->prev should be %px, but was %px\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__list_del_entry_valid(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %8, %struct.list_head** %4, align 8
  %9 = load %struct.list_head*, %struct.list_head** %3, align 8
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 1
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = load %struct.list_head*, %struct.list_head** @LIST_POISON1, align 8
  %14 = icmp eq %struct.list_head* %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.list_head*, %struct.list_head** %3, align 8
  %17 = load %struct.list_head*, %struct.list_head** @LIST_POISON1, align 8
  %18 = call i64 @CHECK_DATA_CORRUPTION(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.list_head* %16, %struct.list_head* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %1
  %21 = load %struct.list_head*, %struct.list_head** %4, align 8
  %22 = load %struct.list_head*, %struct.list_head** @LIST_POISON2, align 8
  %23 = icmp eq %struct.list_head* %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.list_head*, %struct.list_head** %3, align 8
  %26 = load %struct.list_head*, %struct.list_head** @LIST_POISON2, align 8
  %27 = call i64 @CHECK_DATA_CORRUPTION(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.list_head* %25, %struct.list_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %20
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  %33 = load %struct.list_head*, %struct.list_head** %3, align 8
  %34 = icmp ne %struct.list_head* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.list_head*, %struct.list_head** %3, align 8
  %37 = load %struct.list_head*, %struct.list_head** %4, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 1
  %39 = load %struct.list_head*, %struct.list_head** %38, align 8
  %40 = call i64 @CHECK_DATA_CORRUPTION(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), %struct.list_head* %36, %struct.list_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %29
  %43 = load %struct.list_head*, %struct.list_head** %5, align 8
  %44 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %44, align 8
  %46 = load %struct.list_head*, %struct.list_head** %3, align 8
  %47 = icmp ne %struct.list_head* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.list_head*, %struct.list_head** %3, align 8
  %50 = load %struct.list_head*, %struct.list_head** %5, align 8
  %51 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i32 0, i32 0
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8
  %53 = call i64 @CHECK_DATA_CORRUPTION(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), %struct.list_head* %49, %struct.list_head* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42, %29, %20, %1
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @CHECK_DATA_CORRUPTION(i32, i8*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
