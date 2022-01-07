; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_fault-inject.c_should_fail.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_fault-inject.c_should_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.fault_attr = type { i32, i32, i32, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @should_fail(%struct.fault_attr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fault_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fault_attr* %0, %struct.fault_attr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @in_task()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 1
  %22 = call i32 @WRITE_ONCE(i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %95

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %107

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %29 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %107

33:                                               ; preds = %27
  %34 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %35 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %41 = call i32 @fail_task(%struct.fault_attr* %39, %struct.TYPE_3__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %107

44:                                               ; preds = %38, %33
  %45 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %46 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %45, i32 0, i32 3
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %107

50:                                               ; preds = %44
  %51 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %52 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %51, i32 0, i32 4
  %53 = call i32 @atomic_read(i32* %52)
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %59 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %58, i32 0, i32 4
  %60 = call i32 @atomic_sub(i32 %57, i32* %59)
  store i32 0, i32* %3, align 4
  br label %107

61:                                               ; preds = %50
  %62 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %63 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %68 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %72 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %75 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = srem i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %107

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %83 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (...) @prandom_u32()
  %86 = srem i32 %85, 100
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %107

89:                                               ; preds = %81
  %90 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %91 = call i32 @fail_stacktrace(%struct.fault_attr* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %107

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %24
  %96 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %97 = call i32 @fail_dump(%struct.fault_attr* %96)
  %98 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %99 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %98, i32 0, i32 3
  %100 = call i32 @atomic_read(i32* %99)
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.fault_attr*, %struct.fault_attr** %4, align 8
  %104 = getelementptr inbounds %struct.fault_attr, %struct.fault_attr* %103, i32 0, i32 3
  %105 = call i32 @atomic_dec_not_zero(i32* %104)
  br label %106

106:                                              ; preds = %102, %95
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %93, %88, %79, %56, %49, %43, %32, %25
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @in_task(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @fail_task(%struct.fault_attr*, %struct.TYPE_3__*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @fail_stacktrace(%struct.fault_attr*) #1

declare dso_local i32 @fail_dump(%struct.fault_attr*) #1

declare dso_local i32 @atomic_dec_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
