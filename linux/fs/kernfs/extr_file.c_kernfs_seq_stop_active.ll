; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_stop_active.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_stop_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { i32 }
%struct.kernfs_ops = type { i32 (%struct.seq_file*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @kernfs_seq_stop_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernfs_seq_stop_active(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca %struct.kernfs_ops*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %8, align 8
  store %struct.kernfs_open_file* %9, %struct.kernfs_open_file** %5, align 8
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %11 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.kernfs_ops* @kernfs_ops(i32 %12)
  store %struct.kernfs_ops* %13, %struct.kernfs_ops** %6, align 8
  %14 = load %struct.kernfs_ops*, %struct.kernfs_ops** %6, align 8
  %15 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.seq_file*, i8*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.kernfs_ops*, %struct.kernfs_ops** %6, align 8
  %20 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %20, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 %21(%struct.seq_file* %22, i8* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %27 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kernfs_put_active(i32 %28)
  ret void
}

declare dso_local %struct.kernfs_ops* @kernfs_ops(i32) #1

declare dso_local i32 @kernfs_put_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
