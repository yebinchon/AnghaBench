; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_gang_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_gang_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.item = type { i64 }

@BATCH = common dso_local global i32 0, align 4
@NODE_TAGGED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*, i8*, i32)* @gang_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gang_check(%struct.radix_tree_root* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.item*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @BATCH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.item*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %71, %3
  %19 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %20 = bitcast %struct.item** %17 to i8**
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @BATCH, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @radix_tree_gang_lookup_tag(%struct.radix_tree_root* %19, i8** %20, i64 %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.item*, %struct.item** %17, i64 %33
  %35 = load %struct.item*, %struct.item** %34, align 8
  store %struct.item* %35, %struct.item** %13, align 8
  br label %36

36:                                               ; preds = %42, %31
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.item*, %struct.item** %13, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @NODE_TAGGED, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @NODE_TAGGED, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.item*, %struct.item** %17, i64 %74
  %76 = load %struct.item*, %struct.item** %75, align 8
  %77 = getelementptr inbounds %struct.item, %struct.item* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %18

80:                                               ; preds = %18
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radix_tree_gang_lookup_tag(%struct.radix_tree_root*, i8**, i64, i32, i32) #2

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
