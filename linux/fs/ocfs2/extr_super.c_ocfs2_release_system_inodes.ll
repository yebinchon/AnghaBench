; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_release_system_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_release_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode**, %struct.inode*, %struct.inode*, %struct.inode** }
%struct.inode = type { i32 }

@NUM_GLOBAL_SYSTEM_INODES = common dso_local global i32 0, align 4
@NUM_LOCAL_SYSTEM_INODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_release_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_release_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_GLOBAL_SYSTEM_INODES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 4
  %12 = load %struct.inode**, %struct.inode*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.inode*, %struct.inode** %12, i64 %14
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %9
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @iput(%struct.inode* %20)
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 4
  %24 = load %struct.inode**, %struct.inode*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.inode*, %struct.inode** %24, i64 %26
  store %struct.inode* null, %struct.inode** %27, align 8
  br label %28

28:                                               ; preds = %19, %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 3
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  store %struct.inode* %35, %struct.inode** %4, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @iput(%struct.inode* %39)
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 3
  store %struct.inode* null, %struct.inode** %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 2
  %46 = load %struct.inode*, %struct.inode** %45, align 8
  store %struct.inode* %46, %struct.inode** %4, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @iput(%struct.inode* %50)
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %53 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %52, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %53, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 1
  %57 = load %struct.inode**, %struct.inode*** %56, align 8
  %58 = icmp ne %struct.inode** %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %104

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @NUM_LOCAL_SYSTEM_INODES, align 4
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %65 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %61
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %71 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %70, i32 0, i32 1
  %72 = load %struct.inode**, %struct.inode*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.inode*, %struct.inode** %72, i64 %74
  %76 = load %struct.inode*, %struct.inode** %75, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %80 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %79, i32 0, i32 1
  %81 = load %struct.inode**, %struct.inode*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.inode*, %struct.inode** %81, i64 %83
  %85 = load %struct.inode*, %struct.inode** %84, align 8
  %86 = call i32 @iput(%struct.inode* %85)
  %87 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %88 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %87, i32 0, i32 1
  %89 = load %struct.inode**, %struct.inode*** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.inode*, %struct.inode** %89, i64 %91
  store %struct.inode* null, %struct.inode** %92, align 8
  br label %93

93:                                               ; preds = %78, %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %61

97:                                               ; preds = %61
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 1
  %100 = load %struct.inode**, %struct.inode*** %99, align 8
  %101 = call i32 @kfree(%struct.inode** %100)
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %103 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %102, i32 0, i32 1
  store %struct.inode** null, %struct.inode*** %103, align 8
  br label %104

104:                                              ; preds = %97, %59
  ret void
}

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.inode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
