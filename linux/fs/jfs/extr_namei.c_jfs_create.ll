; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_5__*, i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.tblock = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"jfs_create: dip:0x%p name:%pd\00", align 1
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_create: dtSearch returned %d\00", align 1
@COMMIT_CREATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"jfs_create: dtInsert returned -EIO\00", align 1
@jfs_file_inode_operations = common dso_local global i32 0, align 4
@jfs_file_operations = common dso_local global i32 0, align 4
@jfs_aops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"jfs_create: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @jfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.component_name, align 4
  %14 = alloca %struct.btstack, align 4
  %15 = alloca [2 x %struct.inode*], align 16
  %16 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %17, %struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @dquot_initialize(%struct.inode* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %180

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @get_UCSname(%struct.component_name* %13, %struct.dentry* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %180

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.inode* @ialloc(%struct.inode* %31, i32 %32)
  store %struct.inode* %33, %struct.inode** %11, align 8
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  store i32 %39, i32* %9, align 4
  br label %178

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @txBegin(i32 %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %49 = call i32 @mutex_lock_nested(i32* %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %54 = call i32 @mutex_lock_nested(i32* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i32 @jfs_init_acl(i32 %55, %struct.inode* %56, %struct.inode* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %153

62:                                               ; preds = %40
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call i32 @jfs_init_security(i32 %63, %struct.inode* %64, %struct.inode* %65, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @txAbort(i32 %72, i32 0)
  br label %153

74:                                               ; preds = %62
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = load i32, i32* @JFS_CREATE, align 4
  %77 = call i32 @dtSearch(%struct.inode* %75, %struct.component_name* %13, i32* %12, %struct.btstack* %14, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @txAbort(i32 %82, i32 0)
  br label %153

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.tblock* @tid_to_tblock(i32 %85)
  store %struct.tblock* %86, %struct.tblock** %16, align 8
  %87 = load i32, i32* @COMMIT_CREATE, align 4
  %88 = load %struct.tblock*, %struct.tblock** %16, align 8
  %89 = getelementptr inbounds %struct.tblock, %struct.tblock* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tblock*, %struct.tblock** %16, align 8
  %96 = getelementptr inbounds %struct.tblock, %struct.tblock* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tblock*, %struct.tblock** %16, align 8
  %102 = getelementptr inbounds %struct.tblock, %struct.tblock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  store %struct.inode* %104, %struct.inode** %105, align 16
  %106 = load %struct.inode*, %struct.inode** %11, align 8
  %107 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 1
  store %struct.inode* %106, %struct.inode** %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.inode*, %struct.inode** %11, align 8
  %110 = call i32 @xtInitRoot(i32 %108, %struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = call i32 @dtInsert(i32 %114, %struct.inode* %115, %struct.component_name* %13, i32* %12, %struct.btstack* %14)
  store i32 %116, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %84
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @txAbort(i32 %125, i32 1)
  br label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @txAbort(i32 %128, i32 0)
  br label %130

130:                                              ; preds = %127, %123
  br label %153

131:                                              ; preds = %84
  %132 = load %struct.inode*, %struct.inode** %11, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 4
  store i32* @jfs_file_inode_operations, i32** %133, align 8
  %134 = load %struct.inode*, %struct.inode** %11, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 3
  store i32* @jfs_file_operations, i32** %135, align 8
  %136 = load %struct.inode*, %struct.inode** %11, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32* @jfs_aops, i32** %139, align 8
  %140 = load %struct.inode*, %struct.inode** %11, align 8
  %141 = call i32 @mark_inode_dirty(%struct.inode* %140)
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = call i32 @current_time(%struct.inode* %142)
  %144 = load %struct.inode*, %struct.inode** %5, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = call i32 @mark_inode_dirty(%struct.inode* %148)
  %150 = load i32, i32* %10, align 4
  %151 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  %152 = call i32 @txCommit(i32 %150, i32 2, %struct.inode** %151, i32 0)
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %131, %130, %79, %71, %61
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @txEnd(i32 %154)
  %156 = load %struct.inode*, %struct.inode** %11, align 8
  %157 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %160)
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.inode*, %struct.inode** %11, align 8
  %168 = call i32 @free_ea_wmap(%struct.inode* %167)
  %169 = load %struct.inode*, %struct.inode** %11, align 8
  %170 = call i32 @clear_nlink(%struct.inode* %169)
  %171 = load %struct.inode*, %struct.inode** %11, align 8
  %172 = call i32 @discard_new_inode(%struct.inode* %171)
  br label %177

173:                                              ; preds = %153
  %174 = load %struct.dentry*, %struct.dentry** %6, align 8
  %175 = load %struct.inode*, %struct.inode** %11, align 8
  %176 = call i32 @d_instantiate_new(%struct.dentry* %174, %struct.inode* %175)
  br label %177

177:                                              ; preds = %173, %166
  br label %178

178:                                              ; preds = %177, %37
  %179 = call i32 @free_UCSname(%struct.component_name* %13)
  br label %180

180:                                              ; preds = %178, %29, %24
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %9, align 4
  ret i32 %183
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @xtInitRoot(i32, %struct.inode*) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_ea_wmap(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
