; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, i64, i64, i64, i32, i32, i32*, i32 }
%struct.xfs_trans_res = type { i64, i64, i32 }

@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@PF_MEMALLOC_NOFS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANSACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_trans_res*, i64, i64)* @xfs_trans_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_trans_reserve(%struct.xfs_trans* %0, %struct.xfs_trans_res* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_trans_res*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store %struct.xfs_trans_res* %1, %struct.xfs_trans_res** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %21 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %20, i32 0, i32 4
  %22 = load i32, i32* @PF_MEMALLOC_NOFS, align 4
  %23 = call i32 @current_set_flags_nested(i32* %21, i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %28 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = sub nsw i32 0, %31
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @xfs_mod_fdblocks(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %39 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %38, i32 0, i32 4
  %40 = load i32, i32* @PF_MEMALLOC_NOFS, align 4
  %41 = call i32 @current_restore_flags_nested(i32* %39, i32 %40)
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %233

44:                                               ; preds = %26
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %44, %4
  %51 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %52 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %165

55:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  %56 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %62 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %65 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i1 [ true, %55 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %73 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %78 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %81 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i1 [ true, %68 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %89 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %84
  %95 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %96 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %97 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  store i32 1, i32* %12, align 4
  br label %116

100:                                              ; preds = %84
  %101 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %102 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %108 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  br label %116

116:                                              ; preds = %100, %94
  %117 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %118 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %123 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %126 = and i32 %124, %125
  %127 = call i32 @ASSERT(i32 %126)
  %128 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %129 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %132 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @xfs_log_regrant(i32 %130, i32* %133)
  store i32 %134, i32* %10, align 4
  br label %150

135:                                              ; preds = %116
  %136 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %137 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %140 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %143 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %146 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %145, i32 0, i32 6
  %147 = load i32, i32* @XFS_TRANSACTION, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @xfs_log_reserve(i32 %138, i64 %141, i64 %144, i32** %146, i32 %147, i32 %148)
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %135, %121
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %214

154:                                              ; preds = %150
  %155 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %156 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %159 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %161 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %164 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %154, %50
  %166 = load i64, i64* %9, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %189

168:                                              ; preds = %165
  %169 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %170 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* %9, align 8
  %173 = trunc i64 %172 to i32
  %174 = sub nsw i32 0, %173
  %175 = call i32 @xfs_mod_frextents(i32 %171, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = load i32, i32* @ENOSPC, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %10, align 4
  br label %190

181:                                              ; preds = %168
  %182 = load i64, i64* %9, align 8
  %183 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %184 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %182
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 8
  br label %189

189:                                              ; preds = %181, %165
  store i32 0, i32* %5, align 4
  br label %233

190:                                              ; preds = %178
  %191 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %7, align 8
  %192 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %190
  %196 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %197 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %200 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @xfs_log_done(i32 %198, i32* %201, i32* null, i32 0)
  %203 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %204 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %203, i32 0, i32 6
  store i32* null, i32** %204, align 8
  %205 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %206 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %210 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %195, %190
  br label %214

214:                                              ; preds = %213, %153
  %215 = load i64, i64* %8, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %219 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load i64, i64* %8, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @xfs_mod_fdblocks(i32 %220, i32 %222, i32 %223)
  %225 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %226 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %225, i32 0, i32 1
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %217, %214
  %228 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %229 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %228, i32 0, i32 4
  %230 = load i32, i32* @PF_MEMALLOC_NOFS, align 4
  %231 = call i32 @current_restore_flags_nested(i32* %229, i32 %230)
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %227, %189, %37
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @current_set_flags_nested(i32*, i32) #1

declare dso_local i32 @xfs_mod_fdblocks(i32, i32, i32) #1

declare dso_local i32 @current_restore_flags_nested(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_log_regrant(i32, i32*) #1

declare dso_local i32 @xfs_log_reserve(i32, i64, i64, i32**, i32, i32) #1

declare dso_local i32 @xfs_mod_frextents(i32, i32) #1

declare dso_local i32 @xfs_log_done(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
