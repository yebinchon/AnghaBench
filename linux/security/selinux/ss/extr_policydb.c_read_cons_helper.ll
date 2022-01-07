; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_read_cons_helper.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_read_cons_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.constraint_node = type { %struct.constraint_expr*, i8*, %struct.constraint_node* }
%struct.constraint_expr = type { i32, i32, i8*, i32, i8*, %struct.constraint_expr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CEXPR_MAXDEPTH = common dso_local global i32 0, align 4
@CEXPR_XTARGET = common dso_local global i32 0, align 4
@POLICYDB_VERSION_CONSTRAINT_NAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.constraint_node**, i32, i32, i8*)* @read_cons_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cons_helper(%struct.policydb* %0, %struct.constraint_node** %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.constraint_node**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.constraint_node*, align 8
  %13 = alloca %struct.constraint_node*, align 8
  %14 = alloca %struct.constraint_expr*, align 8
  %15 = alloca %struct.constraint_expr*, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %7, align 8
  store %struct.constraint_node** %1, %struct.constraint_node*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.constraint_node* null, %struct.constraint_node** %13, align 8
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %225, %5
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %228

26:                                               ; preds = %22
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 24, i32 %27)
  %29 = bitcast i8* %28 to %struct.constraint_node*
  store %struct.constraint_node* %29, %struct.constraint_node** %12, align 8
  %30 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  %31 = icmp ne %struct.constraint_node* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %229

35:                                               ; preds = %26
  %36 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %37 = icmp ne %struct.constraint_node* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  %40 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %41 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %40, i32 0, i32 2
  store %struct.constraint_node* %39, %struct.constraint_node** %41, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  %44 = load %struct.constraint_node**, %struct.constraint_node*** %8, align 8
  store %struct.constraint_node* %43, %struct.constraint_node** %44, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @next_entry(i32* %46, i8* %47, i32 8)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %6, align 4
  br label %229

53:                                               ; preds = %45
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  %58 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %17, align 4
  store %struct.constraint_expr* null, %struct.constraint_expr** %15, align 8
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %214, %53
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %217

67:                                               ; preds = %63
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kzalloc(i32 40, i32 %68)
  %70 = bitcast i8* %69 to %struct.constraint_expr*
  store %struct.constraint_expr* %70, %struct.constraint_expr** %14, align 8
  %71 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %72 = icmp ne %struct.constraint_expr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %229

76:                                               ; preds = %67
  %77 = load %struct.constraint_expr*, %struct.constraint_expr** %15, align 8
  %78 = icmp ne %struct.constraint_expr* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %81 = load %struct.constraint_expr*, %struct.constraint_expr** %15, align 8
  %82 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %81, i32 0, i32 5
  store %struct.constraint_expr* %80, %struct.constraint_expr** %82, align 8
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %85 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  %86 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %85, i32 0, i32 0
  store %struct.constraint_expr* %84, %struct.constraint_expr** %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @next_entry(i32* %88, i8* %89, i32 12)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %6, align 4
  br label %229

95:                                               ; preds = %87
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %101 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le32_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %107 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le32_to_cpu(i32 %109)
  %111 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %112 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %114 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %209 [
    i32 129, label %116
    i32 132, label %123
    i32 128, label %123
    i32 131, label %132
    i32 130, label %143
  ]

116:                                              ; preds = %95
  %117 = load i32, i32* %21, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %229

122:                                              ; preds = %116
  br label %212

123:                                              ; preds = %95, %95
  %124 = load i32, i32* %21, align 4
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %229

129:                                              ; preds = %123
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %21, align 4
  br label %212

132:                                              ; preds = %95
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %229

140:                                              ; preds = %132
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  br label %212

143:                                              ; preds = %95
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %143
  %147 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %148 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CEXPR_XTARGET, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %229

156:                                              ; preds = %146, %143
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %159 = sub nsw i32 %158, 1
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %229

164:                                              ; preds = %156
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %21, align 4
  %167 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %168 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %167, i32 0, i32 3
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @ebitmap_read(i32* %168, i8* %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %6, align 4
  br label %229

175:                                              ; preds = %164
  %176 = load %struct.policydb*, %struct.policydb** %7, align 8
  %177 = getelementptr inbounds %struct.policydb, %struct.policydb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @POLICYDB_VERSION_CONSTRAINT_NAMES, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %175
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = call i8* @kzalloc(i32 1, i32 %182)
  %184 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %185 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %187 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %229

193:                                              ; preds = %181
  %194 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %195 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @type_set_init(i8* %196)
  %198 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  %199 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @type_set_read(i8* %200, i8* %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %193
  %206 = load i32, i32* %18, align 4
  store i32 %206, i32* %6, align 4
  br label %229

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %175
  br label %212

209:                                              ; preds = %95
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %6, align 4
  br label %229

212:                                              ; preds = %208, %140, %129, %122
  %213 = load %struct.constraint_expr*, %struct.constraint_expr** %14, align 8
  store %struct.constraint_expr* %213, %struct.constraint_expr** %15, align 8
  br label %214

214:                                              ; preds = %212
  %215 = load i32, i32* %20, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %20, align 4
  br label %63

217:                                              ; preds = %63
  %218 = load i32, i32* %21, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %6, align 4
  br label %229

223:                                              ; preds = %217
  %224 = load %struct.constraint_node*, %struct.constraint_node** %12, align 8
  store %struct.constraint_node* %224, %struct.constraint_node** %13, align 8
  br label %225

225:                                              ; preds = %223
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %19, align 4
  br label %22

228:                                              ; preds = %22
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %228, %220, %209, %205, %190, %173, %161, %153, %137, %126, %119, %93, %73, %51, %32
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

declare dso_local i32 @type_set_init(i8*) #1

declare dso_local i32 @type_set_read(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
