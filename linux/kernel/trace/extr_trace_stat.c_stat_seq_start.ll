; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_stat_seq_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_stat_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.stat_session* }
%struct.stat_session = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rb_node = type opaque

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @stat_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stat_seq_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat_session*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.stat_session*, %struct.stat_session** %11, align 8
  store %struct.stat_session* %12, %struct.stat_session** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.stat_session*, %struct.stat_session** %6, align 8
  %16 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.stat_session*, %struct.stat_session** %6, align 8
  %19 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** @SEQ_START_TOKEN, align 8
  store i8* %28, i8** %3, align 8
  br label %57

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.stat_session*, %struct.stat_session** %6, align 8
  %34 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %33, i32 0, i32 0
  %35 = call i8* @rb_first(i32* %34)
  %36 = bitcast i8* %35 to %struct.rb_node*
  store %struct.rb_node* %36, %struct.rb_node** %7, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %51, %32
  %38 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %39 = icmp ne %struct.rb_node* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %48 = bitcast %struct.rb_node* %47 to i8*
  %49 = call i8* @rb_next(i8* %48)
  %50 = bitcast i8* %49 to %struct.rb_node*
  store %struct.rb_node* %50, %struct.rb_node** %7, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %37

54:                                               ; preds = %44
  %55 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %56 = bitcast %struct.rb_node* %55 to i8*
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %54, %27
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @rb_first(i32*) #1

declare dso_local i8* @rb_next(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
