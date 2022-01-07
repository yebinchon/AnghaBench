; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_inode_info = type { i32, i64, i32, i32, i32, %struct.nilfs_root* }
%struct.nilfs_root = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@NILFS_I_NEW = common dso_local global i32 0, align 4
@NILFS_I_BMAP = common dso_local global i32 0, align 4
@NILFS_FL_INHERITED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_inode_info*, align 8
  %10 = alloca %struct.nilfs_root*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 6
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %17, align 8
  store %struct.the_nilfs* %18, %struct.the_nilfs** %7, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.inode* @new_inode(%struct.super_block* %21)
  store %struct.inode* %22, %struct.inode** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = icmp ne %struct.inode* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %165

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @__GFP_FS, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @mapping_gfp_constraint(i32 %36, i32 %38)
  %40 = call i32 @mapping_set_gfp_mask(i32 %33, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %42, i32 0, i32 5
  %44 = load %struct.nilfs_root*, %struct.nilfs_root** %43, align 8
  store %struct.nilfs_root* %44, %struct.nilfs_root** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %45)
  store %struct.nilfs_inode_info* %46, %struct.nilfs_inode_info** %9, align 8
  %47 = load i32, i32* @NILFS_I_NEW, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %50 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %52 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %53 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %52, i32 0, i32 5
  store %struct.nilfs_root* %51, %struct.nilfs_root** %53, align 8
  %54 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %55 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %58 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %57, i32 0, i32 4
  %59 = call i32 @nilfs_ifile_create_inode(i32 %56, i32* %12, i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %30
  br label %160

64:                                               ; preds = %30
  %65 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %66 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %65, i32 0, i32 0
  %67 = call i32 @atomic64_inc(i32* %66)
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @inode_init_owner(%struct.inode* %68, %struct.inode* %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @current_time(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 3
  store i32 %76, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @S_ISREG(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @S_ISLNK(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %90, %86, %64
  %95 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %96 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nilfs_bmap_read(i32 %97, i32* null)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %153

102:                                              ; preds = %94
  %103 = load i32, i32* @NILFS_I_BMAP, align 4
  %104 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %105 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %104, i32 0, i32 2
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %102, %90
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NILFS_FL_INHERITED, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @nilfs_mask_flags(i32 %108, i32 %114)
  %116 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %117 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %119 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = call i32 @nilfs_set_inode_flags(%struct.inode* %120)
  %122 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %123 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %122, i32 0, i32 0
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %126 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = sext i32 %127 to i64
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %133 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i64 @nilfs_insert_inode_locked(%struct.inode* %135, %struct.nilfs_root* %136, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %107
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %153

143:                                              ; preds = %107
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = call i32 @nilfs_init_acl(%struct.inode* %144, %struct.inode* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %153

151:                                              ; preds = %143
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %152, %struct.inode** %3, align 8
  br label %168

153:                                              ; preds = %150, %140, %101
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = call i32 @clear_nlink(%struct.inode* %154)
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call i32 @unlock_new_inode(%struct.inode* %156)
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = call i32 @iput(%struct.inode* %158)
  br label %165

160:                                              ; preds = %63
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = call i32 @make_bad_inode(%struct.inode* %161)
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = call i32 @iput(%struct.inode* %163)
  br label %165

165:                                              ; preds = %160, %153, %29
  %166 = load i32, i32* %11, align 4
  %167 = call %struct.inode* @ERR_PTR(i32 %166)
  store %struct.inode* %167, %struct.inode** %3, align 8
  br label %168

168:                                              ; preds = %165, %151
  %169 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %169
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @mapping_gfp_constraint(i32, i32) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nilfs_ifile_create_inode(i32, i32*, i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nilfs_bmap_read(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nilfs_mask_flags(i32, i32) #1

declare dso_local i32 @nilfs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nilfs_insert_inode_locked(%struct.inode*, %struct.nilfs_root*, i32) #1

declare dso_local i32 @nilfs_init_acl(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
