; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_get_symbol_from_table.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_get_symbol_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sym = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, %struct.sym*)* @get_symbol_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_symbol_from_table(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i8* %2, %struct.sym* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sym*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sym* %3, %struct.sym** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = bitcast %struct.TYPE_11__* %13 to i8*
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %12, align 8
  %21 = load %struct.sym*, %struct.sym** %8, align 8
  %22 = getelementptr inbounds %struct.sym, %struct.sym* %21, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = load %struct.sym*, %struct.sym** %8, align 8
  %24 = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.sym*, %struct.sym** %8, align 8
  %26 = getelementptr inbounds %struct.sym, %struct.sym* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_9__* @find_elf_symbol(%struct.TYPE_11__* %27, %struct.TYPE_10__* %28, i8* %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %81

34:                                               ; preds = %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %81

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sym*, %struct.sym** %8, align 8
  %50 = getelementptr inbounds %struct.sym, %struct.sym* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sym*, %struct.sym** %8, align 8
  %55 = getelementptr inbounds %struct.sym, %struct.sym* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sym*, %struct.sym** %8, align 8
  %57 = getelementptr inbounds %struct.sym, %struct.sym* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.sym*, %struct.sym** %8, align 8
  %68 = getelementptr inbounds %struct.sym, %struct.sym* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.sym*, %struct.sym** %8, align 8
  %71 = getelementptr inbounds %struct.sym, %struct.sym* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = bitcast %struct.TYPE_11__* %72 to i8*
  %74 = load %struct.sym*, %struct.sym** %8, align 8
  %75 = getelementptr inbounds %struct.sym, %struct.sym* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %73, i64 %77
  %79 = load %struct.sym*, %struct.sym** %8, align 8
  %80 = getelementptr inbounds %struct.sym, %struct.sym* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %41, %40, %33
  ret void
}

declare dso_local %struct.TYPE_9__* @find_elf_symbol(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
