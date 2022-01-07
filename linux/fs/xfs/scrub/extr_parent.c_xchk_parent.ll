; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_parent.c_xchk_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_parent.c_xchk_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, i32, %struct.TYPE_7__*, i32, %struct.xfs_mount* }
%struct.TYPE_7__ = type { i64 }
%struct.xfs_mount = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@xfs_name_dotdot = common dso_local global i32 0, align 4
@XCHK_TRY_HARDER = common dso_local global i32 0, align 4
@EDEADLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_parent(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %9 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %9, i32 0, i32 4
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call %struct.TYPE_8__* @VFS_I(%struct.TYPE_7__* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISDIR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @xfs_verify_dir_ino(%struct.xfs_mount* %24, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %34 = load i32, i32* @XFS_DATA_FORK, align 4
  %35 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %33, i32 %34, i32 0)
  br label %133

36:                                               ; preds = %23
  %37 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %38 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %49 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @xfs_iunlock(%struct.TYPE_7__* %47, i32 %50)
  %52 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %53 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %56 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @xfs_dir_lookup(i32 %54, %struct.TYPE_7__* %57, i32* @xfs_name_dotdot, i64* %5, i32* null)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %60 = load i32, i32* @XFS_DATA_FORK, align 4
  %61 = call i32 @xchk_fblock_process_error(%struct.xfs_scrub* %59, i32 %60, i32 0, i32* %8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %36
  br label %133

64:                                               ; preds = %36
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @xfs_verify_dir_ino(%struct.xfs_mount* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %71 = load i32, i32* @XFS_DATA_FORK, align 4
  %72 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %70, i32 %71, i32 0)
  br label %133

73:                                               ; preds = %64
  %74 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %75 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %78 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp eq %struct.TYPE_7__* %76, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %73
  %82 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %83 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %88 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %86, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %81
  %93 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %94 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %92, %81
  %101 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %102 = load i32, i32* @XFS_DATA_FORK, align 4
  %103 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %92
  br label %133

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %121, %105
  %107 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @xchk_parent_validate(%struct.xfs_scrub* %107, i64 %108, i32* %6)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %133

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = icmp slt i32 %119, 20
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ false, %114 ], [ %120, %117 ]
  br i1 %122, label %106, label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 20
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %131 = call i32 @xchk_set_incomplete(%struct.xfs_scrub* %130)
  br label %132

132:                                              ; preds = %129, %126, %123
  br label %133

133:                                              ; preds = %132, %112, %104, %69, %63, %32
  %134 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %135 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @XCHK_TRY_HARDER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @EDEADLOCK, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  %146 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %147 = call i32 @xchk_set_incomplete(%struct.xfs_scrub* %146)
  br label %148

148:                                              ; preds = %145, %140, %133
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %20
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @VFS_I(%struct.TYPE_7__*) #1

declare dso_local i32 @xfs_verify_dir_ino(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_dir_lookup(i32, %struct.TYPE_7__*, i32*, i64*, i32*) #1

declare dso_local i32 @xchk_fblock_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @xchk_parent_validate(%struct.xfs_scrub*, i64, i32*) #1

declare dso_local i32 @xchk_set_incomplete(%struct.xfs_scrub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
