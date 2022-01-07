; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_21__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32, i32 }

@ENOATTR = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_DA_OP_ADDNAME = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ILOG_ADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_remove(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %14 = call i32 @trace_xfs_attr_sf_remove(%struct.TYPE_26__* %13)
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %12, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %11, align 8
  store i32 4, i32* %6, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %4, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i64 0
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %5, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %75, %1
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = call i32 @XFS_ATTR_SF_ENTSIZE(%struct.TYPE_28__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %75

51:                                               ; preds = %40
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @memcmp(i32 %54, i32 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %75

64:                                               ; preds = %51
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @xfs_attr_namesp_match(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  br label %83

75:                                               ; preds = %73, %63, %50
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %77 = call %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__* %76)
  store %struct.TYPE_28__* %77, %struct.TYPE_28__** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %36

83:                                               ; preds = %74, %36
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ENOATTR, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %221

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be16_to_cpu(i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %90
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = bitcast %struct.TYPE_27__* %103 to i8*
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %109 = bitcast %struct.TYPE_27__* %108 to i8*
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @memmove(i8* %107, i8* %112, i32 %115)
  br label %117

117:                                              ; preds = %102, %90
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 0, %126
  %128 = call i32 @be16_add_cpu(i32* %125, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp eq i64 %133, 4
  br i1 %134, label %135, label %162

135:                                              ; preds = %117
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %135
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @XFS_DA_OP_ADDNAME, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @xfs_attr_fork_remove(%struct.TYPE_25__* %157, i32 %160)
  br label %215

162:                                              ; preds = %149, %142, %135, %117
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 0, %164
  %166 = load i32, i32* @XFS_ATTR_FORK, align 4
  %167 = call i32 @xfs_idata_realloc(%struct.TYPE_25__* %163, i32 %165, i32 %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @xfs_attr_shortform_bytesfit(%struct.TYPE_25__* %168, i32 %169)
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ASSERT(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ugt i64 %180, 4
  br i1 %181, label %203, label %182

182:                                              ; preds = %162
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @XFS_DA_OP_ADDNAME, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %182
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %189
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %202 = icmp eq i64 %200, %201
  br label %203

203:                                              ; preds = %196, %189, %182, %162
  %204 = phi i1 [ true, %189 ], [ true, %182 ], [ true, %162 ], [ %202, %196 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @ASSERT(i32 %205)
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %211 = load i32, i32* @XFS_ILOG_CORE, align 4
  %212 = load i32, i32* @XFS_ILOG_ADATA, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @xfs_trans_log_inode(i32 %209, %struct.TYPE_25__* %210, i32 %213)
  br label %215

215:                                              ; preds = %203, %156
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @xfs_sbversion_add_attr2(%struct.TYPE_24__* %216, i32 %219)
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %215, %87
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @trace_xfs_attr_sf_remove(%struct.TYPE_26__*) #1

declare dso_local i32 @XFS_ATTR_SF_ENTSIZE(%struct.TYPE_28__*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @xfs_attr_namesp_match(i32, i32) #1

declare dso_local %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_attr_fork_remove(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @xfs_attr_shortform_bytesfit(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_sbversion_add_attr2(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
