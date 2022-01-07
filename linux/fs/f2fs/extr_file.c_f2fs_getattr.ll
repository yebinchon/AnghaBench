; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.f2fs_inode_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.f2fs_inode = type { i32 }

@i_crtime = common dso_local global i32 0, align 4
@STATX_BTIME = common dso_local global i32 0, align 4
@F2FS_APPEND_FL = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@STATX_ATTR_ENCRYPTED = common dso_local global i32 0, align 4
@F2FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@F2FS_NODUMP_FL = common dso_local global i32 0, align 4
@STATX_ATTR_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.f2fs_inode_info*, align 8
  %11 = alloca %struct.f2fs_inode*, align 8
  %12 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.path*, %struct.path** %5, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @d_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %17)
  store %struct.f2fs_inode_info* %18, %struct.f2fs_inode_info** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call i64 @f2fs_has_extra_attr(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call i32 @F2FS_I_SB(%struct.inode* %23)
  %25 = call i64 @f2fs_sb_has_inode_crtime(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.f2fs_inode*, %struct.f2fs_inode** %11, align 8
  %29 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %10, align 8
  %30 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @i_crtime, align 4
  %33 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %28, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load i32, i32* @STATX_BTIME, align 4
  %37 = load %struct.kstat*, %struct.kstat** %6, align 8
  %38 = getelementptr inbounds %struct.kstat, %struct.kstat* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %10, align 8
  %42 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kstat*, %struct.kstat** %6, align 8
  %46 = getelementptr inbounds %struct.kstat, %struct.kstat* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %10, align 8
  %49 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.kstat*, %struct.kstat** %6, align 8
  %53 = getelementptr inbounds %struct.kstat, %struct.kstat* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %35, %27, %22, %4
  %56 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %10, align 8
  %57 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @F2FS_APPEND_FL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %65 = load %struct.kstat*, %struct.kstat** %6, align 8
  %66 = getelementptr inbounds %struct.kstat, %struct.kstat* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %55
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call i64 @IS_ENCRYPTED(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %75 = load %struct.kstat*, %struct.kstat** %6, align 8
  %76 = getelementptr inbounds %struct.kstat, %struct.kstat* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @F2FS_IMMUTABLE_FL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %86 = load %struct.kstat*, %struct.kstat** %6, align 8
  %87 = getelementptr inbounds %struct.kstat, %struct.kstat* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @F2FS_NODUMP_FL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %97 = load %struct.kstat*, %struct.kstat** %6, align 8
  %98 = getelementptr inbounds %struct.kstat, %struct.kstat* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %103 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.kstat*, %struct.kstat** %6, align 8
  %110 = getelementptr inbounds %struct.kstat, %struct.kstat* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = load %struct.kstat*, %struct.kstat** %6, align 8
  %115 = call i32 @generic_fillattr(%struct.inode* %113, %struct.kstat* %114)
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @S_ISREG(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %101
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i64 @f2fs_has_inline_data(%struct.inode* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121, %101
  %126 = load %struct.inode*, %struct.inode** %9, align 8
  %127 = call i64 @f2fs_has_inline_dentry(%struct.inode* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %125, %121
  %130 = load %struct.kstat*, %struct.kstat** %6, align 8
  %131 = getelementptr inbounds %struct.kstat, %struct.kstat* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 511
  %134 = ashr i32 %133, 9
  %135 = load %struct.kstat*, %struct.kstat** %6, align 8
  %136 = getelementptr inbounds %struct.kstat, %struct.kstat* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %129, %125
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @f2fs_has_extra_attr(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_inode_crtime(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i32, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
