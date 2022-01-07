; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_update_extent_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_update_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.migrate_struct = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, %struct.migrate_struct*)* @update_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_extent_range(i32* %0, %struct.inode* %1, i64 %2, %struct.migrate_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.migrate_struct*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.migrate_struct* %3, %struct.migrate_struct** %9, align 8
  %11 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %12 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %4
  %16 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %17 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %24 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %28 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %34 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %36 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %39 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %41 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  store i32 0, i32* %5, align 4
  br label %66

44:                                               ; preds = %22, %15, %4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %48 = call i32 @finish_range(i32* %45, %struct.inode* %46, %struct.migrate_struct* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %51 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %53 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %55 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %58 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %60 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %59, i32 0, i32 4
  store i64 %56, i64* %60, align 8
  %61 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %62 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %44, %31
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @finish_range(i32*, %struct.inode*, %struct.migrate_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
