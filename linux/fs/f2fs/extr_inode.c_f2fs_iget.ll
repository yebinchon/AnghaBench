; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@f2fs_node_aops = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@f2fs_meta_aops = common dso_local global i32 0, align 4
@f2fs_file_inode_operations = common dso_local global i32 0, align 4
@f2fs_file_operations = common dso_local global i32 0, align 4
@f2fs_dblock_aops = common dso_local global i32 0, align 4
@f2fs_dir_inode_operations = common dso_local global i32 0, align 4
@f2fs_dir_operations = common dso_local global i32 0, align 4
@f2fs_encrypted_symlink_inode_operations = common dso_local global i32 0, align 4
@f2fs_symlink_inode_operations = common dso_local global i32 0, align 4
@f2fs_special_inode_operations = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @f2fs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.inode* @iget_locked(%struct.super_block* %11, i64 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %3, align 8
  br label %195

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call i32 @trace_f2fs_iget(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %30, %struct.inode** %3, align 8
  br label %195

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %34 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %39 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @do_read_inode(%struct.inode* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %185

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %52 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* @f2fs_node_aops, i32** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* @GFP_NOFS, align 4
  %63 = call i32 @mapping_set_gfp_mask(%struct.TYPE_2__* %61, i32 %62)
  br label %177

64:                                               ; preds = %49
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %67 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32* @f2fs_meta_aops, i32** %73, align 8
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* @GFP_NOFS, align 4
  %78 = call i32 @mapping_set_gfp_mask(%struct.TYPE_2__* %76, i32 %77)
  br label %176

79:                                               ; preds = %64
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @S_ISREG(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  store i32* @f2fs_file_inode_operations, i32** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 5
  store i32* @f2fs_file_operations, i32** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %93, align 8
  br label %175

94:                                               ; preds = %79
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @S_ISDIR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 3
  store i32* @f2fs_dir_inode_operations, i32** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 5
  store i32* @f2fs_dir_operations, i32** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = call i32 @inode_nohighmem(%struct.inode* %109)
  br label %174

111:                                              ; preds = %94
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @S_ISLNK(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = call i64 @file_is_encrypt(%struct.inode* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 3
  store i32* @f2fs_encrypted_symlink_inode_operations, i32** %123, align 8
  br label %127

124:                                              ; preds = %117
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 3
  store i32* @f2fs_symlink_inode_operations, i32** %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = call i32 @inode_nohighmem(%struct.inode* %128)
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %133, align 8
  br label %173

134:                                              ; preds = %111
  %135 = load %struct.inode*, %struct.inode** %7, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @S_ISCHR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %134
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @S_ISBLK(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @S_ISFIFO(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @S_ISSOCK(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152, %146, %140, %134
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 3
  store i32* @f2fs_special_inode_operations, i32** %160, align 8
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = load %struct.inode*, %struct.inode** %7, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @init_special_inode(%struct.inode* %161, i32 %164, i32 %167)
  br label %172

169:                                              ; preds = %152
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %185

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172, %127
  br label %174

174:                                              ; preds = %173, %100
  br label %175

175:                                              ; preds = %174, %85
  br label %176

176:                                              ; preds = %175, %69
  br label %177

177:                                              ; preds = %176, %54
  %178 = load %struct.inode*, %struct.inode** %7, align 8
  %179 = call i32 @f2fs_set_inode_flags(%struct.inode* %178)
  %180 = load %struct.inode*, %struct.inode** %7, align 8
  %181 = call i32 @unlock_new_inode(%struct.inode* %180)
  %182 = load %struct.inode*, %struct.inode** %7, align 8
  %183 = call i32 @trace_f2fs_iget(%struct.inode* %182)
  %184 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %184, %struct.inode** %3, align 8
  br label %195

185:                                              ; preds = %169, %47
  %186 = load %struct.inode*, %struct.inode** %7, align 8
  %187 = call i32 @f2fs_inode_synced(%struct.inode* %186)
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = call i32 @iget_failed(%struct.inode* %188)
  %190 = load %struct.inode*, %struct.inode** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @trace_f2fs_iget_exit(%struct.inode* %190, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = call %struct.inode* @ERR_PTR(i32 %193)
  store %struct.inode* %194, %struct.inode** %3, align 8
  br label %195

195:                                              ; preds = %185, %177, %27, %16
  %196 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %196
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @trace_f2fs_iget(%struct.inode*) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @do_read_inode(%struct.inode*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @file_is_encrypt(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @f2fs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_inode_synced(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_iget_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
