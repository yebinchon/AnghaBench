; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_get_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_7__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.inode*, i32, i32*, %struct.TYPE_6__*, i32*)* @ext4_get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @ext4_get_branch(%struct.inode* %0, i32 %1, i32* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %13, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %27, %29
  %31 = call i32 @add_chain(%struct.TYPE_6__* %23, %struct.buffer_head* null, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  br label %103

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %98, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load %struct.super_block*, %struct.super_block** %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %43, i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %14, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %100

58:                                               ; preds = %42
  %59 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %60 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %64 = call i64 @bh_submit_read(%struct.buffer_head* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %68 = call i32 @put_bh(%struct.buffer_head* %67)
  br label %100

69:                                               ; preds = %62
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %72 = call i64 @ext4_check_indirect_blockref(%struct.inode* %70, %struct.buffer_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %76 = call i32 @put_bh(%struct.buffer_head* %75)
  br label %100

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 1
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %13, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = ptrtoint i32* %90 to i32
  %92 = call i32 @add_chain(%struct.TYPE_6__* %80, %struct.buffer_head* %81, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %78
  br label %103

98:                                               ; preds = %78
  br label %38

99:                                               ; preds = %38
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %105

100:                                              ; preds = %74, %66, %55
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97, %36
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %6, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %106
}

declare dso_local i32 @add_chain(%struct.TYPE_6__*, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #1

declare dso_local i64 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @ext4_check_indirect_blockref(%struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
