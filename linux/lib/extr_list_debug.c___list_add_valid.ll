; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_list_debug.c___list_add_valid.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_list_debug.c___list_add_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@.str = private unnamed_addr constant [80 x i8] c"list_add corruption. next->prev should be prev (%px), but was %px. (next=%px).\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"list_add corruption. prev->next should be next (%px), but was %px. (prev=%px).\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"list_add double add: new=%px, prev=%px, next=%px.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %9, align 8
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = icmp ne %struct.list_head* %10, %11
  %13 = zext i1 %12 to i32
  %14 = load %struct.list_head*, %struct.list_head** %6, align 8
  %15 = load %struct.list_head*, %struct.list_head** %7, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i32 0, i32 1
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = load %struct.list_head*, %struct.list_head** %7, align 8
  %19 = call i64 @CHECK_DATA_CORRUPTION(i32 %13, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.list_head* %14, %struct.list_head* %17, %struct.list_head* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %3
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  %25 = load %struct.list_head*, %struct.list_head** %7, align 8
  %26 = icmp ne %struct.list_head* %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.list_head*, %struct.list_head** %7, align 8
  %29 = load %struct.list_head*, %struct.list_head** %6, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = call i64 @CHECK_DATA_CORRUPTION(i32 %27, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), %struct.list_head* %28, %struct.list_head* %31, %struct.list_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %21
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8
  %37 = load %struct.list_head*, %struct.list_head** %6, align 8
  %38 = icmp eq %struct.list_head* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.list_head*, %struct.list_head** %5, align 8
  %41 = load %struct.list_head*, %struct.list_head** %7, align 8
  %42 = icmp eq %struct.list_head* %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ true, %35 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.list_head*, %struct.list_head** %5, align 8
  %47 = load %struct.list_head*, %struct.list_head** %6, align 8
  %48 = load %struct.list_head*, %struct.list_head** %7, align 8
  %49 = call i64 @CHECK_DATA_CORRUPTION(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.list_head* %46, %struct.list_head* %47, %struct.list_head* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %21, %3
  store i32 0, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @CHECK_DATA_CORRUPTION(i32, i8*, %struct.list_head*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
