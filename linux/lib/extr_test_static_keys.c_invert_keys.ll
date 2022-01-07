; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_static_keys.c_invert_keys.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_static_keys.c_invert_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_key = type { %struct.static_key* }
%struct.static_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_key*, i32)* @invert_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invert_keys(%struct.test_key* %0, i32 %1) #0 {
  %3 = alloca %struct.test_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.static_key*, align 8
  %6 = alloca i32, align 4
  store %struct.test_key* %0, %struct.test_key** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.static_key* null, %struct.static_key** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load %struct.static_key*, %struct.static_key** %5, align 8
  %13 = load %struct.test_key*, %struct.test_key** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.test_key, %struct.test_key* %13, i64 %15
  %17 = getelementptr inbounds %struct.test_key, %struct.test_key* %16, i32 0, i32 0
  %18 = load %struct.static_key*, %struct.static_key** %17, align 8
  %19 = icmp ne %struct.static_key* %12, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %11
  %21 = load %struct.test_key*, %struct.test_key** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.test_key, %struct.test_key* %21, i64 %23
  %25 = getelementptr inbounds %struct.test_key, %struct.test_key* %24, i32 0, i32 0
  %26 = load %struct.static_key*, %struct.static_key** %25, align 8
  %27 = call i32 @invert_key(%struct.static_key* %26)
  %28 = load %struct.test_key*, %struct.test_key** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.test_key, %struct.test_key* %28, i64 %30
  %32 = getelementptr inbounds %struct.test_key, %struct.test_key* %31, i32 0, i32 0
  %33 = load %struct.static_key*, %struct.static_key** %32, align 8
  store %struct.static_key* %33, %struct.static_key** %5, align 8
  br label %34

34:                                               ; preds = %20, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @invert_key(%struct.static_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
