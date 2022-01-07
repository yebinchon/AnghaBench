; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, i32, i32, %struct.page*, i32 }
%struct.page = type { i32 }
%struct.f2fs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NIDS_PER_BLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*, i32, i32, i32)* @truncate_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_nodes(%struct.dnode_of_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dnode_of_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dnode_of_data, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.f2fs_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %19 = bitcast %struct.dnode_of_data* %10 to i8*
  %20 = bitcast %struct.dnode_of_data* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  store i32 0, i32* %15, align 4
  %21 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %22 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %212

28:                                               ; preds = %4
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %30 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %33 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %36 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @trace_f2fs_truncate_nodes_enter(i32 %31, i64 %34, i32 %37)
  %39 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @F2FS_I_SB(i32 %41)
  %43 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %44 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.page* @f2fs_get_node_page(i32 %42, i64 %45)
  store %struct.page* %46, %struct.page** %11, align 8
  %47 = load %struct.page*, %struct.page** %11, align 8
  %48 = call i64 @IS_ERR(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %28
  %51 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %52 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.page*, %struct.page** %11, align 8
  %55 = call i32 @PTR_ERR(%struct.page* %54)
  %56 = call i32 @trace_f2fs_truncate_nodes_exit(i32 %53, i32 %55)
  %57 = load %struct.page*, %struct.page** %11, align 8
  %58 = call i32 @PTR_ERR(%struct.page* %57)
  store i32 %58, i32* %5, align 4
  br label %212

59:                                               ; preds = %28
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %63 = call i32 @f2fs_ra_node_pages(%struct.page* %60, i32 %61, i32 %62)
  %64 = load %struct.page*, %struct.page** %11, align 8
  %65 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %64)
  store %struct.f2fs_node* %65, %struct.f2fs_node** %12, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %109

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %103, %68
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %70
  %75 = load %struct.f2fs_node*, %struct.f2fs_node** %12, align 8
  %76 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %103

87:                                               ; preds = %74
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = call i32 @truncate_dnode(%struct.dnode_of_data* %10)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %203

94:                                               ; preds = %87
  %95 = load %struct.page*, %struct.page** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @set_nid(%struct.page* %95, i32 %96, i32 0, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %101 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %70

108:                                              ; preds = %70
  br label %178

109:                                              ; preds = %59
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = add i32 %110, %114
  %116 = add i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %173, %109
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %176

122:                                              ; preds = %118
  %123 = load %struct.f2fs_node*, %struct.f2fs_node** %12, align 8
  %124 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le32_to_cpu(i32 %130)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %122
  %135 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %14, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %14, align 4
  br label %173

139:                                              ; preds = %122
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @truncate_nodes(%struct.dnode_of_data* %10, i32 %142, i32 0, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %148 = add nsw i32 %147, 1
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %139
  %151 = load %struct.page*, %struct.page** %11, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i64 @set_nid(%struct.page* %151, i32 %152, i32 0, i32 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %157 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %156, i32 0, i32 1
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %14, align 4
  br label %172

162:                                              ; preds = %139
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @ENOENT, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %203

171:                                              ; preds = %165, %162
  br label %172

172:                                              ; preds = %171, %158
  br label %173

173:                                              ; preds = %172, %134
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %118

176:                                              ; preds = %118
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %176, %108
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %178
  %182 = load %struct.page*, %struct.page** %11, align 8
  %183 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %184 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %183, i32 0, i32 3
  store %struct.page* %182, %struct.page** %184, align 8
  %185 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %186 = call i32 @truncate_node(%struct.dnode_of_data* %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %203

190:                                              ; preds = %181
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %196

193:                                              ; preds = %178
  %194 = load %struct.page*, %struct.page** %11, align 8
  %195 = call i32 @f2fs_put_page(%struct.page* %194, i32 1)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %198 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @trace_f2fs_truncate_nodes_exit(i32 %199, i32 %200)
  %202 = load i32, i32* %15, align 4
  store i32 %202, i32* %5, align 4
  br label %212

203:                                              ; preds = %189, %170, %93
  %204 = load %struct.page*, %struct.page** %11, align 8
  %205 = call i32 @f2fs_put_page(%struct.page* %204, i32 1)
  %206 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %207 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @trace_f2fs_truncate_nodes_exit(i32 %208, i32 %209)
  %211 = load i32, i32* %17, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %203, %196, %50, %25
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace_f2fs_truncate_nodes_enter(i32, i64, i32) #2

declare dso_local %struct.page* @f2fs_get_node_page(i32, i64) #2

declare dso_local i32 @F2FS_I_SB(i32) #2

declare dso_local i64 @IS_ERR(%struct.page*) #2

declare dso_local i32 @trace_f2fs_truncate_nodes_exit(i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.page*) #2

declare dso_local i32 @f2fs_ra_node_pages(%struct.page*, i32, i32) #2

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #2

declare dso_local i64 @le32_to_cpu(i32) #2

declare dso_local i32 @truncate_dnode(%struct.dnode_of_data*) #2

declare dso_local i64 @set_nid(%struct.page*, i32, i32, i32) #2

declare dso_local i32 @truncate_node(%struct.dnode_of_data*) #2

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
