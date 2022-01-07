; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_list_sort.c_merge_final.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_list_sort.c_merge_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64 (i8*, %struct.list_head*, %struct.list_head*)*, %struct.list_head*, %struct.list_head*, %struct.list_head*)* @merge_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_final(i8* %0, i64 (i8*, %struct.list_head*, %struct.list_head*)* nonnull %1, %struct.list_head* nonnull %2, %struct.list_head* nonnull %3, %struct.list_head* nonnull %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, %struct.list_head*, %struct.list_head*)*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 (i8*, %struct.list_head*, %struct.list_head*)* %1, i64 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store %struct.list_head* %4, %struct.list_head** %10, align 8
  %13 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %13, %struct.list_head** %11, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %52, %5
  %15 = load i64 (i8*, %struct.list_head*, %struct.list_head*)*, i64 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.list_head*, %struct.list_head** %9, align 8
  %18 = load %struct.list_head*, %struct.list_head** %10, align 8
  %19 = call i64 %15(i8* %16, %struct.list_head* %17, %struct.list_head* %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.list_head*, %struct.list_head** %9, align 8
  %23 = load %struct.list_head*, %struct.list_head** %11, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 1
  store %struct.list_head* %22, %struct.list_head** %24, align 8
  %25 = load %struct.list_head*, %struct.list_head** %11, align 8
  %26 = load %struct.list_head*, %struct.list_head** %9, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0
  store %struct.list_head* %25, %struct.list_head** %27, align 8
  %28 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %28, %struct.list_head** %11, align 8
  %29 = load %struct.list_head*, %struct.list_head** %9, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 1
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  store %struct.list_head* %31, %struct.list_head** %9, align 8
  %32 = load %struct.list_head*, %struct.list_head** %9, align 8
  %33 = icmp ne %struct.list_head* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %53

35:                                               ; preds = %21
  br label %52

36:                                               ; preds = %14
  %37 = load %struct.list_head*, %struct.list_head** %10, align 8
  %38 = load %struct.list_head*, %struct.list_head** %11, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i32 0, i32 1
  store %struct.list_head* %37, %struct.list_head** %39, align 8
  %40 = load %struct.list_head*, %struct.list_head** %11, align 8
  %41 = load %struct.list_head*, %struct.list_head** %10, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i32 0, i32 0
  store %struct.list_head* %40, %struct.list_head** %42, align 8
  %43 = load %struct.list_head*, %struct.list_head** %10, align 8
  store %struct.list_head* %43, %struct.list_head** %11, align 8
  %44 = load %struct.list_head*, %struct.list_head** %10, align 8
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i32 0, i32 1
  %46 = load %struct.list_head*, %struct.list_head** %45, align 8
  store %struct.list_head* %46, %struct.list_head** %10, align 8
  %47 = load %struct.list_head*, %struct.list_head** %10, align 8
  %48 = icmp ne %struct.list_head* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %36
  %50 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %50, %struct.list_head** %10, align 8
  br label %53

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %35
  br label %14

53:                                               ; preds = %49, %34
  %54 = load %struct.list_head*, %struct.list_head** %10, align 8
  %55 = load %struct.list_head*, %struct.list_head** %11, align 8
  %56 = getelementptr inbounds %struct.list_head, %struct.list_head* %55, i32 0, i32 1
  store %struct.list_head* %54, %struct.list_head** %56, align 8
  br label %57

57:                                               ; preds = %79, %53
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64 (i8*, %struct.list_head*, %struct.list_head*)*, i64 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.list_head*, %struct.list_head** %10, align 8
  %69 = load %struct.list_head*, %struct.list_head** %10, align 8
  %70 = call i64 %66(i8* %67, %struct.list_head* %68, %struct.list_head* %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.list_head*, %struct.list_head** %11, align 8
  %73 = load %struct.list_head*, %struct.list_head** %10, align 8
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i32 0, i32 0
  store %struct.list_head* %72, %struct.list_head** %74, align 8
  %75 = load %struct.list_head*, %struct.list_head** %10, align 8
  store %struct.list_head* %75, %struct.list_head** %11, align 8
  %76 = load %struct.list_head*, %struct.list_head** %10, align 8
  %77 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i32 0, i32 1
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8
  store %struct.list_head* %78, %struct.list_head** %10, align 8
  br label %79

79:                                               ; preds = %71
  %80 = load %struct.list_head*, %struct.list_head** %10, align 8
  %81 = icmp ne %struct.list_head* %80, null
  br i1 %81, label %57, label %82

82:                                               ; preds = %79
  %83 = load %struct.list_head*, %struct.list_head** %8, align 8
  %84 = load %struct.list_head*, %struct.list_head** %11, align 8
  %85 = getelementptr inbounds %struct.list_head, %struct.list_head* %84, i32 0, i32 1
  store %struct.list_head* %83, %struct.list_head** %85, align 8
  %86 = load %struct.list_head*, %struct.list_head** %11, align 8
  %87 = load %struct.list_head*, %struct.list_head** %8, align 8
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %87, i32 0, i32 0
  store %struct.list_head* %86, %struct.list_head** %88, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
