; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.TYPE_6__*, %struct.xfs_mount* }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.xfs_agf = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_BTNUM_BNO = common dso_local global i64 0, align 8
@XFS_BTNUM_CNT = common dso_local global i64 0, align 8
@XFS_BTREE_MAXLEVELS = common dso_local global i32 0, align 4
@XFS_BTNUM_RMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_buf*)* @xfs_agf_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_agf_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_agf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 1
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  store %struct.xfs_mount* %8, %struct.xfs_mount** %4, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %10 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %9)
  store %struct.xfs_agf* %10, %struct.xfs_agf** %5, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %16, i32 0, i32 12
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @uuid_equal(i32* %17, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load i32*, i32** @__this_address, align 8
  store i32* %24, i32** %2, align 8
  br label %211

25:                                               ; preds = %15
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %28 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %27)
  %29 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @be64_to_cpu(i32 %30)
  %32 = call i32 @xfs_log_check_lsn(%struct.xfs_mount* %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** @__this_address, align 8
  store i32* %35, i32** %2, align 8
  br label %211

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %39 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xfs_verify_magic(%struct.xfs_buf* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** @__this_address, align 8
  store i32* %45, i32** %2, align 8
  br label %211

46:                                               ; preds = %37
  %47 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = call i64 @XFS_AGF_GOOD_VERSION(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %55 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = icmp sle i32 %57, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %53
  %64 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %69 = call i32 @xfs_agfl_size(%struct.xfs_mount* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %63
  %72 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %77 = call i32 @xfs_agfl_size(%struct.xfs_mount* %76)
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %81 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %85 = call i32 @xfs_agfl_size(%struct.xfs_mount* %84)
  %86 = icmp sle i32 %83, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %79, %71, %63, %53, %46
  %88 = load i32*, i32** @__this_address, align 8
  store i32* %88, i32** %2, align 8
  br label %211

89:                                               ; preds = %79
  %90 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %91 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %127, label %98

98:                                               ; preds = %89
  %99 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %100 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %127, label %107

107:                                              ; preds = %98
  %108 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %109 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @be32_to_cpu(i32 %113)
  %115 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %127, label %117

117:                                              ; preds = %107
  %118 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %119 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be32_to_cpu(i32 %123)
  %125 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117, %107, %98, %89
  %128 = load i32*, i32** @__this_address, align 8
  store i32* %128, i32** %2, align 8
  br label %211

129:                                              ; preds = %117
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %130, i32 0, i32 0
  %132 = call i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_7__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %129
  %135 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %136 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @XFS_BTNUM_RMAP, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be32_to_cpu(i32 %140)
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %153, label %143

143:                                              ; preds = %134
  %144 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %145 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @XFS_BTNUM_RMAP, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be32_to_cpu(i32 %149)
  %151 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %143, %134
  %154 = load i32*, i32** @__this_address, align 8
  store i32* %154, i32** %2, align 8
  br label %211

155:                                              ; preds = %143, %129
  %156 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %157 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = icmp ne %struct.TYPE_6__* %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %162 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @be32_to_cpu(i32 %163)
  %165 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %166 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %164, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %160
  %172 = load i32*, i32** @__this_address, align 8
  store i32* %172, i32** %2, align 8
  br label %211

173:                                              ; preds = %160, %155
  %174 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %175 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %174, i32 0, i32 0
  %176 = call i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_7__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %180 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @be32_to_cpu(i32 %181)
  %183 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %184 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @be32_to_cpu(i32 %185)
  %187 = icmp sgt i32 %182, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i32*, i32** @__this_address, align 8
  store i32* %189, i32** %2, align 8
  br label %211

190:                                              ; preds = %178, %173
  %191 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %192 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %191, i32 0, i32 0
  %193 = call i64 @xfs_sb_version_hasreflink(%struct.TYPE_7__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %197 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @be32_to_cpu(i32 %198)
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %208, label %201

201:                                              ; preds = %195
  %202 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %203 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @be32_to_cpu(i32 %204)
  %206 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %201, %195
  %209 = load i32*, i32** @__this_address, align 8
  store i32* %209, i32** %2, align 8
  br label %211

210:                                              ; preds = %201, %190
  store i32* null, i32** %2, align 8
  br label %211

211:                                              ; preds = %210, %208, %188, %171, %153, %127, %87, %44, %34, %23
  %212 = load i32*, i32** %2, align 8
  ret i32* %212
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_7__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i32 @xfs_log_check_lsn(%struct.xfs_mount*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_verify_magic(%struct.xfs_buf*, i32) #1

declare dso_local i64 @XFS_AGF_GOOD_VERSION(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_agfl_size(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(%struct.TYPE_7__*) #1

declare dso_local i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_7__*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
