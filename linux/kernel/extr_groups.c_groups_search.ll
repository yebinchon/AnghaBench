; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_groups.c_groups_search.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_groups.c_groups_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @groups_search(%struct.group_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.group_info* %0, %struct.group_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.group_info*, %struct.group_info** %4, align 8
  %10 = icmp ne %struct.group_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load %struct.group_info*, %struct.group_info** %4, align 8
  %14 = getelementptr inbounds %struct.group_info, %struct.group_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %53, %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.group_info*, %struct.group_info** %4, align 8
  %27 = getelementptr inbounds %struct.group_info, %struct.group_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gid_gt(i32 %25, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %53

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.group_info*, %struct.group_info** %4, align 8
  %41 = getelementptr inbounds %struct.group_info, %struct.group_info* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @gid_lt(i32 %39, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  br label %52

51:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %55

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %35
  br label %16

54:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @gid_gt(i32, i32) #1

declare dso_local i64 @gid_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
