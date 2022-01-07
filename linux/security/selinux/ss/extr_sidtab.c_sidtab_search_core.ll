; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_search_core.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_search_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.sidtab = type { i32 }

@SECINITSID_NUM = common dso_local global i64 0, align 8
@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.context* (%struct.sidtab*, i64, i32)* @sidtab_search_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.context* @sidtab_search_core(%struct.sidtab* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.context*, align 8
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SECINITSID_NUM, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @SECINITSID_NUM, align 8
  %19 = add nsw i64 %18, 1
  %20 = sub nsw i64 %17, %19
  %21 = call %struct.context* @sidtab_lookup(%struct.sidtab* %16, i64 %20)
  store %struct.context* %21, %struct.context** %8, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.context* @sidtab_lookup_initial(%struct.sidtab* %23, i64 %24)
  store %struct.context* %25, %struct.context** %8, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.context*, %struct.context** %8, align 8
  %28 = icmp ne %struct.context* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.context*, %struct.context** %8, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %29
  %38 = load %struct.context*, %struct.context** %8, align 8
  store %struct.context* %38, %struct.context** %4, align 8
  br label %44

39:                                               ; preds = %34, %26
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %42 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %43 = call %struct.context* @sidtab_lookup_initial(%struct.sidtab* %41, i64 %42)
  store %struct.context* %43, %struct.context** %4, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.context*, %struct.context** %4, align 8
  ret %struct.context* %45
}

declare dso_local %struct.context* @sidtab_lookup(%struct.sidtab*, i64) #1

declare dso_local %struct.context* @sidtab_lookup_initial(%struct.sidtab*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
