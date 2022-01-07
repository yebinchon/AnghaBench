; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu.c_pcpu_addr_in_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu.c_pcpu_addr_in_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i32, i32, i8*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcpu_chunk*, i8*)* @pcpu_addr_in_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcpu_addr_in_chunk(%struct.pcpu_chunk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcpu_chunk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %9 = icmp ne %struct.pcpu_chunk* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

11:                                               ; preds = %2
  %12 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %13 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %16 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %21 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %24 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %22, i64 %28
  %30 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %31 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp uge i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %11
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ult i8* %41, %42
  br label %44

44:                                               ; preds = %40, %11
  %45 = phi i1 [ false, %11 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
