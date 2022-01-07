; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_gang_check_present.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_gang_check_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.item = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_gang_check_present(%struct.radix_tree_root* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radix_tree_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca %struct.item*, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %74, %5
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %13, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.radix_tree_root*, %struct.radix_tree_root** %6, align 8
  %40 = bitcast %struct.item** %20 to i8**
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @radix_tree_gang_lookup(%struct.radix_tree_root* %39, i8** %40, i64 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %71, %38
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.item*, %struct.item** %20, i64 %57
  %59 = load %struct.item*, %struct.item** %58, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %62, %63
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = icmp eq i64 %61, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %13, align 8
  br label %21

79:                                               ; preds = %21
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
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
