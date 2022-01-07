; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dinode = type { i32, i32 }
%struct.xfs_mount = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@MAXAEXTNUM = common dso_local global i32 0, align 4
@MAXEXTNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_dinode*, %struct.xfs_mount*, i32)* @xfs_dinode_verify_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dinode_verify_fork(%struct.xfs_dinode* %0, %struct.xfs_mount* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfs_dinode*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_dinode* %0, %struct.xfs_dinode** %5, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @XFS_DFORK_NEXTENTS(%struct.xfs_dinode* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @XFS_DFORK_FORMAT(%struct.xfs_dinode* %12, i32 %13)
  switch i32 %14, label %76 [
    i32 128, label %15
    i32 129, label %47
    i32 130, label %57
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @XFS_DATA_FORK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32*, i32** @__this_address, align 8
  store i32* %27, i32** %4, align 8
  br label %79

28:                                               ; preds = %19
  %29 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  %33 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @XFS_DFORK_SIZE(%struct.xfs_dinode* %33, %struct.xfs_mount* %34, i32 %35)
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32*, i32** @__this_address, align 8
  store i32* %39, i32** %4, align 8
  br label %79

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** @__this_address, align 8
  store i32* %45, i32** %4, align 8
  br label %79

46:                                               ; preds = %41
  br label %78

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @XFS_DFORK_MAXEXT(%struct.xfs_dinode* %49, %struct.xfs_mount* %50, i32 %51)
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** @__this_address, align 8
  store i32* %55, i32** %4, align 8
  br label %79

56:                                               ; preds = %47
  br label %78

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @XFS_ATTR_FORK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAXAEXTNUM, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32*, i32** @__this_address, align 8
  store i32* %66, i32** %4, align 8
  br label %79

67:                                               ; preds = %61
  br label %75

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MAXEXTNUM, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32*, i32** @__this_address, align 8
  store i32* %73, i32** %4, align 8
  br label %79

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %67
  br label %78

76:                                               ; preds = %3
  %77 = load i32*, i32** @__this_address, align 8
  store i32* %77, i32** %4, align 8
  br label %79

78:                                               ; preds = %75, %56, %46
  store i32* null, i32** %4, align 8
  br label %79

79:                                               ; preds = %78, %76, %72, %65, %54, %44, %38, %26
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @XFS_DFORK_NEXTENTS(%struct.xfs_dinode*, i32) #1

declare dso_local i32 @XFS_DFORK_FORMAT(%struct.xfs_dinode*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @XFS_DFORK_SIZE(%struct.xfs_dinode*, %struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_DFORK_MAXEXT(%struct.xfs_dinode*, %struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
