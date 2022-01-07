; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ddebug_iter* }
%struct.ddebug_iter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct._ddebug = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"called m=%p p=%p\0A\00", align 1
@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"# filename:lineno [module]function flags format\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s:%u [%s]%s =%s \22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09\0D\0A\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ddebug_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ddebug_iter*, align 8
  %7 = alloca %struct._ddebug*, align 8
  %8 = alloca [10 x i8], align 1
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.ddebug_iter*, %struct.ddebug_iter** %10, align 8
  store %struct.ddebug_iter* %11, %struct.ddebug_iter** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct._ddebug*
  store %struct._ddebug* %13, %struct._ddebug** %7, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @vpr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.seq_file* %14, i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct._ddebug*, %struct._ddebug** %7, align 8
  %26 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trim_prefix(i32 %27)
  %29 = load %struct._ddebug*, %struct._ddebug** %7, align 8
  %30 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ddebug_iter*, %struct.ddebug_iter** %6, align 8
  %33 = getelementptr inbounds %struct.ddebug_iter, %struct.ddebug_iter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct._ddebug*, %struct._ddebug** %7, align 8
  %38 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct._ddebug*, %struct._ddebug** %7, align 8
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %42 = call i32 @ddebug_describe_flags(%struct._ddebug* %40, i8* %41, i32 10)
  %43 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %31, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct._ddebug*, %struct._ddebug** %7, align 8
  %46 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @seq_escape(%struct.seq_file* %44, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i32 @seq_puts(%struct.seq_file* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %23, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @vpr_info(i8*, %struct.seq_file*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trim_prefix(i32) #1

declare dso_local i32 @ddebug_describe_flags(%struct._ddebug*, i8*, i32) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
