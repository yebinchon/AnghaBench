; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.bpf_map = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.bpf_map*, i8*, %struct.seq_file*)* }
%struct.TYPE_4__ = type { i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"# WARNING!! The output is for debug purpose only\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"# WARNING!! The output format will change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @map_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call %struct.bpf_map* @seq_file_to_map(%struct.seq_file* %7)
  store %struct.bpf_map* %8, %struct.bpf_map** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call %struct.TYPE_4__* @map_iter(%struct.seq_file* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, i8*, %struct.seq_file*)** %28, align 8
  %30 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 %29(%struct.bpf_map* %30, i8* %31, %struct.seq_file* %32)
  br label %34

34:                                               ; preds = %24, %19
  ret i32 0
}

declare dso_local %struct.bpf_map* @seq_file_to_map(%struct.seq_file*) #1

declare dso_local %struct.TYPE_4__* @map_iter(%struct.seq_file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
