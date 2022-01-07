; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_lookupi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_lookupi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@GFS2_FNAMESIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@LM_ST_SHARED = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_lookupi(%struct.inode* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %9, align 8
  store i32 0, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %18 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %10)
  %19 = load %struct.qstr*, %struct.qstr** %6, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.qstr*, %struct.qstr** %6, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFS2_FNAMESIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.inode* @ERR_PTR(i32 %31)
  store %struct.inode* %32, %struct.inode** %4, align 8
  br label %127

33:                                               ; preds = %23
  %34 = load %struct.qstr*, %struct.qstr** %6, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.qstr*, %struct.qstr** %6, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @memcmp(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.qstr*, %struct.qstr** %6, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.qstr*, %struct.qstr** %6, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @memcmp(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.super_block*, %struct.super_block** %8, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.inode* @d_inode(i32 %59)
  %61 = icmp eq %struct.inode* %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %38
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call i32 @igrab(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %65, %struct.inode** %4, align 8
  br label %127

66:                                               ; preds = %55, %49, %44
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @gfs2_glock_is_locked_by_me(i32 %69)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LM_ST_SHARED, align 4
  %77 = call i32 @gfs2_glock_nq_init(i32 %75, i32 %76, i32 0, %struct.gfs2_holder* %10)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = call %struct.inode* @ERR_PTR(i32 %81)
  store %struct.inode* %82, %struct.inode** %4, align 8
  br label %127

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = load i32, i32* @MAY_EXEC, align 4
  %90 = call i32 @gfs2_permission(%struct.inode* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %106

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = load %struct.qstr*, %struct.qstr** %6, align 8
  %98 = call %struct.inode* @gfs2_dir_search(%struct.inode* %96, %struct.qstr* %97, i32 0)
  store %struct.inode* %98, %struct.inode** %12, align 8
  %99 = load %struct.inode*, %struct.inode** %12, align 8
  %100 = call i64 @IS_ERR(%struct.inode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %12, align 8
  %104 = call i32 @PTR_ERR(%struct.inode* %103)
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105, %93
  %107 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %10)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %127

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = icmp ne %struct.inode* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %12, align 8
  br label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.inode* @ERR_PTR(i32 %123)
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi %struct.inode* [ %121, %120 ], [ %124, %122 ]
  store %struct.inode* %126, %struct.inode** %4, align 8
  br label %127

127:                                              ; preds = %125, %116, %80, %62, %29
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %128
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32* @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_permission(%struct.inode*, i32) #1

declare dso_local %struct.inode* @gfs2_dir_search(%struct.inode*, %struct.qstr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
