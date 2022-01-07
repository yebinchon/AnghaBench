; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_remove_loops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_remove_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_entry = type { i64 }
%struct.iterations = type { i64 }

@CHASHSZ = common dso_local global i32 0, align 4
@NO_ENTRY = common dso_local global i8 0, align 1
@PERF_MAX_BRANCH_DEPTH = common dso_local global i32 0, align 4
@CHASHBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.branch_entry*, i32, %struct.iterations*)* @remove_loops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_loops(%struct.branch_entry* %0, i32 %1, %struct.iterations* %2) #0 {
  %4 = alloca %struct.branch_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iterations*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.branch_entry* %0, %struct.branch_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iterations* %2, %struct.iterations** %6, align 8
  %14 = load i32, i32* @CHASHSZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8, i8* @NO_ENTRY, align 1
  %19 = trunc i64 %15 to i32
  %20 = call i32 @memset(i8* %17, i8 zeroext %18, i32 %19)
  %21 = load i32, i32* @PERF_MAX_BRANCH_DEPTH, align 4
  %22 = icmp sgt i32 %21, 255
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %179, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %182

29:                                               ; preds = %25
  %30 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @CHASHBITS, align 4
  %37 = call i32 @hash_64(i64 %35, i32 %36)
  %38 = load i32, i32* @CHASHSZ, align 4
  %39 = srem i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %17, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @NO_ENTRY, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %17, i64 %52
  store i8 %50, i8* %53, align 1
  br label %178

54:                                               ; preds = %29
  %55 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %17, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %55, i64 %60
  %62 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %64, i64 %66
  %68 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  br i1 %70, label %71, label %177

71:                                               ; preds = %54
  store i32 1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %17, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %107, %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %84, %85
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i1 [ false, %77 ], [ %86, %81 ]
  br i1 %88, label %89, label %112

89:                                               ; preds = %87
  %90 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %90, i64 %92
  %94 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %96, i64 %100
  %102 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %95, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  store i32 0, i32* %13, align 4
  br label %112

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %77

112:                                              ; preds = %105, %87
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %176

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %172

123:                                              ; preds = %115
  %124 = load %struct.iterations*, %struct.iterations** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.iterations, %struct.iterations* %124, i64 %126
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.iterations, %struct.iterations* %127, i64 %129
  %131 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %131, i64 %133
  %135 = bitcast %struct.branch_entry* %134 to %struct.iterations*
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @save_iterations(%struct.iterations* %130, %struct.iterations* %135, i32 %136)
  %138 = load %struct.iterations*, %struct.iterations** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.iterations, %struct.iterations* %138, i64 %140
  %142 = load %struct.iterations*, %struct.iterations** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.iterations, %struct.iterations* %142, i64 %144
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.iterations, %struct.iterations* %145, i64 %147
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memmove(%struct.iterations* %141, %struct.iterations* %148, i32 %152)
  %154 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %154, i64 %156
  %158 = bitcast %struct.branch_entry* %157 to %struct.iterations*
  %159 = load %struct.branch_entry*, %struct.branch_entry** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %159, i64 %161
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %162, i64 %164
  %166 = bitcast %struct.branch_entry* %165 to %struct.iterations*
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memmove(%struct.iterations* %158, %struct.iterations* %166, i32 %170)
  br label %172

172:                                              ; preds = %123, %115
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %5, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %172, %112
  br label %177

177:                                              ; preds = %176, %54
  br label %178

178:                                              ; preds = %177, %48
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %25

182:                                              ; preds = %25
  %183 = load i32, i32* %5, align 4
  %184 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %184)
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @hash_64(i64, i32) #2

declare dso_local i32 @save_iterations(%struct.iterations*, %struct.iterations*, i32) #2

declare dso_local i32 @memmove(%struct.iterations*, %struct.iterations*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
