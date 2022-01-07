; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_disable_warning_error.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_disable_warning_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32, i32, i32, %struct.check** }

@check_table = common dso_local global %struct.check** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, i32, i32)* @disable_warning_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_warning_error(%struct.check* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.check*, align 8
  %9 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.check*, %struct.check** %4, align 8
  %14 = getelementptr inbounds %struct.check, %struct.check* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = load %struct.check*, %struct.check** %4, align 8
  %22 = getelementptr inbounds %struct.check, %struct.check* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %20, %12
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.check**, %struct.check*** @check_table, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.check** %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.check**, %struct.check*** @check_table, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.check*, %struct.check** %32, i64 %34
  %36 = load %struct.check*, %struct.check** %35, align 8
  store %struct.check* %36, %struct.check** %8, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %58, %31
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.check*, %struct.check** %8, align 8
  %40 = getelementptr inbounds %struct.check, %struct.check* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.check*, %struct.check** %8, align 8
  %45 = getelementptr inbounds %struct.check, %struct.check* %44, i32 0, i32 3
  %46 = load %struct.check**, %struct.check*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.check*, %struct.check** %46, i64 %48
  %50 = load %struct.check*, %struct.check** %49, align 8
  %51 = load %struct.check*, %struct.check** %4, align 8
  %52 = icmp eq %struct.check* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.check*, %struct.check** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  call void @disable_warning_error(%struct.check* %54, i32 %55, i32 %56)
  br label %57

57:                                               ; preds = %53, %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %26

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %65, %20, %17
  %67 = load %struct.check*, %struct.check** %4, align 8
  %68 = getelementptr inbounds %struct.check, %struct.check* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ false, %66 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load %struct.check*, %struct.check** %4, align 8
  %79 = getelementptr inbounds %struct.check, %struct.check* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.check*, %struct.check** %4, align 8
  %81 = getelementptr inbounds %struct.check, %struct.check* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %75
  %89 = phi i1 [ false, %75 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.check*, %struct.check** %4, align 8
  %92 = getelementptr inbounds %struct.check, %struct.check* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.check**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
