; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__pushfn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__pushfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap = type { i8* }
%struct.record = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmap*, i8*, i8*, i64)* @record__pushfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record__pushfn(%struct.mmap* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.record*, align 8
  store %struct.mmap* %0, %struct.mmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.record*
  store %struct.record* %11, %struct.record** %9, align 8
  %12 = load %struct.record*, %struct.record** %9, align 8
  %13 = call i64 @record__comp_enabled(%struct.record* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load %struct.record*, %struct.record** %9, align 8
  %17 = getelementptr inbounds %struct.record, %struct.record* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mmap*, %struct.mmap** %5, align 8
  %20 = getelementptr inbounds %struct.mmap, %struct.mmap* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.mmap*, %struct.mmap** %5, align 8
  %23 = call i32 @perf_mmap__mmap_len(%struct.mmap* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @zstd_compress(i32 %18, i8* %21, i32 %23, i8* %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mmap*, %struct.mmap** %5, align 8
  %28 = getelementptr inbounds %struct.mmap, %struct.mmap* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %15, %4
  %31 = load %struct.record*, %struct.record** %9, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.record*, %struct.record** %9, align 8
  %36 = load %struct.mmap*, %struct.mmap** %5, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @record__write(%struct.record* %35, %struct.mmap* %36, i8* %37, i64 %38)
  ret i32 %39
}

declare dso_local i64 @record__comp_enabled(%struct.record*) #1

declare dso_local i64 @zstd_compress(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @perf_mmap__mmap_len(%struct.mmap*) #1

declare dso_local i32 @record__write(%struct.record*, %struct.mmap*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
