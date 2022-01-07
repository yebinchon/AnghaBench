; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpffs_map_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpffs_map_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.bpf_map* }
%struct.bpf_map = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.map_iter* }
%struct.map_iter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@bpffs_map_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bpffs_map_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpffs_map_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca %struct.map_iter*, align 8
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  store %struct.bpf_map* %12, %struct.bpf_map** %6, align 8
  %13 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %14 = call %struct.map_iter* @map_iter_alloc(%struct.bpf_map* %13)
  store %struct.map_iter* %14, %struct.map_iter** %7, align 8
  %15 = load %struct.map_iter*, %struct.map_iter** %7, align 8
  %16 = icmp ne %struct.map_iter* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @seq_open(%struct.file* %21, i32* @bpffs_map_seq_ops)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.map_iter*, %struct.map_iter** %7, align 8
  %27 = call i32 @map_iter_free(%struct.map_iter* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load %struct.seq_file*, %struct.seq_file** %31, align 8
  store %struct.seq_file* %32, %struct.seq_file** %8, align 8
  %33 = load %struct.map_iter*, %struct.map_iter** %7, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %35 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %34, i32 0, i32 0
  store %struct.map_iter* %33, %struct.map_iter** %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %25, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.map_iter* @map_iter_alloc(%struct.bpf_map*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @map_iter_free(%struct.map_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
