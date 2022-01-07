; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c___do_pipe_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c___do_pipe_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.file**, i32)* @__do_pipe_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_pipe_flags(i32* %0, %struct.file** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.file**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.file** %1, %struct.file*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = load i32, i32* @O_NONBLOCK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @O_DIRECT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load %struct.file**, %struct.file*** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @create_pipe_files(%struct.file** %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_unused_fd_flags(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @get_unused_fd_flags(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @audit_fd_pair(i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %68

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @put_unused_fd(i32 %56)
  br label %58

58:                                               ; preds = %55, %36
  %59 = load %struct.file**, %struct.file*** %6, align 8
  %60 = getelementptr inbounds %struct.file*, %struct.file** %59, i64 0
  %61 = load %struct.file*, %struct.file** %60, align 8
  %62 = call i32 @fput(%struct.file* %61)
  %63 = load %struct.file**, %struct.file*** %6, align 8
  %64 = getelementptr inbounds %struct.file*, %struct.file** %63, i64 1
  %65 = load %struct.file*, %struct.file** %64, align 8
  %66 = call i32 @fput(%struct.file* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %58, %44, %29, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @create_pipe_files(%struct.file**, i32) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @audit_fd_pair(i32, i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
