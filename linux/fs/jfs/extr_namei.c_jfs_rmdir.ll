; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"jfs_rmdir: dip:0x%p name:%pd\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"jfs_rmdir: dtDelete returned %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@DXD_EXTENT = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"jfs_rmdir: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.component_name, align 4
  %10 = alloca [2 x %struct.inode*], align 16
  %11 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %14, %struct.dentry* %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @dquot_initialize(%struct.inode* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %184

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @dquot_initialize(%struct.inode* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %184

28:                                               ; preds = %22
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @dtEmpty(%struct.inode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOTEMPTY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %184

35:                                               ; preds = %28
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call i32 @get_UCSname(%struct.component_name* %9, %struct.dentry* %36)
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %184

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @txBegin(i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %49 = call i32 @mutex_lock_nested(i32* %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %54 = call i32 @mutex_lock_nested(i32* %52, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  store %struct.inode* %55, %struct.inode** %56, align 16
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 1
  store %struct.inode* %57, %struct.inode** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.tblock* @tid_to_tblock(i32 %59)
  store %struct.tblock* %60, %struct.tblock** %11, align 8
  %61 = load i32, i32* @COMMIT_DELETE, align 4
  %62 = load %struct.tblock*, %struct.tblock** %11, align 8
  %63 = getelementptr inbounds %struct.tblock, %struct.tblock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load %struct.tblock*, %struct.tblock** %11, align 8
  %68 = getelementptr inbounds %struct.tblock, %struct.tblock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.inode* %66, %struct.inode** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = load i32, i32* @JFS_REMOVE, align 4
  %76 = call i32 @dtDelete(i32 %73, %struct.inode* %74, %struct.component_name* %9, i32* %8, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %40
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @txAbort(i32 %86, i32 1)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @txEnd(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  br label %182

99:                                               ; preds = %40
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @current_time(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 4
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = call i32 @inode_dec_link_count(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DXD_EXTENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %99
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = call i32 @txEA(i32 %117, %struct.inode* %118, %struct.TYPE_5__* %121, i32* null)
  br label %123

123:                                              ; preds = %116, %99
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DXD_EXTENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %123
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = call i32 @txEA(i32 %137, %struct.inode* %138, %struct.TYPE_5__* %141, i32* null)
  br label %143

143:                                              ; preds = %136, %123
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  %148 = load %struct.inode*, %struct.inode** %7, align 8
  %149 = call i32 @clear_nlink(%struct.inode* %148)
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = call i32 @mark_inode_dirty(%struct.inode* %150)
  %152 = load i32, i32* %6, align 4
  %153 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %154 = call i32 @txCommit(i32 %152, i32 2, %struct.inode** %153, i32 0)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @txEnd(i32 %155)
  %157 = load %struct.inode*, %struct.inode** %7, align 8
  %158 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.inode*, %struct.inode** %3, align 8
  %162 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %161)
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* @COMMIT_Stale, align 4
  %166 = load %struct.inode*, %struct.inode** %3, align 8
  %167 = call i64 @test_cflag(i32 %165, %struct.inode* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %143
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.inode*, %struct.inode** %3, align 8
  %176 = call i32 @jfs_truncate_nolock(%struct.inode* %175, i32 0)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32, i32* @COMMIT_Stale, align 4
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = call i32 @clear_cflag(i32 %178, %struct.inode* %179)
  br label %181

181:                                              ; preds = %177, %143
  br label %182

182:                                              ; preds = %181, %88
  %183 = call i32 @free_UCSname(%struct.component_name* %9)
  br label %184

184:                                              ; preds = %182, %39, %32, %27, %21
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @dtEmpty(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i32*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @txEA(i32, %struct.inode*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i32) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
