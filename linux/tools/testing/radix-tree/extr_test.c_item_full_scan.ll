; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_full_scan.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_full_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.item = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_full_scan(%struct.radix_tree_root* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.radix_tree_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.item*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %48, %4
  %21 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %22 = bitcast %struct.item** %18 to i8**
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @radix_tree_gang_lookup(%struct.radix_tree_root* %21, i8** %22, i64 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.item*, %struct.item** %18, i64 %34
  %36 = load %struct.item*, %struct.item** %35, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %11, align 8
  br label %20

50:                                               ; preds = %20
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = icmp eq i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %63 = bitcast %struct.item** %18 to i8**
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @radix_tree_gang_lookup(%struct.radix_tree_root* %62, i8** %63, i64 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radix_tree_gang_lookup(%struct.radix_tree_root*, i8**, i64, i32) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
