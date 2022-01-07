; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs2_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs2_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.super_block* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.ufs2_inode = type { %struct.TYPE_10__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.ufs_inode_info = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ufs2_inode*)* @ufs2_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs2_update_inode(%struct.inode* %0, %struct.ufs2_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ufs2_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ufs2_inode* %1, %struct.ufs2_inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 8
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %10)
  store %struct.ufs_inode_info* %11, %struct.ufs_inode_info** %6, align 8
  %12 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @cpu_to_fs16(%struct.super_block* %13, i32 %16)
  %18 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %19 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_fs16(%struct.super_block* %20, i32 %23)
  %25 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %26 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %25, i32 0, i32 13
  store i8* %24, i8** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @i_uid_read(%struct.inode* %28)
  %30 = call i8* @cpu_to_fs32(%struct.super_block* %27, i32 %29)
  %31 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %32 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @i_gid_read(%struct.inode* %34)
  %36 = call i8* @cpu_to_fs32(%struct.super_block* %33, i32 %35)
  %37 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %38 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_fs64(%struct.super_block* %39, i32 %42)
  %44 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %45 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_fs64(%struct.super_block* %46, i32 %50)
  %52 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %53 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_fs32(%struct.super_block* %54, i32 %58)
  %60 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %61 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_fs64(%struct.super_block* %62, i32 %66)
  %68 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %69 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @cpu_to_fs32(%struct.super_block* %70, i32 %74)
  %76 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %77 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_fs64(%struct.super_block* %78, i32 %82)
  %84 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %85 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @cpu_to_fs32(%struct.super_block* %86, i32 %90)
  %92 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %93 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_fs64(%struct.super_block* %94, i32 %97)
  %99 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %100 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.super_block*, %struct.super_block** %5, align 8
  %102 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %103 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @cpu_to_fs32(%struct.super_block* %101, i32 %104)
  %106 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %107 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_fs32(%struct.super_block* %108, i32 %111)
  %113 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %114 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @S_ISCHR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %2
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @S_ISBLK(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %120, %2
  %127 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %128 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %134 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %132, i32* %138, align 4
  br label %163

139:                                              ; preds = %120
  %140 = load %struct.inode*, %struct.inode** %3, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %146 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %149 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @memcpy(%struct.TYPE_12__* %147, i32* %151, i32 8)
  br label %162

153:                                              ; preds = %139
  %154 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %155 = getelementptr inbounds %struct.ufs2_inode, %struct.ufs2_inode* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %158 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @memcpy(%struct.TYPE_12__* %156, i32* %160, i32 8)
  br label %162

162:                                              ; preds = %153, %144
  br label %163

163:                                              ; preds = %162, %126
  %164 = load %struct.inode*, %struct.inode** %3, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load %struct.ufs2_inode*, %struct.ufs2_inode** %4, align 8
  %170 = call i32 @memset(%struct.ufs2_inode* %169, i32 0, i32 128)
  br label %171

171:                                              ; preds = %168, %163
  %172 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ufs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
