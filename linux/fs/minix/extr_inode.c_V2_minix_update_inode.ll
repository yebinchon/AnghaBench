; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V2_minix_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V2_minix_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.minix2_inode = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.minix_inode_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*)* @V2_minix_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @V2_minix_update_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.minix2_inode*, align 8
  %6 = alloca %struct.minix_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.minix_inode_info* @minix_i(%struct.inode* %8)
  store %struct.minix_inode_info* %9, %struct.minix_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.minix2_inode* @minix_V2_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix2_inode* %16, %struct.minix2_inode** %5, align 8
  %17 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %18 = icmp ne %struct.minix2_inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.buffer_head* null, %struct.buffer_head** %2, align 8
  br label %111

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %25 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @i_uid_read(%struct.inode* %26)
  %28 = call i32 @fs_high2lowuid(i32 %27)
  %29 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %30 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @i_gid_read(%struct.inode* %31)
  %33 = call i32 @fs_high2lowgid(i32 %32)
  %34 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %35 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %40 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %45 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %51 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %57 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %63 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISCHR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %20
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISBLK(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69, %20
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @old_encode_dev(i32 %78)
  %80 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %81 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  br label %107

84:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %90 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %98 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %85

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %109 = call i32 @mark_buffer_dirty(%struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %110, %struct.buffer_head** %2, align 8
  br label %111

111:                                              ; preds = %107, %19
  %112 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  ret %struct.buffer_head* %112
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix2_inode* @minix_V2_raw_inode(i32, i32, %struct.buffer_head**) #1

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
