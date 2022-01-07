; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_file_check_and_advance_wb_err.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_file_check_and_advance_wb_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.address_space* }
%struct.address_space = type { i32, i32 }

@AS_EIO = common dso_local global i32 0, align 4
@AS_ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_check_and_advance_wb_err(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @READ_ONCE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %5, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @errseq_check(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.file*, %struct.file** %2, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.address_space*, %struct.address_space** %5, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 1
  %27 = load %struct.file*, %struct.file** %2, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = call i32 @errseq_check_and_advance(i32* %26, i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.file*, %struct.file** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @trace_file_check_and_advance_wb_err(%struct.file* %30, i32 %31)
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %18, %1
  %37 = load i32, i32* @AS_EIO, align 4
  %38 = load %struct.address_space*, %struct.address_space** %5, align 8
  %39 = getelementptr inbounds %struct.address_space, %struct.address_space* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load i32, i32* @AS_ENOSPC, align 4
  %42 = load %struct.address_space*, %struct.address_space** %5, align 8
  %43 = getelementptr inbounds %struct.address_space, %struct.address_space* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @errseq_check(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @errseq_check_and_advance(i32*, i32*) #1

declare dso_local i32 @trace_file_check_and_advance_wb_err(%struct.file*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
