; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_put_vaddr_frames.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_put_vaddr_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_vector = type { i32, i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_vaddr_frames(%struct.frame_vector* %0) #0 {
  %2 = alloca %struct.frame_vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page**, align 8
  store %struct.frame_vector* %0, %struct.frame_vector** %2, align 8
  %5 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %6 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %12 = call %struct.page** @frame_vector_pages(%struct.frame_vector* %11)
  store %struct.page** %12, %struct.page*** %4, align 8
  %13 = load %struct.page**, %struct.page*** %4, align 8
  %14 = call i32 @IS_ERR(%struct.page** %13)
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %38

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %22 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.page**, %struct.page*** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  %31 = call i32 @put_page(%struct.page* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %37 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %17, %9
  %39 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %40 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  ret void
}

declare dso_local %struct.page** @frame_vector_pages(%struct.frame_vector*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.page**) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
