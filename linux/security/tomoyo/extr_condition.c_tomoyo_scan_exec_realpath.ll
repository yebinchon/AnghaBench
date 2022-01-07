; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_scan_exec_realpath.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_scan_exec_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tomoyo_name_union = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.tomoyo_name_union*, i32)* @tomoyo_scan_exec_realpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_scan_exec_realpath(%struct.file* %0, %struct.tomoyo_name_union* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tomoyo_name_union*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_path_info, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.tomoyo_name_union* %1, %struct.tomoyo_name_union** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = call i32 @tomoyo_realpath_from_path(i32* %15)
  %17 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %33

22:                                               ; preds = %13
  %23 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %9)
  %24 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %6, align 8
  %25 = call i32 @tomoyo_compare_name_union(%struct.tomoyo_path_info* %9, %struct.tomoyo_name_union* %24)
  store i32 %25, i32* %8, align 4
  %26 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %21, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @tomoyo_realpath_from_path(i32*) #1

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_compare_name_union(%struct.tomoyo_path_info*, %struct.tomoyo_name_union*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
