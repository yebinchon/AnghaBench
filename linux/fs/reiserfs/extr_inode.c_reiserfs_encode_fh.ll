; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FILEID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.inode*, %struct.inode** %9, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  store i32 5, i32* %19, align 4
  %20 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %20, i32* %5, align 4
  br label %76

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  store i32 3, i32* %25, align 4
  %26 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %26, i32* %5, align 4
  br label %76

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call %struct.TYPE_2__* @INODE_PKEY(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 3, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %28
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call %struct.TYPE_2__* @INODE_PKEY(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 5, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %72

65:                                               ; preds = %49
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 6, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %49
  br label %73

73:                                               ; preds = %72, %28
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %24, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @INODE_PKEY(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
