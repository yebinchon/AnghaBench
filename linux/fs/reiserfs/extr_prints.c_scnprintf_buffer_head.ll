; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_buffer_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_buffer_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"dev %pg, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UPTODATE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"!UPTODATE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DIRTY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CLEAN\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNLOCKED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.buffer_head*)* @scnprintf_buffer_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scnprintf_buffer_head(i8* %0, i64 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 2
  %20 = call i32 @atomic_read(i32* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = call i64 @buffer_uptodate(%struct.buffer_head* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = call i64 @buffer_dirty(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = call i64 @buffer_locked(%struct.buffer_head* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %42 = call i32 @scnprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i64 %17, i32 %20, i32 %23, i32 %26, i8* %31, i8* %36, i8* %41)
  ret i32 %42
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
