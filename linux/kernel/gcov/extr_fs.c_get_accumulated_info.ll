; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_get_accumulated_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_get_accumulated_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32 }
%struct.gcov_node = type { i32, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gcov_info* (%struct.gcov_node*)* @get_accumulated_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gcov_info* @get_accumulated_info(%struct.gcov_node* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %7 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %12 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.gcov_info* @gcov_info_dup(i64 %13)
  store %struct.gcov_info* %14, %struct.gcov_info** %4, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %17 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.gcov_info* @gcov_info_dup(i64 %23)
  store %struct.gcov_info* %24, %struct.gcov_info** %4, align 8
  br label %25

25:                                               ; preds = %15, %10
  %26 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %27 = icmp ne %struct.gcov_info* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %51

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %33 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %38 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %39 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @gcov_info_add(%struct.gcov_info* %37, i64 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  store %struct.gcov_info* %50, %struct.gcov_info** %2, align 8
  br label %51

51:                                               ; preds = %49, %28
  %52 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %52
}

declare dso_local %struct.gcov_info* @gcov_info_dup(i64) #1

declare dso_local i32 @gcov_info_add(%struct.gcov_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
