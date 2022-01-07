; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_compare_name_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_compare_name_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_path_info = type { i32 }
%struct.tomoyo_name_union = type { %struct.tomoyo_path_info*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_path_info* @tomoyo_compare_name_union(%struct.tomoyo_path_info* %0, %struct.tomoyo_name_union* %1) #0 {
  %3 = alloca %struct.tomoyo_path_info*, align 8
  %4 = alloca %struct.tomoyo_path_info*, align 8
  %5 = alloca %struct.tomoyo_name_union*, align 8
  store %struct.tomoyo_path_info* %0, %struct.tomoyo_path_info** %4, align 8
  store %struct.tomoyo_name_union* %1, %struct.tomoyo_name_union** %5, align 8
  %6 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %7 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %12 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %13 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.tomoyo_path_info* @tomoyo_path_matches_group(%struct.tomoyo_path_info* %11, i64 %14)
  store %struct.tomoyo_path_info* %15, %struct.tomoyo_path_info** %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %18 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %19 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %18, i32 0, i32 0
  %20 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %19, align 8
  %21 = call i64 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %17, %struct.tomoyo_path_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %5, align 8
  %25 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %24, i32 0, i32 0
  %26 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %25, align 8
  store %struct.tomoyo_path_info* %26, %struct.tomoyo_path_info** %3, align 8
  br label %28

27:                                               ; preds = %16
  store %struct.tomoyo_path_info* null, %struct.tomoyo_path_info** %3, align 8
  br label %28

28:                                               ; preds = %27, %23, %10
  %29 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %3, align 8
  ret %struct.tomoyo_path_info* %29
}

declare dso_local %struct.tomoyo_path_info* @tomoyo_path_matches_group(%struct.tomoyo_path_info*, i64) #1

declare dso_local i64 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info*, %struct.tomoyo_path_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
