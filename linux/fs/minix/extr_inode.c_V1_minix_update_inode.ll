; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V1_minix_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V1_minix_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.minix_inode = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.minix_inode_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*)* @V1_minix_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @V1_minix_update_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.minix_inode*, align 8
  %6 = alloca %struct.minix_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.minix_inode_info* @minix_i(%struct.inode* %8)
  store %struct.minix_inode_info* %9, %struct.minix_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.minix_inode* @minix_V1_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix_inode* %16, %struct.minix_inode** %5, align 8
  %17 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %18 = icmp ne %struct.minix_inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %25 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @i_uid_read(%struct.inode* %26)
  %28 = call i32 @fs_high2lowuid(i32 %27)
  %29 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %30 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @i_gid_read(%struct.inode* %31)
  %33 = call i32 @fs_high2lowgid(i32 %32)
  %34 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %35 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %40 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %45 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %51 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISCHR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %20
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISBLK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57, %20
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @old_encode_dev(i32 %66)
  %68 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %69 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  br label %95

72:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 9
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %78 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %86 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %73

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %97 = call i32 @mark_buffer_dirty(%struct.buffer_head* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %98, %struct.buffer_head** %2, align 8
  br label %99

99:                                               ; preds = %95, %19
  %100 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %100
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix_inode* @minix_V1_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
