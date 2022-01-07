; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_async_list_note.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_async_list_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, %struct.kiocb, %struct.TYPE_3__* }
%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.async_list* }
%struct.async_list = type { i64, %struct.file*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_READAHEAD_PAGES = common dso_local global i32 0, align 4
@REQ_F_SEQ_PREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.io_kiocb*, i64)* @io_async_list_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_async_list_note(i32 %0, %struct.io_kiocb* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.async_list*, align 8
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.io_kiocb* %1, %struct.io_kiocb** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %12 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.async_list*, %struct.async_list** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.async_list, %struct.async_list* %15, i64 %17
  store %struct.async_list* %18, %struct.async_list** %7, align 8
  %19 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %20 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %19, i32 0, i32 1
  store %struct.kiocb* %20, %struct.kiocb** %8, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 1
  %23 = load %struct.file*, %struct.file** %22, align 8
  store %struct.file* %23, %struct.file** %9, align 8
  %24 = load %struct.async_list*, %struct.async_list** %7, align 8
  %25 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %26 = call i64 @io_should_merge(%struct.async_list* %24, %struct.kiocb* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %3
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = add nsw i32 %33, 3
  %35 = shl i32 %32, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @VM_READAHEAD_PAGES, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = add nsw i32 %41, 3
  %43 = shl i32 %40, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %39, %28
  %46 = load %struct.async_list*, %struct.async_list** %7, align 8
  %47 = getelementptr inbounds %struct.async_list, %struct.async_list* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %10, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load i32, i32* @REQ_F_SEQ_PREV, align 4
  %55 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %56 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.async_list*, %struct.async_list** %7, align 8
  %61 = getelementptr inbounds %struct.async_list, %struct.async_list* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %67

64:                                               ; preds = %45
  %65 = load %struct.async_list*, %struct.async_list** %7, align 8
  %66 = getelementptr inbounds %struct.async_list, %struct.async_list* %65, i32 0, i32 1
  store %struct.file* null, %struct.file** %66, align 8
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.async_list*, %struct.async_list** %7, align 8
  %70 = getelementptr inbounds %struct.async_list, %struct.async_list* %69, i32 0, i32 1
  %71 = load %struct.file*, %struct.file** %70, align 8
  %72 = load %struct.file*, %struct.file** %9, align 8
  %73 = icmp ne %struct.file* %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %76 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.async_list*, %struct.async_list** %7, align 8
  %79 = getelementptr inbounds %struct.async_list, %struct.async_list* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.async_list*, %struct.async_list** %7, align 8
  %82 = getelementptr inbounds %struct.async_list, %struct.async_list* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.file*, %struct.file** %9, align 8
  %84 = load %struct.async_list*, %struct.async_list** %7, align 8
  %85 = getelementptr inbounds %struct.async_list, %struct.async_list* %84, i32 0, i32 1
  store %struct.file* %83, %struct.file** %85, align 8
  br label %86

86:                                               ; preds = %74, %68
  ret void
}

declare dso_local i64 @io_should_merge(%struct.async_list*, %struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
