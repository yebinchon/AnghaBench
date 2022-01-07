; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_find_extra_kernel_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_find_extra_kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_kernel_map_info = type { i64 }

@STB_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"_entry_trampoline\00", align 1
@page_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i64)* @find_extra_kernel_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_extra_kernel_maps(i8* %0, i8* %1, i8 signext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.extra_kernel_map_info*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.extra_kernel_map_info*
  store %struct.extra_kernel_map_info* %13, %struct.extra_kernel_map_info** %10, align 8
  %14 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %10, align 8
  %15 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %4
  %19 = load i8, i8* %8, align 1
  %20 = call i64 @kallsyms2elf_binding(i8 signext %19)
  %21 = load i64, i64* @STB_GLOBAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %10, align 8
  %30 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %5, align 4
  br label %45

31:                                               ; preds = %23, %18, %4
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @is_entry_trampoline(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @page_size, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @add_extra_kernel_map(%struct.extra_kernel_map_info* %39, i64 %40, i64 %41, i32 0, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %35, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @kallsyms2elf_binding(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_entry_trampoline(i8*) #1

declare dso_local i32 @add_extra_kernel_map(%struct.extra_kernel_map_info*, i64, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
