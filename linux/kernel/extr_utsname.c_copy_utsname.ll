; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_utsname.c_copy_utsname.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_utsname.c_copy_utsname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.uts_namespace = type { i32 }

@CLONE_NEWUTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uts_namespace* @copy_utsname(i64 %0, %struct.user_namespace* %1, %struct.uts_namespace* %2) #0 {
  %4 = alloca %struct.uts_namespace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.uts_namespace*, align 8
  %8 = alloca %struct.uts_namespace*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %6, align 8
  store %struct.uts_namespace* %2, %struct.uts_namespace** %7, align 8
  %9 = load %struct.uts_namespace*, %struct.uts_namespace** %7, align 8
  %10 = icmp ne %struct.uts_namespace* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.uts_namespace*, %struct.uts_namespace** %7, align 8
  %15 = call i32 @get_uts_ns(%struct.uts_namespace* %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CLONE_NEWUTS, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load %struct.uts_namespace*, %struct.uts_namespace** %7, align 8
  store %struct.uts_namespace* %21, %struct.uts_namespace** %4, align 8
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %24 = load %struct.uts_namespace*, %struct.uts_namespace** %7, align 8
  %25 = call %struct.uts_namespace* @clone_uts_ns(%struct.user_namespace* %23, %struct.uts_namespace* %24)
  store %struct.uts_namespace* %25, %struct.uts_namespace** %8, align 8
  %26 = load %struct.uts_namespace*, %struct.uts_namespace** %7, align 8
  %27 = call i32 @put_uts_ns(%struct.uts_namespace* %26)
  %28 = load %struct.uts_namespace*, %struct.uts_namespace** %8, align 8
  store %struct.uts_namespace* %28, %struct.uts_namespace** %4, align 8
  br label %29

29:                                               ; preds = %22, %20
  %30 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  ret %struct.uts_namespace* %30
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_uts_ns(%struct.uts_namespace*) #1

declare dso_local %struct.uts_namespace* @clone_uts_ns(%struct.user_namespace*, %struct.uts_namespace*) #1

declare dso_local i32 @put_uts_ns(%struct.uts_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
