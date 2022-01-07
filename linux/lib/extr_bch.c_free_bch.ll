; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_free_bch.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_free_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { %struct.bch_control**, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control*, %struct.bch_control* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_bch(%struct.bch_control* %0) #0 {
  %2 = alloca %struct.bch_control*, align 8
  %3 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %2, align 8
  %4 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %5 = icmp ne %struct.bch_control* %4, null
  br i1 %5, label %6, label %65

6:                                                ; preds = %1
  %7 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %8 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %7, i32 0, i32 9
  %9 = load %struct.bch_control*, %struct.bch_control** %8, align 8
  %10 = call i32 @kfree(%struct.bch_control* %9)
  %11 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %12 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %11, i32 0, i32 8
  %13 = load %struct.bch_control*, %struct.bch_control** %12, align 8
  %14 = call i32 @kfree(%struct.bch_control* %13)
  %15 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %16 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %15, i32 0, i32 7
  %17 = load %struct.bch_control*, %struct.bch_control** %16, align 8
  %18 = call i32 @kfree(%struct.bch_control* %17)
  %19 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %20 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %19, i32 0, i32 6
  %21 = load %struct.bch_control*, %struct.bch_control** %20, align 8
  %22 = call i32 @kfree(%struct.bch_control* %21)
  %23 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %24 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %23, i32 0, i32 5
  %25 = load %struct.bch_control*, %struct.bch_control** %24, align 8
  %26 = call i32 @kfree(%struct.bch_control* %25)
  %27 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %28 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %27, i32 0, i32 4
  %29 = load %struct.bch_control*, %struct.bch_control** %28, align 8
  %30 = call i32 @kfree(%struct.bch_control* %29)
  %31 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %32 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %31, i32 0, i32 3
  %33 = load %struct.bch_control*, %struct.bch_control** %32, align 8
  %34 = call i32 @kfree(%struct.bch_control* %33)
  %35 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %36 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %35, i32 0, i32 2
  %37 = load %struct.bch_control*, %struct.bch_control** %36, align 8
  %38 = call i32 @kfree(%struct.bch_control* %37)
  %39 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %40 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %39, i32 0, i32 1
  %41 = load %struct.bch_control*, %struct.bch_control** %40, align 8
  %42 = call i32 @kfree(%struct.bch_control* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %59, %6
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %46 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %45, i32 0, i32 0
  %47 = load %struct.bch_control**, %struct.bch_control*** %46, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.bch_control** %47)
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %52 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %51, i32 0, i32 0
  %53 = load %struct.bch_control**, %struct.bch_control*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bch_control*, %struct.bch_control** %53, i64 %55
  %57 = load %struct.bch_control*, %struct.bch_control** %56, align 8
  %58 = call i32 @kfree(%struct.bch_control* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %64 = call i32 @kfree(%struct.bch_control* %63)
  br label %65

65:                                               ; preds = %62, %1
  ret void
}

declare dso_local i32 @kfree(%struct.bch_control*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bch_control**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
