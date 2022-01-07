; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs2_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs2_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i32, i32, %struct.super_block* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.super_block = type { i32 }
%struct.ufs2_inode = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.ufs_inode_info = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64*, i64* }

@.str = private unnamed_addr constant [29 x i8] c"Reading ufs2 inode, ino %lu\0A\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ufs2_inode*)* @ufs2_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs2_read_inode(%struct.inode* %0, %struct.ufs2_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ufs2_inode*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ufs2_inode* %1, %struct.ufs2_inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %9)
  store %struct.ufs_inode_info* %10, %struct.ufs_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 9
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @UFSD(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fs16_to_cpu(%struct.super_block* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load %struct.super_block*, %struct.super_block** %7, align 8
  %27 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %28 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @fs16_to_cpu(%struct.super_block* %26, i32 %29)
  %31 = call i32 @set_nlink(%struct.inode* %25, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ESTALE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %167

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.super_block*, %struct.super_block** %7, align 8
  %42 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %43 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @fs32_to_cpu(%struct.super_block* %41, i32 %44)
  %46 = call i32 @i_uid_write(%struct.inode* %40, i8* %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.super_block*, %struct.super_block** %7, align 8
  %49 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %50 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @fs32_to_cpu(%struct.super_block* %48, i32 %51)
  %53 = call i32 @i_gid_write(%struct.inode* %47, i8* %52)
  %54 = load %struct.super_block*, %struct.super_block** %7, align 8
  %55 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %56 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @fs64_to_cpu(%struct.super_block* %54, i32 %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.super_block*, %struct.super_block** %7, align 8
  %62 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %63 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @fs64_to_cpu(%struct.super_block* %61, i32 %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load %struct.super_block*, %struct.super_block** %7, align 8
  %70 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %71 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @fs64_to_cpu(%struct.super_block* %69, i32 %72)
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %7, align 8
  %78 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %79 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @fs64_to_cpu(%struct.super_block* %77, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.super_block*, %struct.super_block** %7, align 8
  %86 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %87 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @fs32_to_cpu(%struct.super_block* %85, i32 %88)
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %7, align 8
  %94 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %95 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @fs32_to_cpu(%struct.super_block* %93, i32 %96)
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.super_block*, %struct.super_block** %7, align 8
  %102 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %103 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @fs32_to_cpu(%struct.super_block* %101, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.super_block*, %struct.super_block** %7, align 8
  %110 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %111 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @fs64_to_cpu(%struct.super_block* %109, i32 %112)
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.super_block*, %struct.super_block** %7, align 8
  %117 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %118 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @fs32_to_cpu(%struct.super_block* %116, i32 %119)
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.super_block*, %struct.super_block** %7, align 8
  %124 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %125 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @fs32_to_cpu(%struct.super_block* %123, i32 %126)
  %128 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %129 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i64 @S_ISCHR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %39
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @S_ISBLK(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %137, %133, %39
  %143 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %144 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %148 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = call i32 @memcpy(i64* %146, i32* %149, i32 4)
  br label %166

151:                                              ; preds = %137
  %152 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %153 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.ufs2_inode*, %struct.ufs2_inode** %5, align 8
  %157 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @memcpy(i64* %155, i32* %159, i32 7)
  %161 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %162 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 7
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %151, %142
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %36
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*, i32) #1

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
