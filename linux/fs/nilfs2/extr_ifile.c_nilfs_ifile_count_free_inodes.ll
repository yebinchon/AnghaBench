; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_count_free_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_count_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ifile_count_free_inodes(%struct.inode* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_4__* @NILFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @atomic64_read(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @nilfs_palloc_count_max_entries(%struct.inode* %17, i64 %18, i64* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local %struct.TYPE_4__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_count_max_entries(%struct.inode*, i64, i64*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
