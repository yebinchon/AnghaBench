; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iflush_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iflush_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i16 }
%struct.xfs_ifork = type { i32, i32, i32*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@xfs_iflush_fork.brootflag = internal constant [2 x i16] [i16 130, i16 133], align 2
@xfs_iflush_fork.dataflag = internal constant [2 x i16] [i16 129, i16 132], align 2
@xfs_iflush_fork.extflag = internal constant [2 x i16] [i16 128, i16 131], align 2
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_ILOG_DEV = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iflush_fork(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xfs_ifork*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %207

15:                                               ; preds = %4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_15__* %16, i32 %17)
  store %struct.xfs_ifork* %18, %struct.xfs_ifork** %10, align 8
  %19 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %20 = icmp ne %struct.xfs_ifork* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @XFS_ATTR_FORK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  br label %207

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @XFS_DFORK_PTR(i32* %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @XFS_IFORK_FORMAT(%struct.TYPE_15__* %34, i32 %35)
  switch i32 %36, label %205 [
    i32 134, label %37
    i32 135, label %81
    i32 137, label %134
    i32 136, label %183
  ]

37:                                               ; preds = %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i16], [2 x i16]* @xfs_iflush_fork.dataflag, i64 0, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %37
  %50 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %51 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %56 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %63 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @XFS_IFORK_SIZE(%struct.TYPE_15__* %65, i32 %66)
  %68 = icmp sle i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %73 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %77 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i8* %71, i32* %75, i32 %78)
  br label %80

80:                                               ; preds = %54, %49, %37
  br label %207

81:                                               ; preds = %27
  %82 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %83 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XFS_IFEXTENTS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i16], [2 x i16]* @xfs_iflush_fork.extflag, i64 0, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %88, %81
  %102 = phi i1 [ true, %81 ], [ %100, %88 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i16], [2 x i16]* @xfs_iflush_fork.extflag, i64 0, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = and i32 %108, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %101
  %117 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %118 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @XFS_IFORK_NEXTENTS(%struct.TYPE_15__* %122, i32 %123)
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @ASSERT(i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @xfs_iextents_copy(%struct.TYPE_15__* %128, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %121, %116, %101
  br label %207

134:                                              ; preds = %27
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i16, i16* %136, align 2
  %138 = sext i16 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [2 x i16], [2 x i16]* @xfs_iflush_fork.brootflag, i64 0, i64 %140
  %142 = load i16, i16* %141, align 2
  %143 = sext i16 %142 to i32
  %144 = and i32 %138, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %134
  %147 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %148 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %146
  %152 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %153 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @ASSERT(i32 %156)
  %158 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %159 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @XFS_BMAP_BMDR_SPACE(i32* %160)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @XFS_IFORK_SIZE(%struct.TYPE_15__* %162, i32 %163)
  %165 = icmp sle i32 %161, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ASSERT(i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %170 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.xfs_ifork*, %struct.xfs_ifork** %10, align 8
  %173 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = bitcast i8* %175 to i32*
  %177 = load i32*, i32** %6, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @XFS_DFORK_SIZE(i32* %177, i32* %178, i32 %179)
  %181 = call i32 @xfs_bmbt_to_bmdr(i32* %168, i32* %171, i32 %174, i32* %176, i32 %180)
  br label %182

182:                                              ; preds = %151, %146, %134
  br label %207

183:                                              ; preds = %27
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i16, i16* %185, align 2
  %187 = sext i16 %186 to i32
  %188 = load i32, i32* @XFS_ILOG_DEV, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %183
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @XFS_DATA_FORK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @ASSERT(i32 %195)
  %197 = load i32*, i32** %6, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = call %struct.TYPE_13__* @VFS_I(%struct.TYPE_15__* %198)
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @linux_to_xfs_dev_t(i32 %201)
  %203 = call i32 @xfs_dinode_put_rdev(i32* %197, i32 %202)
  br label %204

204:                                              ; preds = %191, %183
  br label %207

205:                                              ; preds = %27
  %206 = call i32 @ASSERT(i32 0)
  br label %207

207:                                              ; preds = %14, %21, %205, %204, %182, %133, %80
  ret void
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @XFS_DFORK_PTR(i32*, i32) #1

declare dso_local i32 @XFS_IFORK_FORMAT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @XFS_IFORK_SIZE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @XFS_IFORK_NEXTENTS(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @xfs_iextents_copy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @XFS_BMAP_BMDR_SPACE(i32*) #1

declare dso_local i32 @xfs_bmbt_to_bmdr(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @XFS_DFORK_SIZE(i32*, i32*, i32) #1

declare dso_local i32 @xfs_dinode_put_rdev(i32*, i32) #1

declare dso_local i32 @linux_to_xfs_dev_t(i32) #1

declare dso_local %struct.TYPE_13__* @VFS_I(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
