; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.path = type { i32 }
%struct.ovl_copy_up_ctx = type { i32, %struct.path, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, i32, %struct.dentry*, %struct.dentry* }
%struct.TYPE_2__ = type { i32, i64 }

@done = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@STATX_ATIME = common dso_local global i32 0, align 4
@STATX_MTIME = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*, i32)* @ovl_copy_up_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_copy_up_one(%struct.dentry* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.path, align 4
  %10 = alloca %struct.ovl_copy_up_ctx, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @done, align 4
  %12 = call i32 @DEFINE_DELAYED_CALL(i32 %11)
  %13 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 1
  %15 = bitcast %struct.path* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 2
  %17 = bitcast %struct.TYPE_2__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 3
  %19 = bitcast %struct.TYPE_2__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 7
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = call i32 @ovl_workdir(%struct.dentry* %24)
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %27, %struct.dentry** %26, align 8
  %28 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 9
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %29, %struct.dentry** %28, align 8
  %30 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EROFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %159

40:                                               ; preds = %3
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 1
  %43 = call i32 @ovl_path_lower(%struct.dentry* %41, %struct.path* %42)
  %44 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 1
  %45 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 2
  %46 = load i32, i32* @STATX_BASIC_STATS, align 4
  %47 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %48 = call i32 @vfs_getattr(%struct.path* %44, %struct.TYPE_2__* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %159

53:                                               ; preds = %40
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ovl_need_meta_copy_up(%struct.dentry* %54, i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 6
  store i32 %59, i32* %60, align 8
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = icmp ne %struct.dentry* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %53
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call i32 @ovl_path_upper(%struct.dentry* %64, %struct.path* %9)
  %66 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 5
  store i32 %67, i32* %68, align 4
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 4
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 3
  %74 = load i32, i32* @STATX_ATIME, align 4
  %75 = load i32, i32* @STATX_MTIME, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %78 = call i32 @vfs_getattr(%struct.path* %9, %struct.TYPE_2__* %73, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %63
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %159

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @O_TRUNC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @S_ISLNK(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 1
  %100 = getelementptr inbounds %struct.path, %struct.path* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vfs_get_link(i32 %101, i32* @done)
  %103 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %4, align 4
  br label %159

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.dentry*, %struct.dentry** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ovl_copy_up_start(%struct.dentry* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %123, %120
  br label %156

125:                                              ; preds = %113
  %126 = load %struct.dentry*, %struct.dentry** %6, align 8
  %127 = call i32 @ovl_dentry_upper(%struct.dentry* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = call i32 @ovl_do_copy_up(%struct.ovl_copy_up_ctx* %10)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load %struct.dentry*, %struct.dentry** %5, align 8
  %136 = icmp ne %struct.dentry* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.dentry*, %struct.dentry** %6, align 8
  %139 = call i32 @ovl_dentry_has_upper_alias(%struct.dentry* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 @ovl_link_up(%struct.ovl_copy_up_ctx* %10)
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %137, %134, %131
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load %struct.dentry*, %struct.dentry** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i64 @ovl_dentry_needs_data_copy_up_locked(%struct.dentry* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 @ovl_copy_up_meta_inode_data(%struct.ovl_copy_up_ctx* %10)
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %146, %143
  %154 = load %struct.dentry*, %struct.dentry** %6, align 8
  %155 = call i32 @ovl_copy_up_end(%struct.dentry* %154)
  br label %156

156:                                              ; preds = %153, %124
  %157 = call i32 @do_delayed_call(i32* @done)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %108, %81, %51, %37
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @DEFINE_DELAYED_CALL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ovl_workdir(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_path_lower(%struct.dentry*, %struct.path*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ovl_need_meta_copy_up(%struct.dentry*, i32, i32) #1

declare dso_local i32 @ovl_path_upper(%struct.dentry*, %struct.path*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @vfs_get_link(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ovl_copy_up_start(%struct.dentry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_do_copy_up(%struct.ovl_copy_up_ctx*) #1

declare dso_local i32 @ovl_dentry_has_upper_alias(%struct.dentry*) #1

declare dso_local i32 @ovl_link_up(%struct.ovl_copy_up_ctx*) #1

declare dso_local i64 @ovl_dentry_needs_data_copy_up_locked(%struct.dentry*, i32) #1

declare dso_local i32 @ovl_copy_up_meta_inode_data(%struct.ovl_copy_up_ctx*) #1

declare dso_local i32 @ovl_copy_up_end(%struct.dentry*) #1

declare dso_local i32 @do_delayed_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
