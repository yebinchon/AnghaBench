; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i32, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i32, i32*, %struct.ebitmap_node* }

@BITS_PER_U64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"SELinux: ebitmap: map size %u does not match my size %zd (high bit was %d)\0A\00", align 1
@EBITMAP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SELinux: ebitmap: truncated map\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"SELinux: ebitmap start bit (%d) is not a multiple of the map unit size (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"SELinux: ebitmap start bit (%d) is beyond the end of the bitmap (%u)\0A\00", align 1
@ebitmap_node_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"SELinux: ebitmap: out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"SELinux: ebitmap: start bit %d comes after start bit %d\0A\00", align 1
@EBITMAP_UNIT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_read(%struct.ebitmap* %0, i8* %1) #0 {
  %3 = alloca %struct.ebitmap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ebitmap_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %5, align 8
  %17 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %18 = call i32 @ebitmap_init(%struct.ebitmap* %17)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @next_entry(i32* %19, i8* %20, i32 12)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %216

25:                                               ; preds = %2
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le32_to_cpu(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %35 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BITS_PER_U64, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BITS_PER_U64, align 4
  %46 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %47 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %48)
  br label %218

50:                                               ; preds = %25
  %51 = load i32, i32* @EBITMAP_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %54 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %58 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EBITMAP_SIZE, align 4
  %61 = srem i32 %59, %60
  %62 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %63 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %67 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %50
  %71 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %72 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %71, i32 0, i32 1
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %72, align 8
  br label %215

73:                                               ; preds = %50
  %74 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %75 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %218

82:                                               ; preds = %78, %73
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %211, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %214

87:                                               ; preds = %83
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @next_entry(i32* %10, i8* %88, i32 4)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %218

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %218

107:                                              ; preds = %94
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %110 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp sgt i32 %108, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %118 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %121)
  br label %218

123:                                              ; preds = %107
  %124 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %125 = icmp ne %struct.ebitmap_node* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %129 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @EBITMAP_SIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp sge i32 %127, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %126, %123
  %135 = load i32, i32* @ebitmap_node_cachep, align 4
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call %struct.ebitmap_node* @kmem_cache_zalloc(i32 %135, i32 %136)
  store %struct.ebitmap_node* %137, %struct.ebitmap_node** %16, align 8
  %138 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  %139 = icmp ne %struct.ebitmap_node* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %14, align 4
  br label %218

144:                                              ; preds = %134
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @EBITMAP_SIZE, align 4
  %148 = srem i32 %146, %147
  %149 = sub nsw i32 %145, %148
  %150 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  %151 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %153 = icmp ne %struct.ebitmap_node* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %144
  %155 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  %156 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %157 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %156, i32 0, i32 2
  store %struct.ebitmap_node* %155, %struct.ebitmap_node** %157, align 8
  br label %162

158:                                              ; preds = %144
  %159 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  %160 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %161 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %160, i32 0, i32 1
  store %struct.ebitmap_node* %159, %struct.ebitmap_node** %161, align 8
  br label %162

162:                                              ; preds = %158, %154
  %163 = load %struct.ebitmap_node*, %struct.ebitmap_node** %16, align 8
  store %struct.ebitmap_node* %163, %struct.ebitmap_node** %5, align 8
  br label %177

164:                                              ; preds = %126
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %167 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %173 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %171, i32 %174)
  br label %218

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %162
  %178 = load i8*, i8** %4, align 8
  %179 = call i32 @next_entry(i32* %12, i8* %178, i32 4)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %218

184:                                              ; preds = %177
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @le64_to_cpu(i32 %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %189 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %187, %190
  %192 = load i32, i32* @EBITMAP_UNIT_SIZE, align 4
  %193 = sdiv i32 %191, %192
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %197, %184
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = trunc i64 %199 to i32
  %201 = load %struct.ebitmap_node*, %struct.ebitmap_node** %5, align 8
  %202 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 %200, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @EBITMAP_SHIFT_UNIT_SIZE(i32 %208)
  store i32 %209, i32* %11, align 4
  br label %194

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %83

214:                                              ; preds = %83
  br label %215

215:                                              ; preds = %214, %70
  store i32 0, i32* %14, align 4
  br label %216

216:                                              ; preds = %224, %215, %24
  %217 = load i32, i32* %14, align 4
  ret i32 %217

218:                                              ; preds = %182, %170, %140, %115, %103, %92, %81, %43
  %219 = load i32, i32* %14, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %14, align 4
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.ebitmap*, %struct.ebitmap** %3, align 8
  %226 = call i32 @ebitmap_destroy(%struct.ebitmap* %225)
  br label %216
}

declare dso_local i32 @ebitmap_init(%struct.ebitmap*) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.ebitmap_node* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @EBITMAP_SHIFT_UNIT_SIZE(i32) #1

declare dso_local i32 @ebitmap_destroy(%struct.ebitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
