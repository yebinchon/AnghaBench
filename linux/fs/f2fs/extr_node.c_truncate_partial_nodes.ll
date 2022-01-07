; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_partial_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_partial_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i8*, %struct.page* }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32* }

@NODE_DIR1_BLOCK = common dso_local global i32 0, align 4
@NIDS_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*, %struct.f2fs_inode*, i32*, i32)* @truncate_partial_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_partial_nodes(%struct.dnode_of_data* %0, %struct.f2fs_inode* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dnode_of_data*, align 8
  %7 = alloca %struct.f2fs_inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.page*], align 16
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %6, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %15, align 4
  %18 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %19 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NODE_DIR1_BLOCK, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %32 = load i8*, i8** %31, align 16
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %214

35:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %43 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @F2FS_I_SB(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call %struct.page* @f2fs_get_node_page(i32 %45, i8* %49)
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %52
  store %struct.page* %50, %struct.page** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %55
  %57 = load %struct.page*, %struct.page** %56, align 8
  %58 = call i64 @IS_ERR(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %41
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %62
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.page* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %191

68:                                               ; preds = %41
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %70
  %72 = load %struct.page*, %struct.page** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @get_nid(%struct.page* %72, i32 %78, i32 0)
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %82
  store i8* %79, i8** %83, align 8
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %36

87:                                               ; preds = %36
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %99 = call i32 @f2fs_ra_node_pages(%struct.page* %91, i32 %97, i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %141, %87
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %106
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %112
  %114 = load %struct.page*, %struct.page** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i8* @get_nid(%struct.page* %114, i32 %115, i32 0)
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  br label %141

120:                                              ; preds = %110
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %123 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %125 = call i32 @truncate_dnode(%struct.dnode_of_data* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %191

129:                                              ; preds = %120
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %131
  %133 = load %struct.page*, %struct.page** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @set_nid(%struct.page* %133, i32 %134, i32 0, i32 0)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %139 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %129
  br label %141

141:                                              ; preds = %140, %119
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %106

144:                                              ; preds = %106
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %144
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %154
  %156 = load %struct.page*, %struct.page** %155, align 8
  %157 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %158 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %157, i32 0, i32 3
  store %struct.page* %156, %struct.page** %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %164 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %166 = call i32 @truncate_node(%struct.dnode_of_data* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %191

170:                                              ; preds = %152
  br label %177

171:                                              ; preds = %144
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %173
  %175 = load %struct.page*, %struct.page** %174, align 8
  %176 = call i32 @f2fs_put_page(%struct.page* %175, i32 1)
  br label %177

177:                                              ; preds = %171, %170
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 0, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %15, align 4
  br label %191

191:                                              ; preds = %177, %169, %128, %60
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %202, %191
  %194 = load i32, i32* %14, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %10, i64 0, i64 %198
  %200 = load %struct.page*, %struct.page** %199, align 8
  %201 = call i32 @f2fs_put_page(%struct.page* %200, i32 1)
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %14, align 4
  br label %193

205:                                              ; preds = %193
  %206 = load %struct.dnode_of_data*, %struct.dnode_of_data** %6, align 8
  %207 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @trace_f2fs_truncate_partial_nodes(i32 %208, i8** %209, i32 %210, i32 %211)
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %205, %34
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(i32, i8*) #1

declare dso_local i32 @F2FS_I_SB(i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @get_nid(%struct.page*, i32, i32) #1

declare dso_local i32 @f2fs_ra_node_pages(%struct.page*, i32, i32) #1

declare dso_local i32 @truncate_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @set_nid(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @truncate_node(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @trace_f2fs_truncate_partial_nodes(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
