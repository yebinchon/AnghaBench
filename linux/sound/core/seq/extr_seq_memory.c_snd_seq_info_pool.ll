; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_info_pool.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_info_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.snd_seq_pool = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%sPool size          : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%sCells in use       : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%sPeak cells in use  : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%sAlloc success      : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%sAlloc failures     : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_info_pool(%struct.snd_info_buffer* %0, %struct.snd_seq_pool* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_seq_pool*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.snd_seq_pool* %1, %struct.snd_seq_pool** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %8 = icmp eq %struct.snd_seq_pool* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %41

10:                                               ; preds = %3
  %11 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %14 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_iprintf(%struct.snd_info_buffer* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %15)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %20 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %19, i32 0, i32 3
  %21 = call i32 @atomic_read(i32* %20)
  %22 = call i32 @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %21)
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %26 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %27)
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %32 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %33)
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %5, align 8
  %38 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32 %39)
  br label %41

41:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
