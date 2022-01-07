; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V2_minix_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_V2_minix_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.buffer_head = type { i32 }
%struct.minix2_inode = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.minix_inode_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*)* @V2_minix_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @V2_minix_iget(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
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
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.minix2_inode* @minix_V2_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix2_inode* %16, %struct.minix2_inode** %5, align 8
  %17 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %18 = icmp ne %struct.minix2_inode* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 @iget_failed(%struct.inode* %20)
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %2, align 8
  br label %115

25:                                               ; preds = %1
  %26 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %27 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %33 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @i_uid_write(%struct.inode* %31, i32 %34)
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %38 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i_gid_write(%struct.inode* %36, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %43 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @set_nlink(%struct.inode* %41, i32 %44)
  %46 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %47 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %58 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %64 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %98, %25
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %85 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %92 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %80

101:                                              ; preds = %80
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %104 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @old_decode_dev(i32 %107)
  %109 = call i32 @minix_set_inode(%struct.inode* %102, i32 %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = call i32 @unlock_new_inode(%struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  store %struct.inode* %114, %struct.inode** %2, align 8
  br label %115

115:                                              ; preds = %101, %19
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %116
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix2_inode* @minix_V2_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
