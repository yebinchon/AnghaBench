; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_errseq.c_errseq_set.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_errseq.c_errseq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@ERRSEQ_SEEN = common dso_local global i32 0, align 4
@ERRSEQ_CTR_INC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errseq_set(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MAX_ERRNO, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @READ_ONCE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32, i32* @MAX_ERRNO, align 4
  %21 = icmp ugt i32 %19, %20
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ true, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @unlikely(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @WARN(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX_ERRNO, align 4
  %35 = load i32, i32* @ERRSEQ_SEEN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 0, %39
  %41 = or i32 %38, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ERRSEQ_SEEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i64, i64* @ERRSEQ_CTR_INC, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %32
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %6, align 4
  br label %78

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cmpxchg(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i1 [ true, %58 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 @likely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %7, align 4
  br label %32

78:                                               ; preds = %75, %56
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
