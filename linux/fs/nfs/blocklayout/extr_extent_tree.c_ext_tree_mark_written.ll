; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_mark_written.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_mark_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_layout = type { i64, i32, i32, %struct.rb_root }
%struct.rb_root = type { i32 }
%struct.pnfs_block_extent = type { i64, i64, i64, i32, i32 }

@tmp = common dso_local global i32 0, align 4
@PNFS_BLOCK_INVALID_DATA = common dso_local global i64 0, align 8
@EXTENT_WRITTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_tree_mark_written(%struct.pnfs_block_layout* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pnfs_block_layout*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rb_root*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pnfs_block_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pnfs_block_extent*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pnfs_block_extent*, align 8
  %16 = alloca i64, align 8
  store %struct.pnfs_block_layout* %0, %struct.pnfs_block_layout** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %18 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %17, i32 0, i32 3
  store %struct.rb_root* %18, %struct.rb_root** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @tmp, align 4
  %23 = call i32 @LIST_HEAD(i32 %22)
  %24 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %25 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %28 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %27, i32 0, i32 2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @__ext_tree_remove(i32* %28, i64 %29, i64 %30, i32* @tmp)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %202

35:                                               ; preds = %4
  %36 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root* %36, i64 %37)
  store %struct.pnfs_block_extent* %38, %struct.pnfs_block_extent** %11, align 8
  br label %39

39:                                               ; preds = %198, %35
  %40 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %41 = icmp ne %struct.pnfs_block_extent* %40, null
  br i1 %41, label %42, label %201

42:                                               ; preds = %39
  %43 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %44 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %201

49:                                               ; preds = %42
  %50 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %51 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PNFS_BLOCK_INVALID_DATA, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %57 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %49
  br label %198

61:                                               ; preds = %55
  %62 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %63 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %61
  %68 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %69 = call %struct.pnfs_block_extent* @ext_tree_prev(%struct.pnfs_block_extent* %68)
  store %struct.pnfs_block_extent* %69, %struct.pnfs_block_extent** %13, align 8
  %70 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %13, align 8
  %71 = icmp ne %struct.pnfs_block_extent* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %13, align 8
  %74 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %75 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %73, %struct.pnfs_block_extent* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %80 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %13, align 8
  %85 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %92 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %97 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load i64, i64* %14, align 8
  %103 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %104 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  br label %118

109:                                              ; preds = %72, %67
  %110 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %111 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @ext_tree_split(%struct.rb_root* %110, %struct.pnfs_block_extent* %111, i64 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %202

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %77
  br label %119

119:                                              ; preds = %118, %61
  %120 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %121 = call i64 @ext_f_end(%struct.pnfs_block_extent* %120)
  %122 = load i64, i64* %10, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %176

124:                                              ; preds = %119
  %125 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %126 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %125)
  store %struct.pnfs_block_extent* %126, %struct.pnfs_block_extent** %15, align 8
  %127 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %128 = icmp ne %struct.pnfs_block_extent* %127, null
  br i1 %128, label %129, label %166

129:                                              ; preds = %124
  %130 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %131 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %132 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %130, %struct.pnfs_block_extent* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %129
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %137 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %142 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %149 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %154 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load i64, i64* %16, align 8
  %160 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %15, align 8
  %161 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  br label %175

166:                                              ; preds = %129, %124
  %167 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %168 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @ext_tree_split(%struct.rb_root* %167, %struct.pnfs_block_extent* %168, i64 %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %202

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %134
  br label %176

176:                                              ; preds = %175, %119
  %177 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %178 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %6, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %176
  %183 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %184 = call i64 @ext_f_end(%struct.pnfs_block_extent* %183)
  %185 = load i64, i64* %10, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load i64, i64* @EXTENT_WRITTEN, align 8
  %189 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %190 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %192 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %193 = call %struct.pnfs_block_extent* @ext_try_to_merge_left(%struct.rb_root* %191, %struct.pnfs_block_extent* %192)
  store %struct.pnfs_block_extent* %193, %struct.pnfs_block_extent** %11, align 8
  %194 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %195 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %196 = call %struct.pnfs_block_extent* @ext_try_to_merge_right(%struct.rb_root* %194, %struct.pnfs_block_extent* %195)
  store %struct.pnfs_block_extent* %196, %struct.pnfs_block_extent** %11, align 8
  br label %197

197:                                              ; preds = %187, %182, %176
  br label %198

198:                                              ; preds = %197, %60
  %199 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %200 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %199)
  store %struct.pnfs_block_extent* %200, %struct.pnfs_block_extent** %11, align 8
  br label %39

201:                                              ; preds = %48, %39
  br label %202

202:                                              ; preds = %201, %173, %116, %34
  %203 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %204 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i64, i64* %8, align 8
  %210 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %211 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %208, %202
  %213 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %214 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %213, i32 0, i32 1
  %215 = call i32 @spin_unlock(i32* %214)
  %216 = call i32 @__ext_put_deviceids(i32* @tmp)
  %217 = load i32, i32* %12, align 4
  ret i32 %217
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ext_tree_remove(i32*, i64, i64, i32*) #1

declare dso_local %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root*, i64) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_prev(%struct.pnfs_block_extent*) #1

declare dso_local i64 @ext_can_merge(%struct.pnfs_block_extent*, %struct.pnfs_block_extent*) #1

declare dso_local i32 @ext_tree_split(%struct.rb_root*, %struct.pnfs_block_extent*, i64) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_try_to_merge_left(%struct.rb_root*, %struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_try_to_merge_right(%struct.rb_root*, %struct.pnfs_block_extent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__ext_put_deviceids(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
