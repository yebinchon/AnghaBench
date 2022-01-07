; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32*, i32, i32 }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.tblock = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"jfs_mkdir: dip:0x%p name:%pd\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"jfs_mkdir: dtSearch returned %d\00", align 1
@COMMIT_CREATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"jfs_mkdir: dtInsert returned -EIO\00", align 1
@jfs_dir_inode_operations = common dso_local global i32 0, align 4
@jfs_dir_operations = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"jfs_mkdir: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @jfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.component_name, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca [2 x %struct.inode*], align 16
  %14 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %15, %struct.dentry* %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @dquot_initialize(%struct.inode* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %183

23:                                               ; preds = %3
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i32 @get_UCSname(%struct.component_name* %11, %struct.dentry* %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %183

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i32, i32* @S_IFDIR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.inode* @ialloc(%struct.inode* %29, i32 %32)
  store %struct.inode* %33, %struct.inode** %9, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  store i32 %39, i32* %7, align 4
  br label %181

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @txBegin(i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %49 = call i32 @mutex_lock_nested(i32* %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %54 = call i32 @mutex_lock_nested(i32* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @jfs_init_acl(i32 %55, %struct.inode* %56, %struct.inode* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %156

62:                                               ; preds = %40
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call i32 @jfs_init_security(i32 %63, %struct.inode* %64, %struct.inode* %65, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @txAbort(i32 %72, i32 0)
  br label %156

74:                                               ; preds = %62
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load i32, i32* @JFS_CREATE, align 4
  %77 = call i32 @dtSearch(%struct.inode* %75, %struct.component_name* %11, i32* %10, %struct.btstack* %12, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @txAbort(i32 %82, i32 0)
  br label %156

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.tblock* @tid_to_tblock(i32 %85)
  store %struct.tblock* %86, %struct.tblock** %14, align 8
  %87 = load i32, i32* @COMMIT_CREATE, align 4
  %88 = load %struct.tblock*, %struct.tblock** %14, align 8
  %89 = getelementptr inbounds %struct.tblock, %struct.tblock* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tblock*, %struct.tblock** %14, align 8
  %96 = getelementptr inbounds %struct.tblock, %struct.tblock* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tblock*, %struct.tblock** %14, align 8
  %102 = getelementptr inbounds %struct.tblock, %struct.tblock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  store %struct.inode* %104, %struct.inode** %105, align 16
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 1
  store %struct.inode* %106, %struct.inode** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dtInitRoot(i32 %108, %struct.inode* %109, i32 %112)
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = call i32 @dtInsert(i32 %117, %struct.inode* %118, %struct.component_name* %11, i32* %10, %struct.btstack* %12)
  store i32 %119, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %84
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @txAbort(i32 %128, i32 1)
  br label %133

130:                                              ; preds = %121
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @txAbort(i32 %131, i32 0)
  br label %133

133:                                              ; preds = %130, %126
  br label %156

134:                                              ; preds = %84
  %135 = load %struct.inode*, %struct.inode** %9, align 8
  %136 = call i32 @set_nlink(%struct.inode* %135, i32 2)
  %137 = load %struct.inode*, %struct.inode** %9, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 3
  store i32* @jfs_dir_inode_operations, i32** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  store i32* @jfs_dir_operations, i32** %140, align 8
  %141 = load %struct.inode*, %struct.inode** %9, align 8
  %142 = call i32 @mark_inode_dirty(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call i32 @inc_nlink(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = call i32 @current_time(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = call i32 @mark_inode_dirty(%struct.inode* %151)
  %153 = load i32, i32* %8, align 4
  %154 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  %155 = call i32 @txCommit(i32 %153, i32 2, %struct.inode** %154, i32 0)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %134, %133, %79, %71, %61
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @txEnd(i32 %157)
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %156
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = call i32 @free_ea_wmap(%struct.inode* %170)
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = call i32 @clear_nlink(%struct.inode* %172)
  %174 = load %struct.inode*, %struct.inode** %9, align 8
  %175 = call i32 @discard_new_inode(%struct.inode* %174)
  br label %180

176:                                              ; preds = %156
  %177 = load %struct.dentry*, %struct.dentry** %5, align 8
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = call i32 @d_instantiate_new(%struct.dentry* %177, %struct.inode* %178)
  br label %180

180:                                              ; preds = %176, %169
  br label %181

181:                                              ; preds = %180, %37
  %182 = call i32 @free_UCSname(%struct.component_name* %11)
  br label %183

183:                                              ; preds = %181, %27, %22
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtInitRoot(i32, %struct.inode*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

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
