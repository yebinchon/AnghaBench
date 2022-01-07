; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_create.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_vector = type { i32, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_vector* @frame_vector_create(i32 %0) #0 {
  %2 = alloca %struct.frame_vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.frame_vector*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = mul i64 8, %7
  %9 = add i64 16, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.frame_vector* null, %struct.frame_vector** %2, align 8
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @INT_MAX, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 8
  %23 = udiv i64 %22, 2
  %24 = icmp ugt i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store %struct.frame_vector* null, %struct.frame_vector** %2, align 8
  br label %43

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.frame_vector* @kvmalloc(i32 %30, i32 %31)
  store %struct.frame_vector* %32, %struct.frame_vector** %4, align 8
  %33 = load %struct.frame_vector*, %struct.frame_vector** %4, align 8
  %34 = icmp ne %struct.frame_vector* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.frame_vector* null, %struct.frame_vector** %2, align 8
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.frame_vector*, %struct.frame_vector** %4, align 8
  %39 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.frame_vector*, %struct.frame_vector** %4, align 8
  %41 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.frame_vector*, %struct.frame_vector** %4, align 8
  store %struct.frame_vector* %42, %struct.frame_vector** %2, align 8
  br label %43

43:                                               ; preds = %36, %35, %28, %16
  %44 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  ret %struct.frame_vector* %44
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.frame_vector* @kvmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
