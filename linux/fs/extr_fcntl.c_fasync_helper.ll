; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_helper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fasync_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasync_helper(i32 %0, %struct.file* %1, i32 %2, %struct.fasync_struct** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fasync_struct**, align 8
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fasync_struct** %3, %struct.fasync_struct*** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load %struct.file*, %struct.file** %7, align 8
  %14 = load %struct.fasync_struct**, %struct.fasync_struct*** %9, align 8
  %15 = call i32 @fasync_remove_entry(%struct.file* %13, %struct.fasync_struct** %14)
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = load %struct.fasync_struct**, %struct.fasync_struct*** %9, align 8
  %20 = call i32 @fasync_add_entry(i32 %17, %struct.file* %18, %struct.fasync_struct** %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @fasync_remove_entry(%struct.file*, %struct.fasync_struct**) #1

declare dso_local i32 @fasync_add_entry(i32, %struct.file*, %struct.fasync_struct**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
