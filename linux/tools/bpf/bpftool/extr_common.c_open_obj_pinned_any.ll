; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_open_obj_pinned_any.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_open_obj_pinned_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"incorrect object type: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_obj_pinned_any(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @open_obj_pinned(i8* %8, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_fd_type(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @close(i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @get_fd_type_name(i32 %27)
  %29 = call i32 @p_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %3, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %26, %18, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @open_obj_pinned(i8*, i32) #1

declare dso_local i32 @get_fd_type(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @p_err(i8*, i32) #1

declare dso_local i32 @get_fd_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
