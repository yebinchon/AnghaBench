; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_create_cpu_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_create_cpu_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, i64, %struct.file_operations*)* @trace_create_cpu_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @trace_create_cpu_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, i64 %4, %struct.file_operations* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.file_operations* %5, %struct.file_operations** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %19 = call %struct.dentry* @trace_create_file(i8* %14, i32 %15, %struct.dentry* %16, i8* %17, %struct.file_operations* %18)
  store %struct.dentry* %19, %struct.dentry** %13, align 8
  %20 = load %struct.dentry*, %struct.dentry** %13, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %23, 1
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.dentry*, %struct.dentry** %13, align 8
  %27 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %29

29:                                               ; preds = %22, %6
  %30 = load %struct.dentry*, %struct.dentry** %13, align 8
  ret %struct.dentry* %30
}

declare dso_local %struct.dentry* @trace_create_file(i8*, i32, %struct.dentry*, i8*, %struct.file_operations*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
