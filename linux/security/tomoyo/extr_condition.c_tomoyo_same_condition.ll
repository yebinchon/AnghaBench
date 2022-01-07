; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_same_condition.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_same_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_condition = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_condition*, %struct.tomoyo_condition*)* @tomoyo_same_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_same_condition(%struct.tomoyo_condition* %0, %struct.tomoyo_condition* %1) #0 {
  %3 = alloca %struct.tomoyo_condition*, align 8
  %4 = alloca %struct.tomoyo_condition*, align 8
  store %struct.tomoyo_condition* %0, %struct.tomoyo_condition** %3, align 8
  store %struct.tomoyo_condition* %1, %struct.tomoyo_condition** %4, align 8
  %5 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %6 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %9 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %2
  %13 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %14 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %17 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %12
  %21 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %22 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %25 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %20
  %29 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %30 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %33 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %28
  %37 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %38 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %41 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %36
  %45 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %46 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %49 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  %53 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %54 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %57 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %62 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %65 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %70 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %69, i64 1
  %71 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %4, align 8
  %72 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %71, i64 1
  %73 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %3, align 8
  %74 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, 64
  %77 = call i32 @memcmp(%struct.tomoyo_condition* %70, %struct.tomoyo_condition* %72, i64 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %68, %60, %52, %44, %36, %28, %20, %12, %2
  %81 = phi i1 [ false, %60 ], [ false, %52 ], [ false, %44 ], [ false, %36 ], [ false, %28 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %79, %68 ]
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i32 @memcmp(%struct.tomoyo_condition*, %struct.tomoyo_condition*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
