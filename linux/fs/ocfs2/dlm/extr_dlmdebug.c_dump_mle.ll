; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c_dump_mle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c_dump_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_master_list_entry = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@DLM_MLE_MASTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MAS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MIG\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\09%3s\09mas=%3u\09new=%3u\09evt=%1d\09use=%1d\09ref=%3d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Maybe=\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Vote=\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Response=\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Node=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_master_list_entry*, i8*, i32)* @dump_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_mle(%struct.dlm_master_list_entry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.dlm_master_list_entry* %0, %struct.dlm_master_list_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DLM_MLE_MASTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %23

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i64 @stringify_lockname(i32 %27, i32 %30, i8* %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %55 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %58 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %57, i32 0, i32 9
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %64 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %71 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %70, i32 0, i32 7
  %72 = call i32 @kref_read(i32* %71)
  %73 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i32 %62, i32 %69, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %91 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @O2NM_MAX_NODES, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i64 @stringify_nodemap(i32 %92, i32 %93, i8* %97, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %109, i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %7, align 4
  %130 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %131 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @O2NM_MAX_NODES, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i64 @stringify_nodemap(i32 %132, i32 %133, i8* %137, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %7, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %149, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %161, i32 %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %7, align 4
  %170 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %171 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @O2NM_MAX_NODES, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i64 @stringify_nodemap(i32 %172, i32 %173, i8* %177, i32 %180)
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %7, align 4
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %190, %191
  %193 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %189, i32 %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %7, align 4
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %202, %203
  %205 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %201, i32 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %7, align 4
  %210 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %211 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @O2NM_MAX_NODES, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = sub nsw i32 %218, %219
  %221 = call i64 @stringify_nodemap(i32 %212, i32 %213, i8* %217, i32 %220)
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %7, align 4
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %230, %231
  %233 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %229, i32 %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %7, align 4
  %238 = load i8*, i8** %5, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %7, align 4
  %244 = sub nsw i32 %242, %243
  %245 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %241, i32 %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

declare dso_local i64 @stringify_lockname(i32, i32, i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @stringify_nodemap(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
