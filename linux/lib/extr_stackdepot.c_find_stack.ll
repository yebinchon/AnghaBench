; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_find_stack.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_find_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_record = type { i64, i32, i32, %struct.stack_record* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stack_record* (%struct.stack_record*, i64*, i32, i64)* @find_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stack_record* @find_stack(%struct.stack_record* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.stack_record*, align 8
  %6 = alloca %struct.stack_record*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stack_record*, align 8
  store %struct.stack_record* %0, %struct.stack_record** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.stack_record*, %struct.stack_record** %6, align 8
  store %struct.stack_record* %11, %struct.stack_record** %10, align 8
  br label %12

12:                                               ; preds = %38, %4
  %13 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  %14 = icmp ne %struct.stack_record* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  %17 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  %23 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i64*, i64** %7, align 8
  %29 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  %30 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @stackdepot_memcmp(i64* %28, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  store %struct.stack_record* %36, %struct.stack_record** %5, align 8
  br label %43

37:                                               ; preds = %27, %21, %15
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.stack_record*, %struct.stack_record** %10, align 8
  %40 = getelementptr inbounds %struct.stack_record, %struct.stack_record* %39, i32 0, i32 3
  %41 = load %struct.stack_record*, %struct.stack_record** %40, align 8
  store %struct.stack_record* %41, %struct.stack_record** %10, align 8
  br label %12

42:                                               ; preds = %12
  store %struct.stack_record* null, %struct.stack_record** %5, align 8
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.stack_record*, %struct.stack_record** %5, align 8
  ret %struct.stack_record* %44
}

declare dso_local i32 @stackdepot_memcmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
