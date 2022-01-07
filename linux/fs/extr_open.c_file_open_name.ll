; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_file_open_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_file_open_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.filename = type { i32 }
%struct.open_flags = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @file_open_name(%struct.filename* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.filename*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.open_flags, align 4
  %8 = alloca i32, align 4
  store %struct.filename* %0, %struct.filename** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @build_open_flags(i32 %9, i32 %10, %struct.open_flags* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.file* @ERR_PTR(i32 %15)
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @AT_FDCWD, align 4
  %19 = load %struct.filename*, %struct.filename** %4, align 8
  %20 = call %struct.file* @do_filp_open(i32 %18, %struct.filename* %19, %struct.open_flags* %7)
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi %struct.file* [ %16, %14 ], [ %20, %17 ]
  ret %struct.file* %22
}

declare dso_local i32 @build_open_flags(i32, i32, %struct.open_flags*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local %struct.file* @do_filp_open(i32, %struct.filename*, %struct.open_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
