; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.file = type { i32 }
%struct.dir_context = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_table_header*, %struct.ctl_table*, i64*, %struct.file*, %struct.dir_context*)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan(%struct.ctl_table_header* %0, %struct.ctl_table* %1, i64* %2, %struct.file* %3, %struct.dir_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table_header*, align 8
  %8 = alloca %struct.ctl_table*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.dir_context*, align 8
  %12 = alloca i32, align 4
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %7, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.file* %3, %struct.file** %10, align 8
  store %struct.dir_context* %4, %struct.dir_context** %11, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.dir_context*, %struct.dir_context** %11, align 8
  %17 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %50

21:                                               ; preds = %5
  %22 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %23 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISLNK(i32 %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.file*, %struct.file** %10, align 8
  %30 = load %struct.dir_context*, %struct.dir_context** %11, align 8
  %31 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %32 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %33 = call i32 @proc_sys_link_fill_cache(%struct.file* %29, %struct.dir_context* %30, %struct.ctl_table_header* %31, %struct.ctl_table* %32)
  store i32 %33, i32* %12, align 4
  br label %40

34:                                               ; preds = %21
  %35 = load %struct.file*, %struct.file** %10, align 8
  %36 = load %struct.dir_context*, %struct.dir_context** %11, align 8
  %37 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %38 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %39 = call i32 @proc_sys_fill_cache(%struct.file* %35, %struct.dir_context* %36, %struct.ctl_table_header* %37, %struct.ctl_table* %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dir_context*, %struct.dir_context** %11, align 8
  %47 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @proc_sys_link_fill_cache(%struct.file*, %struct.dir_context*, %struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @proc_sys_fill_cache(%struct.file*, %struct.dir_context*, %struct.ctl_table_header*, %struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
