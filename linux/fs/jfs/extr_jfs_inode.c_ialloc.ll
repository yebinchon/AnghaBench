; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_inode.c_ialloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_inode.c_ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64, i32, i32, %struct.super_block* }
%struct.TYPE_3__ = type { i32 }
%struct.super_block = type { i32 }
%struct.jfs_inode_info = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ialloc: new_inode returned NULL!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ialloc: diAlloc returned %d!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@JFS_FL_INHERIT = common dso_local global i32 0, align 4
@IDIRECTORY = common dso_local global i32 0, align 4
@JFS_DIRSYNC_FL = common dso_local global i32 0, align 4
@INLINEEA = common dso_local global i32 0, align 4
@ISPARSE = common dso_local global i32 0, align 4
@JFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@JFS_APPEND_FL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ialloc returns inode = 0x%p\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ialloc(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.jfs_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 9
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.inode* @new_inode(%struct.super_block* %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %3, align 8
  br label %203

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %24)
  store %struct.jfs_inode_info* %25, %struct.jfs_inode_info** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @S_ISDIR(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @diAlloc(%struct.inode* %26, i64 %28, %struct.inode* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %198

36:                                               ; preds = %23
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i64 @insert_inode_locked(%struct.inode* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %198

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @inode_init_owner(%struct.inode* %44, %struct.inode* %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %52 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %57 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @dquot_initialize(%struct.inode* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %184

63:                                               ; preds = %43
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @dquot_alloc_inode(%struct.inode* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %184

69:                                               ; preds = %63
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @JFS_FL_INHERIT, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %77 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @S_ISDIR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %69
  %82 = load i32, i32* @IDIRECTORY, align 4
  %83 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %84 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* @JFS_DIRSYNC_FL, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %90 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %114

93:                                               ; preds = %69
  %94 = load i32, i32* @INLINEEA, align 4
  %95 = load i32, i32* @ISPARSE, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %98 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @S_ISLNK(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load i32, i32* @JFS_IMMUTABLE_FL, align 4
  %106 = load i32, i32* @JFS_APPEND_FL, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %110 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %104, %93
  br label %114

114:                                              ; preds = %113, %81
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %119 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 5
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 3
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = call i32 @current_time(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = bitcast %struct.TYPE_3__* %129 to i8*
  %134 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 4 %134, i64 4, i1 false)
  %135 = bitcast %struct.TYPE_3__* %127 to i8*
  %136 = bitcast %struct.TYPE_3__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 8 %136, i64 4, i1 false)
  %137 = bitcast %struct.TYPE_3__* %125 to i8*
  %138 = bitcast %struct.TYPE_3__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %144 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 8
  %145 = load %struct.super_block*, %struct.super_block** %6, align 8
  %146 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = sext i32 %148 to i64
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %154 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %153, i32 0, i32 12
  store i64 0, i64* %154, align 8
  %155 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %156 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %155, i32 0, i32 11
  %157 = call i32 @memset(i32* %156, i32 0, i32 4)
  %158 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %159 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %158, i32 0, i32 10
  %160 = call i32 @memset(i32* %159, i32 0, i32 4)
  %161 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %162 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %161, i32 0, i32 9
  store i64 0, i64* %162, align 8
  %163 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %164 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %163, i32 0, i32 8
  store i64 0, i64* %164, align 8
  %165 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %166 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %165, i32 0, i32 7
  store i64 0, i64* %166, align 8
  %167 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %168 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  %169 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %170 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %172 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  %173 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %174 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %173, i32 0, i32 3
  store i64 0, i64* %174, align 8
  %175 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %176 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %178 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.inode*, %struct.inode** %7, align 8
  %180 = call i32 @jfs_set_inode_flags(%struct.inode* %179)
  %181 = load %struct.inode*, %struct.inode** %7, align 8
  %182 = call i32 @jfs_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %181)
  %183 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %183, %struct.inode** %3, align 8
  br label %203

184:                                              ; preds = %68, %62
  %185 = load %struct.inode*, %struct.inode** %7, align 8
  %186 = call i32 @dquot_drop(%struct.inode* %185)
  %187 = load i32, i32* @S_NOQUOTA, align 4
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.inode*, %struct.inode** %7, align 8
  %193 = call i32 @clear_nlink(%struct.inode* %192)
  %194 = load %struct.inode*, %struct.inode** %7, align 8
  %195 = call i32 @discard_new_inode(%struct.inode* %194)
  %196 = load i32, i32* %9, align 4
  %197 = call %struct.inode* @ERR_PTR(i32 %196)
  store %struct.inode* %197, %struct.inode** %3, align 8
  br label %203

198:                                              ; preds = %40, %33
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = call i32 @iput(%struct.inode* %199)
  %201 = load i32, i32* %9, align 4
  %202 = call %struct.inode* @ERR_PTR(i32 %201)
  store %struct.inode* %202, %struct.inode** %3, align 8
  br label %203

203:                                              ; preds = %198, %184, %114, %18
  %204 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %204
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @jfs_warn(i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @diAlloc(%struct.inode*, i64, %struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jfs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
