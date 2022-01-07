; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_get_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpi_get_buffer(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %43

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mpi_get_size(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %43

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @mpi_read_buffer(i32 %30, i8* %31, i32 %32, i32* %33, i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @kfree(i8* %39)
  store i8* null, i8** %4, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %41, %38, %28, %13
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i32 @mpi_get_size(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mpi_read_buffer(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
