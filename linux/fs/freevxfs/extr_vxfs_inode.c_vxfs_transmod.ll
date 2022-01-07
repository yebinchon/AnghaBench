; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_inode.c_vxfs_transmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_inode.c_vxfs_transmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_inode_info = type { i32 }

@VXFS_TYPE_MASK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxfs_inode_info*)* @vxfs_transmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxfs_transmod(%struct.vxfs_inode_info* %0) #0 {
  %2 = alloca %struct.vxfs_inode_info*, align 8
  %3 = alloca i32, align 4
  store %struct.vxfs_inode_info* %0, %struct.vxfs_inode_info** %2, align 8
  %4 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VXFS_TYPE_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %11 = call i64 @VXFS_ISFIFO(%struct.vxfs_inode_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @S_IFIFO, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %19 = call i64 @VXFS_ISCHR(%struct.vxfs_inode_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @S_IFCHR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %27 = call i64 @VXFS_ISDIR(%struct.vxfs_inode_info* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @S_IFDIR, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %35 = call i64 @VXFS_ISBLK(%struct.vxfs_inode_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @S_IFBLK, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %43 = call i64 @VXFS_ISLNK(%struct.vxfs_inode_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @S_IFLNK, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %51 = call i64 @VXFS_ISREG(%struct.vxfs_inode_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @S_IFREG, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %2, align 8
  %59 = call i64 @VXFS_ISSOC(%struct.vxfs_inode_info* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @S_IFSOCK, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @VXFS_ISFIFO(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISCHR(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISDIR(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISBLK(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISLNK(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISREG(%struct.vxfs_inode_info*) #1

declare dso_local i64 @VXFS_ISSOC(%struct.vxfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
