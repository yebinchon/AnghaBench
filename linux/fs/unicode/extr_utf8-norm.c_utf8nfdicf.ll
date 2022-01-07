; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8nfdicf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8nfdicf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8data = type { i32 }

@utf8nfdicfdata = common dso_local global %struct.utf8data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utf8data* @utf8nfdicf(i32 %0) #0 {
  %2 = alloca %struct.utf8data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.utf8data*, %struct.utf8data** @utf8nfdicfdata, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.utf8data* %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.utf8data*, %struct.utf8data** @utf8nfdicfdata, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %10, i64 %12
  %14 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.utf8data*, %struct.utf8data** @utf8nfdicfdata, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %22, i64 %24
  %26 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store %struct.utf8data* null, %struct.utf8data** %2, align 8
  br label %35

30:                                               ; preds = %20
  %31 = load %struct.utf8data*, %struct.utf8data** @utf8nfdicfdata, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %31, i64 %33
  store %struct.utf8data* %34, %struct.utf8data** %2, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.utf8data*, %struct.utf8data** %2, align 8
  ret %struct.utf8data* %36
}

declare dso_local i32 @ARRAY_SIZE(%struct.utf8data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
