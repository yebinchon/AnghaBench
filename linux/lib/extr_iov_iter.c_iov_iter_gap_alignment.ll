; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_gap_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_iov_iter_gap_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.iov_iter = type { i64 }

@v = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iov_iter_gap_alignment(%struct.iov_iter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iov_iter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %7 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %10 = call i64 @iov_iter_is_pipe(%struct.iov_iter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %14 = call i64 @iov_iter_is_discard(%struct.iov_iter* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @WARN_ON(i32 1)
  store i64 4294967295, i64* %2, align 8
  br label %82

23:                                               ; preds = %16
  %24 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 2), align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ 0, %28 ], [ %30, %29 ]
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 0), align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i64 [ %37, %36 ], [ 0, %38 ]
  %41 = or i64 %32, %40
  %42 = load i64, i64* %4, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %49

47:                                               ; preds = %39
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 3), align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i64 [ 0, %46 ], [ %48, %47 ]
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 1), align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i64 [ %55, %54 ], [ 0, %56 ]
  %59 = or i64 %50, %58
  %60 = load i64, i64* %4, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 2), align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i64 [ 0, %64 ], [ %66, %65 ]
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @v, i32 0, i32 0), align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  br label %75

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i64 [ %73, %72 ], [ 0, %74 ]
  %77 = or i64 %68, %76
  %78 = load i64, i64* %4, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %4, align 8
  %80 = call i32 @iterate_all_kinds(%struct.iov_iter* %24, i64 %25, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 @v, i64 0, i64 %61, i64 %79)
  %81 = load i64, i64* %4, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %75, %21
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_is_discard(%struct.iov_iter*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iterate_all_kinds(%struct.iov_iter*, i64, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
