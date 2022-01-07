; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_dso__type_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_dso__type_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@DSO__TYPE_UNKNOWN = common dso_local global i32 0, align 4
@DSO__TYPE_64BIT = common dso_local global i32 0, align 4
@EM_X86_64 = common dso_local global i64 0, align 8
@DSO__TYPE_X32BIT = common dso_local global i32 0, align 4
@DSO__TYPE_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__type_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @fd__is_64_bit(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DSO__TYPE_UNKNOWN, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @DSO__TYPE_64BIT, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @readn(i32 %18, %struct.TYPE_3__* %4, i32 8)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @DSO__TYPE_UNKNOWN, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EM_X86_64, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @DSO__TYPE_X32BIT, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @DSO__TYPE_32BIT, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %22, %15, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @fd__is_64_bit(i32) #1

declare dso_local i32 @readn(i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
