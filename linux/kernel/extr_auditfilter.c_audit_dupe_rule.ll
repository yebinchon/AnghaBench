; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_dupe_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_dupe_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.audit_krule }
%struct.audit_krule = type { i32, i8*, i64, i64, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_BITMASK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audit_entry* @audit_dupe_rule(%struct.audit_krule* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca %struct.audit_krule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.audit_entry*, align 8
  %6 = alloca %struct.audit_krule*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.audit_krule* %0, %struct.audit_krule** %3, align 8
  %10 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %11 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.audit_entry* @audit_init_entry(i32 %13)
  store %struct.audit_entry* %14, %struct.audit_entry** %5, align 8
  %15 = load %struct.audit_entry*, %struct.audit_entry** %5, align 8
  %16 = icmp ne %struct.audit_entry* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.audit_entry* @ERR_PTR(i32 %23)
  store %struct.audit_entry* %24, %struct.audit_entry** %2, align 8
  br label %196

25:                                               ; preds = %1
  %26 = load %struct.audit_entry*, %struct.audit_entry** %5, align 8
  %27 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %26, i32 0, i32 0
  store %struct.audit_krule* %27, %struct.audit_krule** %6, align 8
  %28 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %29 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %32 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  %33 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %34 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %37 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %39 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %42 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %44 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %47 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %66, %25
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @AUDIT_BITMASK_SIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %54 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %53, i32 0, i32 9
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %61 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %71 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %74 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  %75 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %76 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %79 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %81 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %84 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %86 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %89 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %91 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %94 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %96 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %95, i32 0, i32 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %99 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %98, i32 0, i32 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memcpy(%struct.TYPE_5__* %97, %struct.TYPE_5__* %100, i32 %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %176, %69
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %179

110:                                              ; preds = %106
  %111 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %112 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %111, i32 0, i32 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %157 [
    i32 128, label %119
    i32 131, label %119
    i32 129, label %119
    i32 130, label %119
    i32 132, label %119
    i32 133, label %119
    i32 135, label %119
    i32 134, label %119
    i32 136, label %119
    i32 137, label %119
    i32 138, label %133
    i32 139, label %153
  ]

119:                                              ; preds = %110, %110, %110, %110, %110, %110, %110, %110, %110, %110
  %120 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %121 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %120, i32 0, i32 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %127 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %126, i32 0, i32 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = call i32 @audit_dupe_lsm_field(%struct.TYPE_5__* %125, %struct.TYPE_5__* %131)
  store i32 %132, i32* %9, align 4
  br label %157

133:                                              ; preds = %110
  %134 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %135 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i8* @kstrdup(i8* %136, i32 %137)
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = icmp ne i8* %139, null
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %152

148:                                              ; preds = %133
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %151 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %148, %145
  br label %157

153:                                              ; preds = %110
  %154 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %155 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %156 = call i32 @audit_dupe_exe(%struct.audit_krule* %154, %struct.audit_krule* %155)
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %110, %153, %152, %119
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %162 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %167 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @audit_remove_mark(i64 %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = load %struct.audit_entry*, %struct.audit_entry** %5, align 8
  %172 = call i32 @audit_free_rule(%struct.audit_entry* %171)
  %173 = load i32, i32* %9, align 4
  %174 = call %struct.audit_entry* @ERR_PTR(i32 %173)
  store %struct.audit_entry* %174, %struct.audit_entry** %2, align 8
  br label %196

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %106

179:                                              ; preds = %106
  %180 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %181 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %186 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @audit_get_watch(i64 %187)
  %189 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %190 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %193 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %184, %179
  %195 = load %struct.audit_entry*, %struct.audit_entry** %5, align 8
  store %struct.audit_entry* %195, %struct.audit_entry** %2, align 8
  br label %196

196:                                              ; preds = %194, %170, %21
  %197 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  ret %struct.audit_entry* %197
}

declare dso_local %struct.audit_entry* @audit_init_entry(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_entry* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @audit_dupe_lsm_field(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @audit_dupe_exe(%struct.audit_krule*, %struct.audit_krule*) #1

declare dso_local i32 @audit_remove_mark(i64) #1

declare dso_local i32 @audit_free_rule(%struct.audit_entry*) #1

declare dso_local i32 @audit_get_watch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
