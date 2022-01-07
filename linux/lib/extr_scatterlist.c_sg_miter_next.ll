; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_miter_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_miter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sg_miter_next(%struct.sg_mapping_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_mapping_iter*, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %3, align 8
  %4 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %5 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %4)
  %6 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %7 = call i32 @sg_miter_get_next_page(%struct.sg_mapping_iter* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %12 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 7
  %13 = call i32 @sg_page_iter_page(i32* %12)
  %14 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %15 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %17 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %20 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %22 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %21, i32 0, i32 6
  store i32 %18, i32* %22, align 8
  %23 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %24 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %10
  %30 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %31 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @kmap_atomic(i32 %32)
  %34 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %35 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %39 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  br label %51

40:                                               ; preds = %10
  %41 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %42 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @kmap(i32 %43)
  %45 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %46 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %50 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %29
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_get_next_page(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_page_iter_page(i32*) #1

declare dso_local i64 @kmap_atomic(i32) #1

declare dso_local i64 @kmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
