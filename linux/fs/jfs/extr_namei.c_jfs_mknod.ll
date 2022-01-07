; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, i32, i32 }
%struct.dentry = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"jfs_mknod: %pd\00", align 1
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@COMMIT_CREATE = common dso_local global i32 0, align 4
@jfs_file_inode_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"jfs_mknod: returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @jfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jfs_inode_info*, align 8
  %10 = alloca %struct.btstack, align 4
  %11 = alloca %struct.component_name, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca [2 x %struct.inode*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @dquot_initialize(%struct.inode* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %171

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @get_UCSname(%struct.component_name* %11, %struct.dentry* %26)
  store i32 %27, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %171

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.inode* @ialloc(%struct.inode* %31, i32 %32)
  store %struct.inode* %33, %struct.inode** %13, align 8
  %34 = load %struct.inode*, %struct.inode** %13, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %13, align 8
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  store i32 %39, i32* %15, align 4
  br label %169

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %13, align 8
  %42 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %41)
  store %struct.jfs_inode_info* %42, %struct.jfs_inode_info** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @txBegin(i32 %45, i32 0)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %51 = call i32 @mutex_lock_nested(i32* %49, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %13, align 8
  %53 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %53, i32 0, i32 0
  %55 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %56 = call i32 @mutex_lock_nested(i32* %54, i32 %55)
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.inode*, %struct.inode** %13, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @jfs_init_acl(i32 %57, %struct.inode* %58, %struct.inode* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %144

64:                                               ; preds = %40
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.inode*, %struct.inode** %13, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = call i32 @jfs_init_security(i32 %65, %struct.inode* %66, %struct.inode* %67, i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @txAbort(i32 %74, i32 0)
  br label %144

76:                                               ; preds = %64
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = load i32, i32* @JFS_CREATE, align 4
  %79 = call i32 @dtSearch(%struct.inode* %77, %struct.component_name* %11, i32* %12, %struct.btstack* %10, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @txAbort(i32 %82, i32 0)
  br label %144

84:                                               ; preds = %76
  %85 = load i32, i32* %16, align 4
  %86 = call %struct.tblock* @tid_to_tblock(i32 %85)
  store %struct.tblock* %86, %struct.tblock** %17, align 8
  %87 = load i32, i32* @COMMIT_CREATE, align 4
  %88 = load %struct.tblock*, %struct.tblock** %17, align 8
  %89 = getelementptr inbounds %struct.tblock, %struct.tblock* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tblock*, %struct.tblock** %17, align 8
  %96 = getelementptr inbounds %struct.tblock, %struct.tblock* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %13, align 8
  %98 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tblock*, %struct.tblock** %17, align 8
  %102 = getelementptr inbounds %struct.tblock, %struct.tblock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.inode*, %struct.inode** %13, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = call i32 @dtInsert(i32 %107, %struct.inode* %108, %struct.component_name* %11, i32* %12, %struct.btstack* %10)
  store i32 %109, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %84
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @txAbort(i32 %112, i32 0)
  br label %144

114:                                              ; preds = %84
  %115 = load %struct.inode*, %struct.inode** %13, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 3
  store i32* @jfs_file_inode_operations, i32** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @new_encode_dev(i32 %117)
  %119 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %9, align 8
  %120 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.inode*, %struct.inode** %13, align 8
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @init_special_inode(%struct.inode* %121, i32 %124, i32 %125)
  %127 = load %struct.inode*, %struct.inode** %13, align 8
  %128 = call i32 @mark_inode_dirty(%struct.inode* %127)
  %129 = load %struct.inode*, %struct.inode** %5, align 8
  %130 = call i32 @current_time(%struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = call i32 @mark_inode_dirty(%struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 0
  store %struct.inode* %137, %struct.inode** %138, align 16
  %139 = load %struct.inode*, %struct.inode** %13, align 8
  %140 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 1
  store %struct.inode* %139, %struct.inode** %140, align 8
  %141 = load i32, i32* %16, align 4
  %142 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 0
  %143 = call i32 @txCommit(i32 %141, i32 2, %struct.inode** %142, i32 0)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %114, %111, %81, %73, %63
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @txEnd(i32 %145)
  %147 = load %struct.inode*, %struct.inode** %13, align 8
  %148 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %147)
  %149 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load %struct.inode*, %struct.inode** %5, align 8
  %152 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %144
  %158 = load %struct.inode*, %struct.inode** %13, align 8
  %159 = call i32 @free_ea_wmap(%struct.inode* %158)
  %160 = load %struct.inode*, %struct.inode** %13, align 8
  %161 = call i32 @clear_nlink(%struct.inode* %160)
  %162 = load %struct.inode*, %struct.inode** %13, align 8
  %163 = call i32 @discard_new_inode(%struct.inode* %162)
  br label %168

164:                                              ; preds = %144
  %165 = load %struct.dentry*, %struct.dentry** %6, align 8
  %166 = load %struct.inode*, %struct.inode** %13, align 8
  %167 = call i32 @d_instantiate_new(%struct.dentry* %165, %struct.inode* %166)
  br label %168

168:                                              ; preds = %164, %157
  br label %169

169:                                              ; preds = %168, %37
  %170 = call i32 @free_UCSname(%struct.component_name* %11)
  br label %171

171:                                              ; preds = %169, %29, %24
  %172 = load i32, i32* %15, align 4
  %173 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %15, align 4
  ret i32 %174
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

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
