; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_do_unlinkat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_do_unlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i64, i64* }

@EISDIR = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_unlinkat(i32 %0, %struct.filename* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filename*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.path, align 8
  %9 = alloca %struct.qstr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.filename* %1, %struct.filename** %5, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %129, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.filename*, %struct.filename** %5, align 8
  %17 = load i32, i32* %13, align 4
  %18 = call %struct.filename* @filename_parentat(i32 %15, %struct.filename* %16, i32 %17, %struct.path* %8, %struct.qstr* %9, i32* %10)
  store %struct.filename* %18, %struct.filename** %5, align 8
  %19 = load %struct.filename*, %struct.filename** %5, align 8
  %20 = call i64 @IS_ERR(%struct.filename* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.filename*, %struct.filename** %5, align 8
  %24 = call i64 @PTR_ERR(%struct.filename* %23)
  store i64 %24, i64* %3, align 8
  br label %159

25:                                               ; preds = %14
  %26 = load i32, i32* @EISDIR, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @LAST_NORM, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %123

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mnt_want_write(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %123

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %117, %39
  %41 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I_MUTEX_PARENT, align 4
  %46 = call i32 @inode_lock_nested(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.filename* @__lookup_hash(%struct.qstr* %9, %struct.TYPE_2__* %48, i32 %49)
  %51 = bitcast %struct.filename* %50 to %struct.dentry*
  store %struct.dentry* %51, %struct.dentry** %7, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = bitcast %struct.dentry* %52 to %struct.filename*
  %54 = call i64 @PTR_ERR(%struct.filename* %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = bitcast %struct.dentry* %56 to %struct.filename*
  %58 = call i64 @IS_ERR(%struct.filename* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %138

69:                                               ; preds = %60
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  store %struct.inode* %72, %struct.inode** %11, align 8
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = bitcast %struct.dentry* %73 to %struct.filename*
  %75 = call i64 @d_is_negative(%struct.filename* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %138

78:                                               ; preds = %69
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = call i32 @ihold(%struct.inode* %79)
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = bitcast %struct.dentry* %81 to %struct.filename*
  %83 = call i32 @security_path_unlink(%struct.path* %8, %struct.filename* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %95

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dentry*, %struct.dentry** %7, align 8
  %93 = bitcast %struct.dentry* %92 to %struct.filename*
  %94 = call i32 @vfs_unlink(i32 %91, %struct.filename* %93, %struct.inode** %12)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %158, %87, %86
  %96 = load %struct.dentry*, %struct.dentry** %7, align 8
  %97 = bitcast %struct.dentry* %96 to %struct.filename*
  %98 = call i32 @dput(%struct.filename* %97)
  br label %99

99:                                               ; preds = %95, %40
  %100 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @inode_unlock(i32 %103)
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.inode*, %struct.inode** %11, align 8
  %109 = call i32 @iput(%struct.inode* %108)
  br label %110

110:                                              ; preds = %107, %99
  store %struct.inode* null, %struct.inode** %11, align 8
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = icmp ne %struct.inode* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = call i32 @break_deleg_wait(%struct.inode** %12)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %40

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %110
  %120 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @mnt_drop_write(i32 %121)
  br label %123

123:                                              ; preds = %119, %38, %31
  %124 = call i32 @path_put(%struct.path* %8)
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i64 @retry_estale(i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @LOOKUP_REVAL, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  store %struct.inode* null, %struct.inode** %11, align 8
  br label %14

133:                                              ; preds = %123
  %134 = load %struct.filename*, %struct.filename** %5, align 8
  %135 = call i32 @putname(%struct.filename* %134)
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %3, align 8
  br label %159

138:                                              ; preds = %77, %68
  %139 = load %struct.dentry*, %struct.dentry** %7, align 8
  %140 = bitcast %struct.dentry* %139 to %struct.filename*
  %141 = call i64 @d_is_negative(%struct.filename* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* @ENOENT, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %158

146:                                              ; preds = %138
  %147 = load %struct.dentry*, %struct.dentry** %7, align 8
  %148 = bitcast %struct.dentry* %147 to %struct.filename*
  %149 = call i64 @d_is_dir(%struct.filename* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @EISDIR, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %157

154:                                              ; preds = %146
  %155 = load i32, i32* @ENOTDIR, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %143
  br label %95

159:                                              ; preds = %133, %22
  %160 = load i64, i64* %3, align 8
  ret i64 %160
}

declare dso_local %struct.filename* @filename_parentat(i32, %struct.filename*, i32, %struct.path*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local i64 @PTR_ERR(%struct.filename*) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local %struct.filename* @__lookup_hash(%struct.qstr*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @d_is_negative(%struct.filename*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @security_path_unlink(%struct.path*, %struct.filename*) #1

declare dso_local i32 @vfs_unlink(i32, %struct.filename*, %struct.inode**) #1

declare dso_local i32 @dput(%struct.filename*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @break_deleg_wait(%struct.inode**) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @retry_estale(i32, i32) #1

declare dso_local i32 @putname(%struct.filename*) #1

declare dso_local i64 @d_is_dir(%struct.filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
