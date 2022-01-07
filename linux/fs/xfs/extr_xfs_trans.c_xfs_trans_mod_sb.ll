; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_mod_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_mod_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_TRANS_SB_DIRTY = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_mod_sb(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %10 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 19
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %193 [
    i32 137, label %16
    i32 136, label %32
    i32 139, label %48
    i32 132, label %86
    i32 138, label %102
    i32 131, label %127
    i32 140, label %137
    i32 141, label %147
    i32 135, label %157
    i32 129, label %163
    i32 133, label %169
    i32 134, label %175
    i32 130, label %181
    i32 128, label %187
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @xfs_sb_version_haslazysbcount(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %16
  br label %195

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @xfs_sb_version_haslazysbcount(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %32
  br label %195

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %68 = call i32 @xfs_force_shutdown(%struct.TYPE_6__* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %51
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @xfs_sb_version_haslazysbcount(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %70
  br label %195

86:                                               ; preds = %3
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 15
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @xfs_sb_version_haslazysbcount(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %86
  br label %195

102:                                              ; preds = %3
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 0, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @ASSERT(i32 %119)
  br label %121

121:                                              ; preds = %105, %102
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %195

127:                                              ; preds = %3
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 13
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %195

137:                                              ; preds = %3
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ASSERT(i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %195

147:                                              ; preds = %3
  %148 = load i32, i32* %6, align 4
  %149 = icmp sgt i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @ASSERT(i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %195

157:                                              ; preds = %3
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %195

163:                                              ; preds = %3
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %195

169:                                              ; preds = %3
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %195

175:                                              ; preds = %3
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %195

181:                                              ; preds = %3
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %195

187:                                              ; preds = %3
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %195

193:                                              ; preds = %3
  %194 = call i32 @ASSERT(i32 0)
  br label %201

195:                                              ; preds = %187, %181, %175, %169, %163, %157, %147, %137, %127, %121, %101, %85, %47, %31
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %193
  ret void
}

declare dso_local i32 @xfs_sb_version_haslazysbcount(i32*) #1

declare dso_local i32 @xfs_force_shutdown(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
