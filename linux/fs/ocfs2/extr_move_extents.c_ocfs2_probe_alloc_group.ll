; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_probe_alloc_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_probe_alloc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"found phys_cpos: %u to fit the wanted moving.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, i32*, i32, i32, i32*)* @ocfs2_probe_alloc_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_probe_alloc_group(%struct.inode* %0, %struct.buffer_head* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %24, %struct.ocfs2_group_desc** %17, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %29 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = call i32 @ocfs2_blocks_to_clusters(i32 %27, i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %78, %6
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %37 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %44 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = call i32 @ocfs2_test_bit(i32 %42, i64* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  store i32 0, i32* %57, align 4
  br label %81

58:                                               ; preds = %50
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %78

63:                                               ; preds = %41
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %81

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %34

81:                                               ; preds = %70, %56, %34
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %83)
  ret void
}

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_test_bit(i32, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
