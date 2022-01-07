; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_load_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swsusp_info = type { i64, i64 }

@restore_pblist = common dso_local global i32* null, align 8
@nr_copy_pages = common dso_local global i64 0, align 8
@nr_meta_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swsusp_info*)* @load_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_header(%struct.swsusp_info* %0) #0 {
  %2 = alloca %struct.swsusp_info*, align 8
  %3 = alloca i32, align 4
  store %struct.swsusp_info* %0, %struct.swsusp_info** %2, align 8
  store i32* null, i32** @restore_pblist, align 8
  %4 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %5 = call i32 @check_header(%struct.swsusp_info* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %10 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* @nr_copy_pages, align 8
  %12 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %13 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %16 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* @nr_meta_pages, align 8
  br label %20

20:                                               ; preds = %8, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @check_header(%struct.swsusp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
