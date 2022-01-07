; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_option_core_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_option_core_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.trace_array = type { i32* }

@trace_options_core_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.trace_array*, i8*, i64)* @create_trace_option_core_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @create_trace_option_core_file(%struct.trace_array* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %10 = call %struct.dentry* @trace_options_init_dentry(%struct.trace_array* %9)
  store %struct.dentry* %10, %struct.dentry** %8, align 8
  %11 = load %struct.dentry*, %struct.dentry** %8, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %24

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %18 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = bitcast i32* %21 to i8*
  %23 = call %struct.dentry* @trace_create_file(i8* %15, i32 420, %struct.dentry* %16, i8* %22, i32* @trace_options_core_fops)
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %25
}

declare dso_local %struct.dentry* @trace_options_init_dentry(%struct.trace_array*) #1

declare dso_local %struct.dentry* @trace_create_file(i8*, i32, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
