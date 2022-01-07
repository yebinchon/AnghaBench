; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_set_inode_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_set_inode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.xfs_perag = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@XFS_MOUNT_SMALL_INUMS = common dso_local global i32 0, align 4
@XFS_MAXINUMBER_32 = common dso_local global i64 0, align 8
@XFS_MOUNT_32BITINODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfs_set_inode_alloc(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_perag*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 1
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %16 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @do_div(i32 %28, i32 100)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @do_div(i32 %36, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %45

43:                                               ; preds = %2
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %20
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @XFS_AGB_TO_AGINO(%struct.xfs_mount* %46, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @XFS_AGINO_TO_INO(%struct.xfs_mount* %52, i64 %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFS_MOUNT_SMALL_INUMS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %45
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @XFS_MAXINUMBER_32, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %70 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %63, %45
  %74 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %77 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %67
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %132, %80
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %135

85:                                               ; preds = %81
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @XFS_AGINO_TO_INO(%struct.xfs_mount* %86, i64 %87, i32 %88)
  store i64 %89, i64* %10, align 8
  %90 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %90, i64 %91)
  store %struct.xfs_perag* %92, %struct.xfs_perag** %12, align 8
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %94 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %85
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @XFS_MAXINUMBER_32, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %105 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %107 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  br label %123

108:                                              ; preds = %99
  %109 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %110 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %118 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %122

119:                                              ; preds = %108
  %120 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %121 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %103
  br label %129

124:                                              ; preds = %85
  %125 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %126 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %128 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %123
  %130 = load %struct.xfs_perag*, %struct.xfs_perag** %12, align 8
  %131 = call i32 @xfs_perag_put(%struct.xfs_perag* %130)
  br label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %5, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %81

135:                                              ; preds = %81
  %136 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %137 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i64, i64* %6, align 8
  br label %146

144:                                              ; preds = %135
  %145 = load i64, i64* %4, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i64 [ %143, %142 ], [ %145, %144 ]
  ret i64 %147
}

declare dso_local %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @XFS_AGB_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_AGINO_TO_INO(%struct.xfs_mount*, i64, i32) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
