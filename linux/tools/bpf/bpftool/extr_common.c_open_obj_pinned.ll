; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_open_obj_pinned.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_open_obj_pinned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"bpf obj get (%s): %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"directory not in bpf file system (bpffs)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_obj_pinned(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @bpf_obj_get(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EACCES, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @dirname(i8* %20)
  %22 = call i32 @is_bpffs(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %28

25:                                               ; preds = %19, %14
  %26 = load i64, i64* @errno, align 8
  %27 = call i8* @strerror(i64 %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i8* [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %24 ], [ %27, %25 ]
  %30 = call i32 @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %29)
  br label %31

31:                                               ; preds = %28, %11
  store i32 -1, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @bpf_obj_get(i8*) #1

declare dso_local i32 @p_err(i8*, i8*, i8*) #1

declare dso_local i32 @is_bpffs(i32) #1

declare dso_local i32 @dirname(i8*) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
