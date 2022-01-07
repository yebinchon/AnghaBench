; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__genradix = type { i32 }
%struct.genradix_root = type { i32 }
%struct.genradix_node = type { i8*, %struct.genradix_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__genradix_ptr(%struct.__genradix* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__genradix*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.genradix_root*, align 8
  %7 = alloca %struct.genradix_node*, align 8
  %8 = alloca i32, align 4
  store %struct.__genradix* %0, %struct.__genradix** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.__genradix*, %struct.__genradix** %4, align 8
  %10 = getelementptr inbounds %struct.__genradix, %struct.__genradix* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.genradix_root* @READ_ONCE(i32 %11)
  store %struct.genradix_root* %12, %struct.genradix_root** %6, align 8
  %13 = load %struct.genradix_root*, %struct.genradix_root** %6, align 8
  %14 = call %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root* %13)
  store %struct.genradix_node* %14, %struct.genradix_node** %7, align 8
  %15 = load %struct.genradix_root*, %struct.genradix_root** %6, align 8
  %16 = call i32 @genradix_root_to_depth(%struct.genradix_root* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @ilog2(i64 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @genradix_depth_shift(i32 %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %56

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %32
  %25 = load %struct.genradix_node*, %struct.genradix_node** %7, align 8
  %26 = icmp ne %struct.genradix_node* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %56

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %50

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.genradix_node*, %struct.genradix_node** %7, align 8
  %36 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %35, i32 0, i32 1
  %37 = load %struct.genradix_node**, %struct.genradix_node*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @genradix_depth_shift(i32 %39)
  %41 = lshr i64 %38, %40
  %42 = getelementptr inbounds %struct.genradix_node*, %struct.genradix_node** %37, i64 %41
  %43 = load %struct.genradix_node*, %struct.genradix_node** %42, align 8
  store %struct.genradix_node* %43, %struct.genradix_node** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @genradix_depth_size(i32 %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %24

50:                                               ; preds = %31
  %51 = load %struct.genradix_node*, %struct.genradix_node** %7, align 8
  %52 = getelementptr inbounds %struct.genradix_node, %struct.genradix_node* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %50, %27, %22
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local %struct.genradix_root* @READ_ONCE(i32) #1

declare dso_local %struct.genradix_node* @genradix_root_to_node(%struct.genradix_root*) #1

declare dso_local i32 @genradix_root_to_depth(%struct.genradix_root*) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i64 @genradix_depth_shift(i32) #1

declare dso_local i32 @genradix_depth_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
