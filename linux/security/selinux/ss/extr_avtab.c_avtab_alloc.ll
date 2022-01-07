; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i64, i64, i64, i32 }

@MAX_AVTAB_HASH_BUCKETS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SELinux: %d avtab hash slots, %d rules.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avtab_alloc(%struct.avtab* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = ashr i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %7, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %27, 2
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @MAX_AVTAB_HASH_BUCKETS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @MAX_AVTAB_HASH_BUCKETS, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @kvcalloc(i64 %42, i32 8, i32 %43)
  %45 = load %struct.avtab*, %struct.avtab** %4, align 8
  %46 = getelementptr inbounds %struct.avtab, %struct.avtab* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.avtab*, %struct.avtab** %4, align 8
  %48 = getelementptr inbounds %struct.avtab, %struct.avtab* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %13
  %56 = load %struct.avtab*, %struct.avtab** %4, align 8
  %57 = getelementptr inbounds %struct.avtab, %struct.avtab* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.avtab*, %struct.avtab** %4, align 8
  %60 = getelementptr inbounds %struct.avtab, %struct.avtab* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.avtab*, %struct.avtab** %4, align 8
  %63 = getelementptr inbounds %struct.avtab, %struct.avtab* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.avtab*, %struct.avtab** %4, align 8
  %65 = getelementptr inbounds %struct.avtab, %struct.avtab* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %51
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @kvcalloc(i64, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
