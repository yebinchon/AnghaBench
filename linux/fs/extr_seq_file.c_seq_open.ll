; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.seq_file* }
%struct.seq_file = type { %struct.file*, %struct.seq_operations*, i32 }
%struct.seq_operations = type { i32 }

@seq_file_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_PWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_open(%struct.file* %0, %struct.seq_operations* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_operations*, align 8
  %6 = alloca %struct.seq_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.seq_operations* %1, %struct.seq_operations** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 2
  %9 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %10 = call i32 @WARN_ON(%struct.seq_file* %9)
  %11 = load i32, i32* @seq_file_cache, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.seq_file* @kmem_cache_zalloc(i32 %11, i32 %12)
  store %struct.seq_file* %13, %struct.seq_file** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %15 = icmp ne %struct.seq_file* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 2
  store %struct.seq_file* %20, %struct.seq_file** %22, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %24 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %23, i32 0, i32 2
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.seq_operations*, %struct.seq_operations** %5, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 1
  store %struct.seq_operations* %26, %struct.seq_operations** %28, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %31 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %30, i32 0, i32 0
  store %struct.file* %29, %struct.file** %31, align 8
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @FMODE_PWRITE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %19, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(%struct.seq_file*) #1

declare dso_local %struct.seq_file* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
