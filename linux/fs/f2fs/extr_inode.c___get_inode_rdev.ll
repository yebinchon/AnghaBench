; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___get_inode_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___get_inode_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.f2fs_inode = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_inode*)* @__get_inode_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_inode_rdev(%struct.inode* %0, %struct.f2fs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @get_extra_isize(%struct.inode* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISCHR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISBLK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISFIFO(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISSOCK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %25, %19, %13, %2
  %32 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %33 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %42 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  %49 = call i32 @old_decode_dev(i32 %48)
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %65

52:                                               ; preds = %31
  %53 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %54 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @le32_to_cpu(i64 %60)
  %62 = call i32 @new_decode_dev(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %52, %40
  br label %66

66:                                               ; preds = %65, %25
  ret void
}

declare dso_local i32 @get_extra_isize(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @new_decode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
