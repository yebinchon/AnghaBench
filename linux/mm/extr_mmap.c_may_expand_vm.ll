; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_may_expand_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_may_expand_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i64, i64 }

@RLIMIT_AS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ignore_rlimit_data = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [39 x i8] c" or use boot option ignore_rlimit_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_expand_vm(%struct.mm_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %10, %11
  %13 = load i32, i32* @RLIMIT_AS, align 4
  %14 = call i64 @rlimit(i32 %13)
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = zext i32 %15 to i64
  %17 = ashr i64 %14, %16
  %18 = icmp ugt i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @is_data_mapping(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = load i32, i32* @RLIMIT_DATA, align 4
  %31 = call i64 @rlimit(i32 %30)
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = zext i32 %32 to i64
  %34 = ashr i64 %31, %33
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %24
  %37 = load i32, i32* @RLIMIT_DATA, align 4
  %38 = call i64 @rlimit(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @RLIMIT_DATA, align 4
  %47 = call i64 @rlimit_max(i32 %46)
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = zext i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = icmp ule i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %80

53:                                               ; preds = %40, %36
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 %64, %66
  %68 = load i32, i32* @RLIMIT_DATA, align 4
  %69 = call i64 @rlimit(i32 %68)
  %70 = load i64, i64* @ignore_rlimit_data, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @pr_warn_once(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i64 %67, i64 %69, i8* %73)
  %75 = load i64, i64* @ignore_rlimit_data, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %80

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %24, %20
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %52, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @is_data_mapping(i32) #1

declare dso_local i64 @rlimit_max(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
