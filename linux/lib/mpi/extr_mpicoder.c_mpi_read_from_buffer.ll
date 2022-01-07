; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_from_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@MAX_EXTERN_MPI_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MPI: mpi too large (%u bits)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"MPI: mpi larger than buffer nbytes=%u ret_nread=%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_read_from_buffer(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @ERR_PTR(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX_EXTERN_MPI_BITS, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @ERR_PTR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %38, i32 8)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 2
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @ERR_PTR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %37
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mpi_read_raw_data(i32* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @ERR_PTR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 2
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %60, %45, %31, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mpi_read_raw_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
