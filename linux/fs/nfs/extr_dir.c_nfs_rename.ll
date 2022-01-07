; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i32 }
%struct.rpc_task = type { i32, i64 }
%struct.nfs_renamedata = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: rename(%pd2 -> %pd2, ct=%d)\0A\00", align 1
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.rpc_task*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %13, align 8
  store %struct.dentry* null, %struct.dentry** %14, align 8
  store %struct.dentry* null, %struct.dentry** %15, align 8
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %183

30:                                               ; preds = %5
  %31 = load i32, i32* @VFS, align 4
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call i32 @d_count(%struct.dentry* %34)
  %36 = call i32 @dfprintk(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.dentry* %32, %struct.dentry* %33, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = load %struct.dentry*, %struct.dentry** %10, align 8
  %41 = call i32 @trace_nfs_rename_enter(%struct.inode* %37, %struct.dentry* %38, %struct.inode* %39, %struct.dentry* %40)
  %42 = load %struct.inode*, %struct.inode** %13, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %30
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @S_ISDIR(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %10, align 8
  %52 = call i32 @d_unhashed(%struct.dentry* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = call i32 @d_drop(%struct.dentry* %55)
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %57, %struct.dentry** %15, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = call i32 @d_count(%struct.dentry* %59)
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.dentry*, %struct.dentry** %10, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call %struct.dentry* @d_alloc(i32 %65, i32* %67)
  store %struct.dentry* %68, %struct.dentry** %14, align 8
  %69 = load %struct.dentry*, %struct.dentry** %14, align 8
  %70 = icmp ne %struct.dentry* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %137

72:                                               ; preds = %62
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = load %struct.dentry*, %struct.dentry** %10, align 8
  %75 = call i32 @nfs_sillyrename(%struct.inode* %73, %struct.dentry* %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %137

79:                                               ; preds = %72
  %80 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %80, %struct.dentry** %10, align 8
  store %struct.dentry* null, %struct.dentry** %15, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  br label %81

81:                                               ; preds = %79, %58
  br label %82

82:                                               ; preds = %81, %44, %30
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = load %struct.dentry*, %struct.dentry** %8, align 8
  %86 = load %struct.dentry*, %struct.dentry** %10, align 8
  %87 = call %struct.rpc_task* @nfs_async_rename(%struct.inode* %83, %struct.inode* %84, %struct.dentry* %85, %struct.dentry* %86, i32* null)
  store %struct.rpc_task* %87, %struct.rpc_task** %16, align 8
  %88 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %89 = call i64 @IS_ERR(%struct.rpc_task* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %93 = call i32 @PTR_ERR(%struct.rpc_task* %92)
  store i32 %93, i32* %17, align 4
  br label %137

94:                                               ; preds = %82
  %95 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %96 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %101 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.nfs_renamedata*
  %104 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = call i32 (...) @smp_wmb()
  br label %110

106:                                              ; preds = %94
  %107 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %108 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %106, %99
  %111 = load %struct.rpc_task*, %struct.rpc_task** %16, align 8
  %112 = call i32 @rpc_put_task(%struct.rpc_task* %111)
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = call i32 (...) @nfs_inc_attr_generation_counter()
  %120 = load %struct.inode*, %struct.inode** %12, align 8
  %121 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %124 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %128)
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load %struct.inode*, %struct.inode** %12, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  br label %136

136:                                              ; preds = %115, %110
  br label %137

137:                                              ; preds = %136, %91, %78, %71
  %138 = load %struct.dentry*, %struct.dentry** %15, align 8
  %139 = icmp ne %struct.dentry* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.dentry*, %struct.dentry** %15, align 8
  %142 = call i32 @d_rehash(%struct.dentry* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load %struct.dentry*, %struct.dentry** %8, align 8
  %146 = load %struct.inode*, %struct.inode** %9, align 8
  %147 = load %struct.dentry*, %struct.dentry** %10, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @trace_nfs_rename_exit(%struct.inode* %144, %struct.dentry* %145, %struct.inode* %146, %struct.dentry* %147, i32 %148)
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %143
  %153 = load %struct.inode*, %struct.inode** %13, align 8
  %154 = icmp ne %struct.inode* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.inode*, %struct.inode** %13, align 8
  %157 = call i32 @nfs_drop_nlink(%struct.inode* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.dentry*, %struct.dentry** %8, align 8
  %160 = load %struct.dentry*, %struct.dentry** %10, align 8
  %161 = call i32 @d_move(%struct.dentry* %159, %struct.dentry* %160)
  %162 = load %struct.dentry*, %struct.dentry** %8, align 8
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = call i32 @nfs_save_change_attribute(%struct.inode* %163)
  %165 = call i32 @nfs_set_verifier(%struct.dentry* %162, i32 %164)
  br label %175

166:                                              ; preds = %143
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @ENOENT, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.dentry*, %struct.dentry** %8, align 8
  %173 = call i32 @nfs_dentry_handle_enoent(%struct.dentry* %172)
  br label %174

174:                                              ; preds = %171, %166
  br label %175

175:                                              ; preds = %174, %158
  %176 = load %struct.dentry*, %struct.dentry** %14, align 8
  %177 = icmp ne %struct.dentry* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.dentry*, %struct.dentry** %14, align 8
  %180 = call i32 @dput(%struct.dentry* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %27
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @trace_nfs_rename_enter(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc(i32, i32*) #1

declare dso_local i32 @nfs_sillyrename(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.rpc_task* @nfs_async_rename(%struct.inode*, %struct.inode*, %struct.dentry*, %struct.dentry*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_inc_attr_generation_counter(...) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @trace_nfs_rename_exit(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @nfs_drop_nlink(%struct.inode*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_dentry_handle_enoent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
