; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_err_log_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_err_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.file = type { i32, i32, %struct.seq_file* }
%struct.seq_file = type { %struct.trace_array* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@tracing_err_log_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_err_log_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_err_log_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %13 = call i32 @tracing_check_open_get_tr(%struct.trace_array* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FMODE_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_TRUNC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %34 = call i32 @clear_tracing_err_log(%struct.trace_array* %33)
  br label %35

35:                                               ; preds = %32, %25, %18
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FMODE_READ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = call i32 @seq_open(%struct.file* %43, i32* @tracing_err_log_seq_ops)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 2
  %50 = load %struct.seq_file*, %struct.seq_file** %49, align 8
  store %struct.seq_file* %50, %struct.seq_file** %8, align 8
  %51 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %52 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %53 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %52, i32 0, i32 0
  store %struct.trace_array* %51, %struct.trace_array** %53, align 8
  br label %57

54:                                               ; preds = %42
  %55 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %56 = call i32 @trace_array_put(%struct.trace_array* %55)
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local i32 @clear_tracing_err_log(%struct.trace_array*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
