; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_ns_visible.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_aa_ns_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { %struct.aa_ns* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_ns_visible(%struct.aa_ns* %0, %struct.aa_ns* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ns*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %5, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %9 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %10 = icmp eq %struct.aa_ns* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %33

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %33

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %28, %16
  %18 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %19 = icmp ne %struct.aa_ns* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %22 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %21, i32 0, i32 0
  %23 = load %struct.aa_ns*, %struct.aa_ns** %22, align 8
  %24 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %25 = icmp eq %struct.aa_ns* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %33

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %30 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %29, i32 0, i32 0
  %31 = load %struct.aa_ns*, %struct.aa_ns** %30, align 8
  store %struct.aa_ns* %31, %struct.aa_ns** %6, align 8
  br label %17

32:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26, %15, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
