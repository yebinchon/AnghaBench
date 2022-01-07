; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_ftrace_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_ftrace_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.pstore_private* }
%struct.pstore_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pstore_ftrace_seq_data = type { i64 }
%struct.pstore_ftrace_record = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"CPU:%d ts:%llu %08lx  %08lx  %ps <- %pS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pstore_ftrace_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pstore_ftrace_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pstore_private*, align 8
  %6 = alloca %struct.pstore_ftrace_seq_data*, align 8
  %7 = alloca %struct.pstore_ftrace_record*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.pstore_private*, %struct.pstore_private** %9, align 8
  store %struct.pstore_private* %10, %struct.pstore_private** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pstore_ftrace_seq_data*
  store %struct.pstore_ftrace_seq_data* %12, %struct.pstore_ftrace_seq_data** %6, align 8
  %13 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %14 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pstore_ftrace_seq_data*, %struct.pstore_ftrace_seq_data** %6, align 8
  %19 = getelementptr inbounds %struct.pstore_ftrace_seq_data, %struct.pstore_ftrace_seq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = inttoptr i64 %21 to %struct.pstore_ftrace_record*
  store %struct.pstore_ftrace_record* %22, %struct.pstore_ftrace_record** %7, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %25 = call i32 @pstore_ftrace_decode_cpu(%struct.pstore_ftrace_record* %24)
  %26 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %27 = call i32 @pstore_ftrace_read_timestamp(%struct.pstore_ftrace_record* %26)
  %28 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %29 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %32 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %35 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %7, align 8
  %39 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i64 %30, i64 %33, i8* %37, i8* %41)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i64, i64, i8*, i8*) #1

declare dso_local i32 @pstore_ftrace_decode_cpu(%struct.pstore_ftrace_record*) #1

declare dso_local i32 @pstore_ftrace_read_timestamp(%struct.pstore_ftrace_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
