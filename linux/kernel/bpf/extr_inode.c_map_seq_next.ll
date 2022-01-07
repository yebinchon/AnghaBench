; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_seq_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_seq_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.bpf_map = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.bpf_map*, i8*, i8*)* }
%struct.TYPE_4__ = type { i32, i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @map_seq_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_seq_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = call %struct.bpf_map* @seq_file_to_map(%struct.seq_file* %11)
  store %struct.bpf_map* %12, %struct.bpf_map** %8, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = call %struct.TYPE_4__* @map_iter(%struct.seq_file* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = call %struct.TYPE_4__* @map_iter(%struct.seq_file* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %53

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %26 = icmp eq i8* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8* null, i8** %10, align 8
  br label %33

31:                                               ; preds = %23
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %35 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64 (%struct.bpf_map*, i8*, i8*)*, i64 (%struct.bpf_map*, i8*, i8*)** %37, align 8
  %39 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 %38(%struct.bpf_map* %39, i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = call %struct.TYPE_4__* @map_iter(%struct.seq_file* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i8* null, i8** %4, align 8
  br label %53

48:                                               ; preds = %33
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i8*, i8** %9, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %48, %44, %22
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local %struct.bpf_map* @seq_file_to_map(%struct.seq_file*) #1

declare dso_local %struct.TYPE_4__* @map_iter(%struct.seq_file*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
