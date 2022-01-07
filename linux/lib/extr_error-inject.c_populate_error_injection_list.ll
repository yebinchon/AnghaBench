; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_error-inject.c_populate_error_injection_list.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_error-inject.c_populate_error_injection_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_injection_entry = type { i32, i64 }
%struct.ei_entry = type { i64, i64, i32, i8*, i32 }

@ei_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to find error inject entry at %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@error_injection_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.error_injection_entry*, %struct.error_injection_entry*, i8*)* @populate_error_injection_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_error_injection_list(%struct.error_injection_entry* %0, %struct.error_injection_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.error_injection_entry*, align 8
  %5 = alloca %struct.error_injection_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.error_injection_entry*, align 8
  %8 = alloca %struct.ei_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.error_injection_entry* %0, %struct.error_injection_entry** %4, align 8
  store %struct.error_injection_entry* %1, %struct.error_injection_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = call i32 @mutex_lock(i32* @ei_mutex)
  %13 = load %struct.error_injection_entry*, %struct.error_injection_entry** %4, align 8
  store %struct.error_injection_entry* %13, %struct.error_injection_entry** %7, align 8
  br label %14

14:                                               ; preds = %64, %3
  %15 = load %struct.error_injection_entry*, %struct.error_injection_entry** %7, align 8
  %16 = load %struct.error_injection_entry*, %struct.error_injection_entry** %5, align 8
  %17 = icmp ult %struct.error_injection_entry* %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load %struct.error_injection_entry*, %struct.error_injection_entry** %7, align 8
  %20 = getelementptr inbounds %struct.error_injection_entry, %struct.error_injection_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i64 @arch_deref_entry_point(i8* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @kernel_text_address(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @kallsyms_lookup_size_offset(i64 %28, i64* %11, i64* %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %18
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %64

35:                                               ; preds = %27
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ei_entry* @kmalloc(i32 40, i32 %36)
  store %struct.ei_entry* %37, %struct.ei_entry** %8, align 8
  %38 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %39 = icmp ne %struct.ei_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %67

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %44 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %49 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.error_injection_entry*, %struct.error_injection_entry** %7, align 8
  %51 = getelementptr inbounds %struct.error_injection_entry, %struct.error_injection_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %54 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %57 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %59 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %58, i32 0, i32 2
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.ei_entry*, %struct.ei_entry** %8, align 8
  %62 = getelementptr inbounds %struct.ei_entry, %struct.ei_entry* %61, i32 0, i32 2
  %63 = call i32 @list_add_tail(i32* %62, i32* @error_injection_list)
  br label %64

64:                                               ; preds = %41, %31
  %65 = load %struct.error_injection_entry*, %struct.error_injection_entry** %7, align 8
  %66 = getelementptr inbounds %struct.error_injection_entry, %struct.error_injection_entry* %65, i32 1
  store %struct.error_injection_entry* %66, %struct.error_injection_entry** %7, align 8
  br label %14

67:                                               ; preds = %40, %14
  %68 = call i32 @mutex_unlock(i32* @ei_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @arch_deref_entry_point(i8*) #1

declare dso_local i32 @kernel_text_address(i64) #1

declare dso_local i32 @kallsyms_lookup_size_offset(i64, i64*, i64*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.ei_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
