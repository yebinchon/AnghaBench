; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_gcov_seq_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_gcov_seq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.gcov_iterator* }
%struct.gcov_iterator = type { i32 }
%struct.gcov_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gcov_seq_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcov_seq_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gcov_iterator*, align 8
  %6 = alloca %struct.gcov_info*, align 8
  %7 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  store %struct.seq_file* %10, %struct.seq_file** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.gcov_iterator*, %struct.gcov_iterator** %12, align 8
  store %struct.gcov_iterator* %13, %struct.gcov_iterator** %5, align 8
  %14 = load %struct.gcov_iterator*, %struct.gcov_iterator** %5, align 8
  %15 = call %struct.gcov_info* @gcov_iter_get_info(%struct.gcov_iterator* %14)
  store %struct.gcov_info* %15, %struct.gcov_info** %6, align 8
  %16 = load %struct.gcov_iterator*, %struct.gcov_iterator** %5, align 8
  %17 = call i32 @gcov_iter_free(%struct.gcov_iterator* %16)
  %18 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %19 = call i32 @gcov_info_free(%struct.gcov_info* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i32 @seq_release(%struct.inode* %20, %struct.file* %21)
  ret i32 0
}

declare dso_local %struct.gcov_info* @gcov_iter_get_info(%struct.gcov_iterator*) #1

declare dso_local i32 @gcov_iter_free(%struct.gcov_iterator*) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
