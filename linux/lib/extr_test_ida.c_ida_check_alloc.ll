; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_ida.c_ida_check_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_ida.c_ida_check_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*)* @ida_check_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_check_alloc(%struct.ida* %0) #0 {
  %2 = alloca %struct.ida*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ida* %0, %struct.ida** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 10000
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.ida*, %struct.ida** %2, align 8
  %10 = load %struct.ida*, %struct.ida** %2, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @ida_alloc(%struct.ida* %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @IDA_BUG_ON(%struct.ida* %9, i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load %struct.ida*, %struct.ida** %2, align 8
  %22 = call i32 @ida_free(%struct.ida* %21, i32 20)
  %23 = load %struct.ida*, %struct.ida** %2, align 8
  %24 = call i32 @ida_free(%struct.ida* %23, i32 21)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %46, %20
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.ida*, %struct.ida** %2, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @ida_alloc(%struct.ida* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ida*, %struct.ida** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @IDA_BUG_ON(%struct.ida* %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.ida*, %struct.ida** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 10000
  %43 = zext i1 %42 to i32
  %44 = call i32 @IDA_BUG_ON(%struct.ida* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %25

49:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %57, %49
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 5000
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.ida*, %struct.ida** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ida_free(%struct.ida* %54, i32 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %50

60:                                               ; preds = %50
  %61 = load %struct.ida*, %struct.ida** %2, align 8
  %62 = load %struct.ida*, %struct.ida** %2, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @ida_alloc_min(%struct.ida* %62, i32 5000, i32 %63)
  %65 = icmp ne i32 %64, 10001
  %66 = zext i1 %65 to i32
  %67 = call i32 @IDA_BUG_ON(%struct.ida* %61, i32 %66)
  %68 = load %struct.ida*, %struct.ida** %2, align 8
  %69 = call i32 @ida_destroy(%struct.ida* %68)
  %70 = load %struct.ida*, %struct.ida** %2, align 8
  %71 = load %struct.ida*, %struct.ida** %2, align 8
  %72 = call i32 @ida_is_empty(%struct.ida* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @IDA_BUG_ON(%struct.ida* %70, i32 %75)
  ret void
}

declare dso_local i32 @IDA_BUG_ON(%struct.ida*, i32) #1

declare dso_local i32 @ida_alloc(%struct.ida*, i32) #1

declare dso_local i32 @ida_free(%struct.ida*, i32) #1

declare dso_local i32 @ida_alloc_min(%struct.ida*, i32, i32) #1

declare dso_local i32 @ida_destroy(%struct.ida*) #1

declare dso_local i32 @ida_is_empty(%struct.ida*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
