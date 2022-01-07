; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque
%struct.filename = type { i32 }
%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i64, i64* }

@EEXIST = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_EXCL = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i32, %struct.filename*, %struct.path*, i32)* @filename_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @filename_create(i32 %0, %struct.filename* %1, %struct.path* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.filename*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.qstr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.filename* %1, %struct.filename** %7, align 8
  store %struct.path* %2, %struct.path** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.filename* @ERR_PTR(i32 %17)
  %19 = bitcast %struct.filename* %18 to %struct.dentry*
  store %struct.dentry* %19, %struct.dentry** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @LOOKUP_REVAL, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.filename*, %struct.filename** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.path*, %struct.path** %8, align 8
  %30 = call %struct.filename* @filename_parentat(i32 %26, %struct.filename* %27, i32 %28, %struct.path* %29, %struct.qstr* %11, i32* %12)
  store %struct.filename* %30, %struct.filename** %7, align 8
  %31 = load %struct.filename*, %struct.filename** %7, align 8
  %32 = call i64 @IS_ERR(%struct.filename* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.filename*, %struct.filename** %7, align 8
  %36 = call %struct.filename* @ERR_CAST(%struct.filename* %35)
  %37 = bitcast %struct.filename* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %5, align 8
  br label %139

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @LAST_NORM, align 4
  %41 = icmp ne i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %133

46:                                               ; preds = %38
  %47 = load %struct.path*, %struct.path** %8, align 8
  %48 = getelementptr inbounds %struct.path, %struct.path* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mnt_want_write(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @LOOKUP_CREATE, align 4
  %52 = load i32, i32* @LOOKUP_EXCL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.path*, %struct.path** %8, align 8
  %57 = getelementptr inbounds %struct.path, %struct.path* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I_MUTEX_PARENT, align 4
  %62 = call i32 @inode_lock_nested(i32 %60, i32 %61)
  %63 = load %struct.path*, %struct.path** %8, align 8
  %64 = getelementptr inbounds %struct.path, %struct.path* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.filename* @__lookup_hash(%struct.qstr* %11, %struct.TYPE_2__* %65, i32 %66)
  %68 = bitcast %struct.filename* %67 to %struct.dentry*
  store %struct.dentry* %68, %struct.dentry** %10, align 8
  %69 = load %struct.dentry*, %struct.dentry** %10, align 8
  %70 = bitcast %struct.dentry* %69 to %struct.filename*
  %71 = call i64 @IS_ERR(%struct.filename* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %46
  br label %118

74:                                               ; preds = %46
  %75 = load i32, i32* @EEXIST, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %14, align 4
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  %78 = bitcast %struct.dentry* %77 to %struct.filename*
  %79 = call i64 @d_is_positive(%struct.filename* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %111

82:                                               ; preds = %74
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i1 [ false, %82 ], [ %92, %85 ]
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  br label %111

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %14, align 4
  br label %111

107:                                              ; preds = %101
  %108 = load %struct.filename*, %struct.filename** %7, align 8
  %109 = call i32 @putname(%struct.filename* %108)
  %110 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %110, %struct.dentry** %5, align 8
  br label %139

111:                                              ; preds = %105, %98, %81
  %112 = load %struct.dentry*, %struct.dentry** %10, align 8
  %113 = bitcast %struct.dentry* %112 to %struct.filename*
  %114 = call i32 @dput(%struct.filename* %113)
  %115 = load i32, i32* %14, align 4
  %116 = call %struct.filename* @ERR_PTR(i32 %115)
  %117 = bitcast %struct.filename* %116 to %struct.dentry*
  store %struct.dentry* %117, %struct.dentry** %10, align 8
  br label %118

118:                                              ; preds = %111, %73
  %119 = load %struct.path*, %struct.path** %8, align 8
  %120 = getelementptr inbounds %struct.path, %struct.path* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @inode_unlock(i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %118
  %128 = load %struct.path*, %struct.path** %8, align 8
  %129 = getelementptr inbounds %struct.path, %struct.path* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @mnt_drop_write(i32 %130)
  br label %132

132:                                              ; preds = %127, %118
  br label %133

133:                                              ; preds = %132, %45
  %134 = load %struct.path*, %struct.path** %8, align 8
  %135 = call i32 @path_put(%struct.path* %134)
  %136 = load %struct.filename*, %struct.filename** %7, align 8
  %137 = call i32 @putname(%struct.filename* %136)
  %138 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %138, %struct.dentry** %5, align 8
  br label %139

139:                                              ; preds = %133, %107, %34
  %140 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %140
}

declare dso_local %struct.filename* @ERR_PTR(i32) #1

declare dso_local %struct.filename* @filename_parentat(i32, %struct.filename*, i32, %struct.path*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local %struct.filename* @ERR_CAST(%struct.filename*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local %struct.filename* @__lookup_hash(%struct.qstr*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @d_is_positive(%struct.filename*) #1

declare dso_local i32 @putname(%struct.filename*) #1

declare dso_local i32 @dput(%struct.filename*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
