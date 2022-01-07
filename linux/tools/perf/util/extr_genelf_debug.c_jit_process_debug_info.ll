; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_jit_process_debug_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_jit_process_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i32 }
%struct.debug_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, %struct.buffer_ext*, %struct.buffer_ext*, %struct.buffer_ext*)* @jit_process_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_process_debug_info(i64 %0, i8* %1, i32 %2, %struct.buffer_ext* %3, %struct.buffer_ext* %4, %struct.buffer_ext* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_ext*, align 8
  %11 = alloca %struct.buffer_ext*, align 8
  %12 = alloca %struct.buffer_ext*, align 8
  %13 = alloca %struct.debug_entry*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buffer_ext* %3, %struct.buffer_ext** %10, align 8
  store %struct.buffer_ext* %4, %struct.buffer_ext** %11, align 8
  store %struct.buffer_ext* %5, %struct.buffer_ext** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.debug_entry*
  store %struct.debug_entry* %16, %struct.debug_entry** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %31, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.debug_entry*, %struct.debug_entry** %13, align 8
  %23 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load %struct.debug_entry*, %struct.debug_entry** %13, align 8
  %28 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.debug_entry*, %struct.debug_entry** %13, align 8
  %30 = call %struct.debug_entry* @debug_entry_next(%struct.debug_entry* %29)
  store %struct.debug_entry* %30, %struct.debug_entry** %13, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.buffer_ext*, %struct.buffer_ext** %12, align 8
  %36 = load %struct.buffer_ext*, %struct.buffer_ext** %10, align 8
  %37 = call i32 @buffer_ext_size(%struct.buffer_ext* %36)
  %38 = call i32 @add_compilation_unit(%struct.buffer_ext* %35, i32 %37)
  %39 = load %struct.buffer_ext*, %struct.buffer_ext** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @add_debug_line(%struct.buffer_ext* %39, i8* %40, i32 %41, i32 0)
  %43 = load %struct.buffer_ext*, %struct.buffer_ext** %11, align 8
  %44 = call i32 @add_debug_abbrev(%struct.buffer_ext* %43)
  ret i32 0
}

declare dso_local %struct.debug_entry* @debug_entry_next(%struct.debug_entry*) #1

declare dso_local i32 @add_compilation_unit(%struct.buffer_ext*, i32) #1

declare dso_local i32 @buffer_ext_size(%struct.buffer_ext*) #1

declare dso_local i32 @add_debug_line(%struct.buffer_ext*, i8*, i32, i32) #1

declare dso_local i32 @add_debug_abbrev(%struct.buffer_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
