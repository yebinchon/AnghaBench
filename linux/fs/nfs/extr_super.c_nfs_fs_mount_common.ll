; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fs_mount_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fs_mount_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, %struct.super_block*, i32, i32 }
%struct.super_block = type { i32, i32, i32, i32, %struct.nfs_server* }
%struct.nfs_mount_info = type { i32 (%struct.super_block*, %struct.super_block*, %struct.nfs_mount_info*)*, i32, %struct.TYPE_4__*, i32, i32 (%struct.super_block*, %struct.nfs_mount_info*)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_subversion = type { i32 }
%struct.nfs_sb_mountdata = type { i32, %struct.nfs_server* }

@ENOMEM = common dso_local global i32 0, align 4
@NFS_MOUNT_UNSHARED = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4
@nfs_set_super = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@SB_I_MULTIROOT = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_fs_mount_common(%struct.nfs_server* %0, i32 %1, i8* %2, %struct.nfs_mount_info* %3, %struct.nfs_subversion* %4) #0 {
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs_mount_info*, align 8
  %10 = alloca %struct.nfs_subversion*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32 (%struct.super_block*, i8*)*, align 8
  %14 = alloca %struct.nfs_sb_mountdata, align 8
  %15 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.nfs_mount_info* %3, %struct.nfs_mount_info** %9, align 8
  store %struct.nfs_subversion* %4, %struct.nfs_subversion** %10, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.super_block* @ERR_PTR(i32 %17)
  %19 = bitcast %struct.super_block* %18 to %struct.dentry*
  store %struct.dentry* %19, %struct.dentry** %12, align 8
  store i32 (%struct.super_block*, i8*)* @nfs_compare_super, i32 (%struct.super_block*, i8*)** %13, align 8
  %20 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %14, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %14, i32 0, i32 1
  %23 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %23, %struct.nfs_server** %22, align 8
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NFS_MOUNT_UNSHARED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 (%struct.super_block*, i8*)* null, i32 (%struct.super_block*, i8*)** %13, align 8
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %40 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %45 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %50 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %57 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %68 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %55
  br label %72

72:                                               ; preds = %71, %48, %43
  %73 = load %struct.nfs_subversion*, %struct.nfs_subversion** %10, align 8
  %74 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32 (%struct.super_block*, i8*)*, i32 (%struct.super_block*, i8*)** %13, align 8
  %77 = load i32, i32* @nfs_set_super, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call %struct.super_block* @sget(i32 %75, i32 (%struct.super_block*, i8*)* %76, i32 %77, i32 %78, %struct.nfs_sb_mountdata* %14)
  store %struct.super_block* %79, %struct.super_block** %11, align 8
  %80 = load %struct.super_block*, %struct.super_block** %11, align 8
  %81 = call i64 @IS_ERR(%struct.super_block* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load %struct.super_block*, %struct.super_block** %11, align 8
  %85 = call %struct.super_block* @ERR_CAST(%struct.super_block* %84)
  %86 = bitcast %struct.super_block* %85 to %struct.dentry*
  store %struct.dentry* %86, %struct.dentry** %12, align 8
  br label %190

87:                                               ; preds = %72
  %88 = load %struct.super_block*, %struct.super_block** %11, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 4
  %90 = load %struct.nfs_server*, %struct.nfs_server** %89, align 8
  %91 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %92 = icmp ne %struct.nfs_server* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %95 = call i32 @nfs_free_server(%struct.nfs_server* %94)
  store %struct.nfs_server* null, %struct.nfs_server** %6, align 8
  br label %124

96:                                               ; preds = %87
  %97 = load %struct.super_block*, %struct.super_block** %11, align 8
  %98 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %99 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MAJOR(i32 %100)
  %102 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %103 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MINOR(i32 %104)
  %106 = call i32 @super_setup_bdi_name(%struct.super_block* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load i32, i32* %15, align 4
  %111 = call %struct.super_block* @ERR_PTR(i32 %110)
  %112 = bitcast %struct.super_block* %111 to %struct.dentry*
  store %struct.dentry* %112, %struct.dentry** %12, align 8
  br label %200

113:                                              ; preds = %96
  %114 = load %struct.super_block*, %struct.super_block** %11, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %118 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @nfs_set_readahead(i32 %116, i32 %119)
  %121 = load %struct.super_block*, %struct.super_block** %11, align 8
  %122 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %123 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %122, i32 0, i32 1
  store %struct.super_block* %121, %struct.super_block** %123, align 8
  br label %124

124:                                              ; preds = %113, %93
  %125 = load %struct.super_block*, %struct.super_block** %11, align 8
  %126 = getelementptr inbounds %struct.super_block, %struct.super_block* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %124
  %130 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %131 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %130, i32 0, i32 4
  %132 = load i32 (%struct.super_block*, %struct.nfs_mount_info*)*, i32 (%struct.super_block*, %struct.nfs_mount_info*)** %131, align 8
  %133 = load %struct.super_block*, %struct.super_block** %11, align 8
  %134 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %135 = call i32 %132(%struct.super_block* %133, %struct.nfs_mount_info* %134)
  %136 = load %struct.super_block*, %struct.super_block** %11, align 8
  %137 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %138 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %141 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @nfs_get_cache_cookie(%struct.super_block* %136, i32 %139, %struct.TYPE_4__* %142)
  %144 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %145 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NFS_MOUNT_UNSHARED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %129
  %151 = load i32, i32* @SB_I_MULTIROOT, align 4
  %152 = load %struct.super_block*, %struct.super_block** %11, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %129
  br label %157

157:                                              ; preds = %156, %124
  %158 = load %struct.super_block*, %struct.super_block** %11, align 8
  %159 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %160 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call %struct.super_block* @nfs_get_root(%struct.super_block* %158, i32 %161, i8* %162)
  %164 = bitcast %struct.super_block* %163 to %struct.dentry*
  store %struct.dentry* %164, %struct.dentry** %12, align 8
  %165 = load %struct.dentry*, %struct.dentry** %12, align 8
  %166 = bitcast %struct.dentry* %165 to %struct.super_block*
  %167 = call i64 @IS_ERR(%struct.super_block* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %200

170:                                              ; preds = %157
  %171 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %172 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %171, i32 0, i32 0
  %173 = load i32 (%struct.super_block*, %struct.super_block*, %struct.nfs_mount_info*)*, i32 (%struct.super_block*, %struct.super_block*, %struct.nfs_mount_info*)** %172, align 8
  %174 = load %struct.super_block*, %struct.super_block** %11, align 8
  %175 = load %struct.dentry*, %struct.dentry** %12, align 8
  %176 = bitcast %struct.dentry* %175 to %struct.super_block*
  %177 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %9, align 8
  %178 = call i32 %173(%struct.super_block* %174, %struct.super_block* %176, %struct.nfs_mount_info* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %193

182:                                              ; preds = %170
  %183 = load i32, i32* @SB_ACTIVE, align 4
  %184 = load %struct.super_block*, %struct.super_block** %11, align 8
  %185 = getelementptr inbounds %struct.super_block, %struct.super_block* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %200, %190, %182
  %189 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %189

190:                                              ; preds = %83
  %191 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %192 = call i32 @nfs_free_server(%struct.nfs_server* %191)
  br label %188

193:                                              ; preds = %181
  %194 = load %struct.dentry*, %struct.dentry** %12, align 8
  %195 = bitcast %struct.dentry* %194 to %struct.super_block*
  %196 = call i32 @dput(%struct.super_block* %195)
  %197 = load i32, i32* %15, align 4
  %198 = call %struct.super_block* @ERR_PTR(i32 %197)
  %199 = bitcast %struct.super_block* %198 to %struct.dentry*
  store %struct.dentry* %199, %struct.dentry** %12, align 8
  br label %200

200:                                              ; preds = %193, %169, %109
  %201 = load %struct.super_block*, %struct.super_block** %11, align 8
  %202 = call i32 @deactivate_locked_super(%struct.super_block* %201)
  br label %188
}

declare dso_local %struct.super_block* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_compare_super(%struct.super_block*, i8*) #1

declare dso_local %struct.super_block* @sget(i32, i32 (%struct.super_block*, i8*)*, i32, i32, %struct.nfs_sb_mountdata*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @ERR_CAST(%struct.super_block*) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

declare dso_local i32 @super_setup_bdi_name(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @nfs_set_readahead(i32, i32) #1

declare dso_local i32 @nfs_get_cache_cookie(%struct.super_block*, i32, %struct.TYPE_4__*) #1

declare dso_local %struct.super_block* @nfs_get_root(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @dput(%struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
