; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_seq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @kernfs_seq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernfs_seq_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  store %struct.kernfs_open_file* %8, %struct.kernfs_open_file** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i8* @ERR_PTR(i32 %11)
  %13 = icmp ne i8* %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @kernfs_seq_stop_active(%struct.seq_file* %15, i8* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %20 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @kernfs_seq_stop_active(%struct.seq_file*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
