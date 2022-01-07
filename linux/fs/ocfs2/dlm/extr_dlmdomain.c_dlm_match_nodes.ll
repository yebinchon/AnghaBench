; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_match_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_match_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_query_nodeinfo = type { i32, i32, i32, %struct.dlm_node_info* }
%struct.dlm_node_info = type { i32, i64, i64 }
%struct.o2nm_node = type { i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Node %3d, %pI4:%u\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Domain %s: Node %d (%pI4:%u) registered in joining node %d but not in local node %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Domain %s: Node %d (%pI4:%u) registered in local node %d but not in joining node %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_query_nodeinfo*)* @dlm_match_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_match_nodes(%struct.dlm_ctxt* %0, %struct.dlm_query_nodeinfo* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_query_nodeinfo*, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca %struct.dlm_node_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_query_nodeinfo* %1, %struct.dlm_query_nodeinfo** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %17, i32 0, i32 3
  %19 = load %struct.dlm_node_info*, %struct.dlm_node_info** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %19, i64 %21
  %23 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %25, i32 0, i32 3
  %27 = load %struct.dlm_node_info*, %struct.dlm_node_info** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %30, i32 0, i32 1
  %32 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %32, i32 0, i32 3
  %34 = load %struct.dlm_node_info*, %struct.dlm_node_info** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ntohs(i64 %39)
  %41 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24, i64* %31, i32 %40)
  br label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %214, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @O2NM_MAX_NODES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ false, %46 ], [ %53, %50 ]
  br i1 %55, label %56, label %217

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.o2nm_node* @o2nm_get_node_by_num(i32 %57)
  store %struct.o2nm_node* %58, %struct.o2nm_node** %5, align 8
  store %struct.dlm_node_info* null, %struct.dlm_node_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %84, %56
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %67 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %66, i32 0, i32 3
  %68 = load %struct.dlm_node_info*, %struct.dlm_node_info** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %68, i64 %70
  %72 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %78 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %77, i32 0, i32 3
  %79 = load %struct.dlm_node_info*, %struct.dlm_node_info** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %79, i64 %81
  store %struct.dlm_node_info* %82, %struct.dlm_node_info** %6, align 8
  br label %87

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %59

87:                                               ; preds = %76, %59
  %88 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %89 = icmp ne %struct.o2nm_node* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %92 = icmp ne %struct.dlm_node_info* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  br label %214

94:                                               ; preds = %90, %87
  %95 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %96 = icmp ne %struct.o2nm_node* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %99 = icmp ne %struct.dlm_node_info* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97, %94
  %101 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %102 = icmp ne %struct.o2nm_node* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %105 = icmp ne %struct.dlm_node_info* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %97
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %106, %103, %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %109
  %113 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %114 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %117 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %112
  %121 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %122 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %125 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %120
  %129 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %130 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %133 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128, %120, %112
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %136, %128, %109
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %207

142:                                              ; preds = %139
  %143 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %144 = icmp ne %struct.dlm_node_info* %143, null
  br i1 %144, label %145, label %169

145:                                              ; preds = %142
  %146 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %147 = icmp ne %struct.o2nm_node* %146, null
  br i1 %147, label %169, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* @ML_ERROR, align 4
  %150 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %151 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %154 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %157 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %156, i32 0, i32 1
  %158 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %159 = getelementptr inbounds %struct.dlm_node_info, %struct.dlm_node_info* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @ntohs(i64 %160)
  %162 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %163 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %166 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, ...) @mlog(i32 %149, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %155, i64* %157, i32 %161, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %148, %145, %142
  %170 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %171 = icmp ne %struct.o2nm_node* %170, null
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %174 = icmp ne %struct.dlm_node_info* %173, null
  br i1 %174, label %196, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @ML_ERROR, align 4
  %177 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %178 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %181 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %184 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %183, i32 0, i32 2
  %185 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %186 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @ntohs(i64 %187)
  %189 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %190 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %4, align 8
  %193 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, ...) @mlog(i32 %176, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %182, i64* %184, i32 %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %175, %172, %169
  %197 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %198 = icmp ne %struct.o2nm_node* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load %struct.dlm_node_info*, %struct.dlm_node_info** %6, align 8
  %201 = icmp ne %struct.dlm_node_info* %200, null
  %202 = xor i1 %201, true
  br label %203

203:                                              ; preds = %199, %196
  %204 = phi i1 [ false, %196 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @BUG_ON(i32 %205)
  br label %207

207:                                              ; preds = %203, %139
  %208 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %209 = icmp ne %struct.o2nm_node* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %212 = call i32 @o2nm_node_put(%struct.o2nm_node* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %93
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %46

217:                                              ; preds = %54
  %218 = load i32, i32* %9, align 4
  ret i32 %218
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
