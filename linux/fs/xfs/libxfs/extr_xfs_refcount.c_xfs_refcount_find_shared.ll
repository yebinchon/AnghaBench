; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_find_shared.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_find_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_refcount_irec = type { i64, i64 }

@NULLAGBLOCK = common dso_local global i64 0, align 8
@out_error = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_refcount_find_shared(%struct.xfs_btree_cur* %0, i64 %1, i64 %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.xfs_btree_cur*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_refcount_irec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @trace_xfs_refcount_find_shared(i32 %19, i32 %24, i64 %25, i64 %26)
  %28 = load i64, i64* @NULLAGBLOCK, align 8
  %29 = load i64*, i64** %10, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %11, align 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @xfs_refcount_lookup_le(%struct.xfs_btree_cur* %31, i64 %32, i32* %15)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %219

37:                                               ; preds = %6
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %42 = call i32 @xfs_btree_increment(%struct.xfs_btree_cur* %41, i32 0, i32* %15)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %219

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %205

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %53 = call i32 @xfs_refcount_get_rec(%struct.xfs_btree_cur* %52, %struct.xfs_refcount_irec* %13, i32* %14)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %219

57:                                               ; preds = %51
  %58 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %59 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @out_error, align 4
  %65 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %60, i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %57
  %74 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %75 = call i32 @xfs_btree_increment(%struct.xfs_btree_cur* %74, i32 0, i32* %15)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %219

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %205

83:                                               ; preds = %79
  %84 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %85 = call i32 @xfs_refcount_get_rec(%struct.xfs_btree_cur* %84, %struct.xfs_refcount_irec* %13, i32* %14)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %219

89:                                               ; preds = %83
  %90 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %91 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* @out_error, align 4
  %97 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %89, %57
  %99 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %101, %102
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %205

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %112, %114
  %116 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, %115
  store i64 %118, i64* %116, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %111, %106
  %122 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %10, align 8
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i64*, i64** %10, align 8
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %129, %131
  %133 = call i64 @min(i64 %126, i64 %132)
  %134 = load i64*, i64** %11, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %121
  br label %205

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %190, %138
  %140 = load i64*, i64** %10, align 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %145, %146
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %149, label %204

149:                                              ; preds = %139
  %150 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %151 = call i32 @xfs_btree_increment(%struct.xfs_btree_cur* %150, i32 0, i32* %15)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %219

155:                                              ; preds = %149
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %204

159:                                              ; preds = %155
  %160 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %161 = call i32 @xfs_refcount_get_rec(%struct.xfs_btree_cur* %160, %struct.xfs_refcount_irec* %13, i32* %14)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %219

165:                                              ; preds = %159
  %166 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %167 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, 1
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* @out_error, align 4
  %173 = call i32 @XFS_WANT_CORRUPTED_GOTO(i32 %168, i32 %171, i32 %172)
  %174 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = add nsw i64 %176, %177
  %179 = icmp sge i64 %175, %178
  br i1 %179, label %189, label %180

180:                                              ; preds = %165
  %181 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** %11, align 8
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %184, %186
  %188 = icmp ne i64 %182, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %180, %165
  br label %204

190:                                              ; preds = %180
  %191 = load i64*, i64** %11, align 8
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %13, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %192, %194
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64*, i64** %10, align 8
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %198, %200
  %202 = call i64 @min(i64 %195, i64 %201)
  %203 = load i64*, i64** %11, align 8
  store i64 %202, i64* %203, align 8
  br label %139

204:                                              ; preds = %189, %158, %139
  br label %205

205:                                              ; preds = %204, %137, %105, %82, %49
  %206 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %207 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %210 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i64*, i64** %10, align 8
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %11, align 8
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @trace_xfs_refcount_find_shared_result(i32 %208, i32 %213, i64 %215, i64 %217)
  br label %219

219:                                              ; preds = %205, %164, %154, %88, %78, %56, %45, %36
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %224 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %227 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @_RET_IP_, align 4
  %233 = call i32 @trace_xfs_refcount_find_shared_error(i32 %225, i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %222, %219
  %235 = load i32, i32* %16, align 4
  ret i32 %235
}

declare dso_local i32 @trace_xfs_refcount_find_shared(i32, i32, i64, i64) #1

declare dso_local i32 @xfs_refcount_lookup_le(%struct.xfs_btree_cur*, i64, i32*) #1

declare dso_local i32 @xfs_btree_increment(%struct.xfs_btree_cur*, i32, i32*) #1

declare dso_local i32 @xfs_refcount_get_rec(%struct.xfs_btree_cur*, %struct.xfs_refcount_irec*, i32*) #1

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(i32, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @trace_xfs_refcount_find_shared_result(i32, i32, i64, i64) #1

declare dso_local i32 @trace_xfs_refcount_find_shared_error(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
