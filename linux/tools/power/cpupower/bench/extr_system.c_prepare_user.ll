; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_system.c_prepare_user.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_system.c_prepare_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"approx. test duration: %im\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_user(%struct.config* %0) #0 {
  %2 = alloca %struct.config*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.config* %0, %struct.config** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.config*, %struct.config** %2, align 8
  %9 = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.config*, %struct.config** %2, align 8
  %14 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 2, %15
  %17 = load %struct.config*, %struct.config** %2, align 8
  %18 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.config*, %struct.config** %2, align 8
  %21 = getelementptr inbounds %struct.config, %struct.config* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %19, %24
  %26 = mul i32 %16, %25
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load %struct.config*, %struct.config** %2, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 2, %32
  %34 = load %struct.config*, %struct.config** %2, align 8
  %35 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.config*, %struct.config** %2, align 8
  %38 = getelementptr inbounds %struct.config, %struct.config* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %39, %40
  %42 = add i32 %36, %41
  %43 = mul i32 %33, %42
  %44 = load %struct.config*, %struct.config** %2, align 8
  %45 = getelementptr inbounds %struct.config, %struct.config* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.config*, %struct.config** %2, align 8
  %48 = getelementptr inbounds %struct.config, %struct.config* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul i32 %49, %50
  %52 = mul i32 %51, 4
  %53 = add i32 %46, %52
  %54 = add i32 %43, %53
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %12
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %6

61:                                               ; preds = %6
  %62 = load %struct.config*, %struct.config** %2, align 8
  %63 = getelementptr inbounds %struct.config, %struct.config* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.config*, %struct.config** %2, align 8
  %68 = getelementptr inbounds %struct.config, %struct.config* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @stdout, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66, %61
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %73, %74
  %76 = udiv i64 %75, 60000000
  %77 = trunc i64 %76 to i32
  %78 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
