; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocAny.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocAny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, i32, i32, %struct.inode*)* @diAllocAny to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diAllocAny(%struct.inomap* %0, i32 %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inomap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inomap* %0, %struct.inomap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.inode* %3, %struct.inode** %9, align 8
  %13 = load %struct.inomap*, %struct.inomap** %6, align 8
  %14 = getelementptr inbounds %struct.inomap, %struct.inomap* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_6__* @JFS_SBI(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %48, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load %struct.inomap*, %struct.inomap** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @AG_LOCK(%struct.inomap* %30, i32 %31)
  %33 = load %struct.inomap*, %struct.inomap** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @diAllocAG(%struct.inomap* %33, i32 %34, i32 %35, %struct.inode* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.inomap*, %struct.inomap** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @AG_UNLOCK(%struct.inomap* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %81

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %25

51:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %75, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load %struct.inomap*, %struct.inomap** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @AG_LOCK(%struct.inomap* %57, i32 %58)
  %60 = load %struct.inomap*, %struct.inomap** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @diAllocAG(%struct.inomap* %60, i32 %61, i32 %62, %struct.inode* %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.inomap*, %struct.inomap** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @AG_UNLOCK(%struct.inomap* %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %72, %45
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_6__* @JFS_SBI(i32) #1

declare dso_local i32 @AG_LOCK(%struct.inomap*, i32) #1

declare dso_local i32 @diAllocAG(%struct.inomap*, i32, i32, %struct.inode*) #1

declare dso_local i32 @AG_UNLOCK(%struct.inomap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
