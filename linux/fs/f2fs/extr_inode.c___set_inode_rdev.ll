; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___set_inode_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___set_inode_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.f2fs_inode = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_inode*)* @__set_inode_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_inode_rdev(%struct.inode* %0, %struct.f2fs_inode* %1) #0 {
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
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISBLK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %13, %2
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @old_valid_dev(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @old_encode_dev(i32 %28)
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %32 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %38 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  store i8* null, i8** %43, align 8
  br label %70

44:                                               ; preds = %19
  %45 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %46 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* null, i8** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @new_encode_dev(i32 %53)
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %57 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %55, i8** %62, align 8
  %63 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %64 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %44, %25
  br label %71

71:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @get_extra_isize(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
