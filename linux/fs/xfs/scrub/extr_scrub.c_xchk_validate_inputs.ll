; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_scrub.c_xchk_validate_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_scrub.c_xchk_validate_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xchk_meta_ops = type { i32, i32 (%struct.TYPE_3__*)*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_mount = type { i32, %struct.TYPE_3__ }
%struct.xfs_scrub_metadata = type { i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_SCRUB_FLAGS_OUT = common dso_local global i32 0, align 4
@XFS_SCRUB_FLAGS_IN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_NR = common dso_local global i64 0, align 8
@meta_scrub_ops = common dso_local global %struct.xchk_meta_ops* null, align 8
@XFS_SCRUB_IFLAG_REPAIR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@XFS_MOUNT_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_scrub_metadata*)* @xchk_validate_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xchk_validate_inputs(%struct.xfs_mount* %0, %struct.xfs_scrub_metadata* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_scrub_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xchk_meta_ops*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_scrub_metadata* %1, %struct.xfs_scrub_metadata** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @XFS_SCRUB_FLAGS_OUT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XFS_SCRUB_FLAGS_IN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %158

23:                                               ; preds = %2
  %24 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @memchr_inv(i32 %26, i32 0, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %158

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XFS_SCRUB_TYPE_NR, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %158

39:                                               ; preds = %30
  %40 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** @meta_scrub_ops, align 8
  %41 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %40, i64 %43
  store %struct.xchk_meta_ops* %44, %struct.xchk_meta_ops** %6, align 8
  %45 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** %6, align 8
  %46 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** %6, align 8
  %51 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %39
  br label %158

55:                                               ; preds = %49
  %56 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** %6, align 8
  %57 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %57, align 8
  %59 = icmp ne i32 (%struct.TYPE_3__*)* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** %6, align 8
  %62 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %62, align 8
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %64, i32 0, i32 1
  %66 = call i32 %63(%struct.TYPE_3__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %158

69:                                               ; preds = %60, %55
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  %72 = load %struct.xchk_meta_ops*, %struct.xchk_meta_ops** %6, align 8
  %73 = getelementptr inbounds %struct.xchk_meta_ops, %struct.xchk_meta_ops* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %130 [
    i32 129, label %75
    i32 131, label %75
    i32 128, label %92
    i32 130, label %113
  ]

75:                                               ; preds = %69, %69
  %76 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %82 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %87 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %80, %75
  br label %158

91:                                               ; preds = %85
  br label %131

92:                                               ; preds = %69
  %93 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %92
  %98 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %99 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %104 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %107 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102, %97, %92
  br label %158

112:                                              ; preds = %102
  br label %131

113:                                              ; preds = %69
  %114 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %115 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %120 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123, %113
  br label %158

129:                                              ; preds = %123, %118
  br label %131

130:                                              ; preds = %69
  br label %158

131:                                              ; preds = %129, %112, %91
  %132 = load %struct.xfs_scrub_metadata*, %struct.xfs_scrub_metadata** %4, align 8
  %133 = getelementptr inbounds %struct.xfs_scrub_metadata, %struct.xfs_scrub_metadata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @XFS_SCRUB_IFLAG_REPAIR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %131
  %139 = load i32, i32* @EOPNOTSUPP, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  %141 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %142 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %141, i32 0, i32 1
  %143 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_3__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  br label %158

146:                                              ; preds = %138
  %147 = load i32, i32* @EROFS, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  %149 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %150 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %158

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %131
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %155, %145, %130, %128, %111, %90, %68, %54, %38, %29, %22
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @memchr_inv(i32, i32, i32) #1

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
