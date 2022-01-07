; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_bump_cpu_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_bump_cpu_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.k_itimer*, i64)* @bump_cpu_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bump_cpu_timer(%struct.k_itimer* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.k_itimer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %11 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %17 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %3, align 8
  br label %89

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %3, align 8
  br label %89

28:                                               ; preds = %22
  %29 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %30 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %46, %28
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %37

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %61 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %59
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %71 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %58, %57
  %78 = load i64, i64* %7, align 8
  %79 = ashr i64 %78, 1
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %84 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %82, %26, %20
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
