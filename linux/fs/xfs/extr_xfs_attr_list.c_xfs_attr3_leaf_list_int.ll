; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr3_leaf_list_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_attr_list.c_xfs_attr3_leaf_list_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr_list_context = type { i64, i32, i64, i32 (%struct.xfs_attr_list_context*, i32, i8*, i32, i32)*, i64, %struct.attrlist_cursor_kern*, %struct.TYPE_6__* }
%struct.attrlist_cursor_kern = type { i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr3_leaf_list_int(%struct.xfs_buf* %0, %struct.xfs_attr_list_context* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_attr_list_context*, align 8
  %5 = alloca %struct.attrlist_cursor_kern*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %8 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %9 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_mount*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.xfs_attr_list_context* %1, %struct.xfs_attr_list_context** %4, align 8
  %17 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %17, i32 0, i32 6
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %11, align 8
  %22 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %23 = call i32 @trace_xfs_attr_list_leaf(%struct.xfs_attr_list_context* %22)
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %24, i32 0, i32 0
  %26 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %25, align 8
  store %struct.xfs_attr_leafblock* %26, %struct.xfs_attr_leafblock** %6, align 8
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %31 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %29, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_attr_leafblock* %30)
  %32 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %33 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %32)
  store %struct.xfs_attr_leaf_entry* %33, %struct.xfs_attr_leaf_entry** %8, align 8
  %34 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %34, i32 0, i32 5
  %36 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %35, align 8
  store %struct.attrlist_cursor_kern* %36, %struct.attrlist_cursor_kern** %5, align 8
  %37 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %38 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %104

43:                                               ; preds = %2
  %44 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %45 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %44, i64 0
  store %struct.xfs_attr_leaf_entry* %45, %struct.xfs_attr_leaf_entry** %9, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %90, %43
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %46
  %52 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %53 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be32_to_cpu(i32 %54)
  %56 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %57 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %62 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %95

71:                                               ; preds = %60
  %72 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %73 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %89

76:                                               ; preds = %51
  %77 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %78 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @be32_to_cpu(i32 %79)
  %81 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %82 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %87 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %95

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %92 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %91, i32 1
  store %struct.xfs_attr_leaf_entry* %92, %struct.xfs_attr_leaf_entry** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %46

95:                                               ; preds = %85, %68, %46
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %102 = call i32 @trace_xfs_attr_list_notfound(%struct.xfs_attr_list_context* %101)
  br label %214

103:                                              ; preds = %95
  br label %107

104:                                              ; preds = %2
  %105 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %106 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %105, i64 0
  store %struct.xfs_attr_leaf_entry* %106, %struct.xfs_attr_leaf_entry** %9, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %109 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %206, %107
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %211

115:                                              ; preds = %110
  %116 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %117 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @be32_to_cpu(i32 %118)
  %120 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %121 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %126 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @be32_to_cpu(i32 %127)
  %129 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %130 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %132 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %124, %115
  %134 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %135 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %142 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ATTR_INCOMPLETE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %206

148:                                              ; preds = %140, %133
  %149 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %150 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %148
  %156 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call %struct.TYPE_8__* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock* %156, i32 %157)
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %15, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %12, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %13, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @be16_to_cpu(i32 %167)
  store i32 %168, i32* %14, align 4
  br label %184

169:                                              ; preds = %148
  %170 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call %struct.TYPE_7__* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %170, i32 %171)
  store %struct.TYPE_7__* %172, %struct.TYPE_7__** %16, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %12, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %13, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @be32_to_cpu(i32 %181)
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %169, %155
  %185 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %186 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %185, i32 0, i32 3
  %187 = load i32 (%struct.xfs_attr_list_context*, i32, i8*, i32, i32)*, i32 (%struct.xfs_attr_list_context*, i32, i8*, i32, i32)** %186, align 8
  %188 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %189 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %190 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %12, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 %187(%struct.xfs_attr_list_context* %188, i32 %191, i8* %192, i32 %193, i32 %194)
  %196 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %197 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  br label %211

201:                                              ; preds = %184
  %202 = load %struct.attrlist_cursor_kern*, %struct.attrlist_cursor_kern** %5, align 8
  %203 = getelementptr inbounds %struct.attrlist_cursor_kern, %struct.attrlist_cursor_kern* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %201, %147
  %207 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %9, align 8
  %208 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %207, i32 1
  store %struct.xfs_attr_leaf_entry* %208, %struct.xfs_attr_leaf_entry** %9, align 8
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %110

211:                                              ; preds = %200, %110
  %212 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %4, align 8
  %213 = call i32 @trace_xfs_attr_list_leaf_end(%struct.xfs_attr_list_context* %212)
  br label %214

214:                                              ; preds = %211, %100
  ret void
}

declare dso_local i32 @trace_xfs_attr_list_leaf(%struct.xfs_attr_list_context*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(i32, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @trace_xfs_attr_list_notfound(%struct.xfs_attr_list_context*) #1

declare dso_local %struct.TYPE_8__* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i32 @trace_xfs_attr_list_leaf_end(%struct.xfs_attr_list_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
