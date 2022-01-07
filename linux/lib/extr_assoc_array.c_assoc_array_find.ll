; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_find.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_array = type { i32 }
%struct.assoc_array_ops = type { i64 (i8*, i8*)* }
%struct.assoc_array_walk_result = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.assoc_array_node* }
%struct.assoc_array_node = type { i32* }
%struct.assoc_array_ptr = type { i32 }

@assoc_array_walk_found_terminal_node = common dso_local global i64 0, align 8
@ASSOC_ARRAY_FAN_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @assoc_array_find(%struct.assoc_array* %0, %struct.assoc_array_ops* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.assoc_array*, align 8
  %6 = alloca %struct.assoc_array_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.assoc_array_walk_result, align 8
  %9 = alloca %struct.assoc_array_node*, align 8
  %10 = alloca %struct.assoc_array_ptr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.assoc_array* %0, %struct.assoc_array** %5, align 8
  store %struct.assoc_array_ops* %1, %struct.assoc_array_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.assoc_array*, %struct.assoc_array** %5, align 8
  %14 = load %struct.assoc_array_ops*, %struct.assoc_array_ops** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @assoc_array_walk(%struct.assoc_array* %13, %struct.assoc_array_ops* %14, i8* %15, %struct.assoc_array_walk_result* %8)
  %17 = load i64, i64* @assoc_array_walk_found_terminal_node, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %61

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.assoc_array_walk_result, %struct.assoc_array_walk_result* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.assoc_array_node*, %struct.assoc_array_node** %22, align 8
  store %struct.assoc_array_node* %23, %struct.assoc_array_node** %9, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %57, %20
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ASSOC_ARRAY_FAN_OUT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load %struct.assoc_array_node*, %struct.assoc_array_node** %9, align 8
  %30 = getelementptr inbounds %struct.assoc_array_node, %struct.assoc_array_node* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %35)
  store %struct.assoc_array_ptr* %36, %struct.assoc_array_ptr** %10, align 8
  %37 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %10, align 8
  %38 = icmp ne %struct.assoc_array_ptr* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %28
  %40 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %10, align 8
  %41 = call i64 @assoc_array_ptr_is_leaf(%struct.assoc_array_ptr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %10, align 8
  %45 = call i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr* %44)
  store i8* %45, i8** %11, align 8
  %46 = load %struct.assoc_array_ops*, %struct.assoc_array_ops** %6, align 8
  %47 = getelementptr inbounds %struct.assoc_array_ops, %struct.assoc_array_ops* %46, i32 0, i32 0
  %48 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %47, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 %48(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %4, align 8
  br label %61

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %39, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %24

60:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %61

61:                                               ; preds = %60, %53, %19
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i64 @assoc_array_walk(%struct.assoc_array*, %struct.assoc_array_ops*, i8*, %struct.assoc_array_walk_result*) #1

declare dso_local %struct.assoc_array_ptr* @READ_ONCE(i32) #1

declare dso_local i64 @assoc_array_ptr_is_leaf(%struct.assoc_array_ptr*) #1

declare dso_local i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
