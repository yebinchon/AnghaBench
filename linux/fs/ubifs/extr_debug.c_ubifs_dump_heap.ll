; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_heap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_ubifs_dump_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.ubifs_lpt_heap = type { i32, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"(pid %d) start dumping heap cat %d (%d elements)\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"\09%d. LEB %d hpos %d free %d dirty %d flags %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"(pid %d) finish dumping heap\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_dump_heap(%struct.ubifs_info* %0, %struct.ubifs_lpt_heap* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lpt_heap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lpt_heap* %1, %struct.ubifs_lpt_heap** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %48, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %20 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %24, i32 0, i32 1
  %26 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %26, i64 %28
  %30 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %29, align 8
  store %struct.ubifs_lprops* %30, %struct.ubifs_lprops** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %33 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %42 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %45 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %23
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
