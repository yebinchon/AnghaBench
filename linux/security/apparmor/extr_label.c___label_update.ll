; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___label_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.aa_labelset = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VEC_FLAG_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_label*)* @__label_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @__label_update(%struct.aa_label* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_labelset*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %11 = icmp ne %struct.aa_label* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %16 = call %struct.TYPE_8__* @labels_ns(%struct.aa_label* %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @mutex_is_locked(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %24 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %27 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.aa_label* @aa_label_alloc(i32 %25, i32 %28, i32 %29)
  store %struct.aa_label* %30, %struct.aa_label** %4, align 8
  %31 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %32 = icmp ne %struct.aa_label* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store %struct.aa_label* null, %struct.aa_label** %2, align 8
  br label %223

34:                                               ; preds = %1
  %35 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %36 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %35)
  store %struct.aa_labelset* %36, %struct.aa_labelset** %6, align 8
  %37 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %38 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @write_lock_irqsave(i32* %38, i64 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %139, %34
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %44 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %142

47:                                               ; preds = %41
  %48 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %49 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @AA_BUG(i32 %57)
  %59 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %60 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %61, i64 %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = call %struct.TYPE_9__* @aa_get_newest_profile(%struct.TYPE_9__* %65)
  %67 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %68 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 %71
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %72, align 8
  %73 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %74 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @AA_BUG(i32 %82)
  %84 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %85 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %86, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @AA_BUG(i32 %96)
  %98 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %99 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %100, i64 %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @AA_BUG(i32 %112)
  %114 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %115 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %116, i64 %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %125 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = icmp ne %struct.TYPE_7__* %123, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %47
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %135, %47
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %41

142:                                              ; preds = %41
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %198

145:                                              ; preds = %142
  %146 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %147 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %148, i64 0
  %150 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %151 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VEC_FLAG_TERMINATE, align 4
  %154 = call i64 @aa_vec_unique(%struct.TYPE_9__** %149, i32 %152, i32 %153)
  %155 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %156 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %162 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %178

165:                                              ; preds = %145
  %166 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %167 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %168, i64 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = call %struct.aa_label* @aa_get_label(%struct.TYPE_10__* %171)
  store %struct.aa_label* %172, %struct.aa_label** %5, align 8
  %173 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %174 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %175 = icmp eq %struct.aa_label* %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @AA_BUG(i32 %176)
  br label %211

178:                                              ; preds = %145
  %179 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %180 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %179)
  %181 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %182 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %181)
  %183 = icmp ne %struct.aa_labelset* %180, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %186 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %185, i32 0, i32 0
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @write_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %190 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %189)
  %191 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %192 = call %struct.aa_label* @aa_label_insert(%struct.aa_labelset* %190, %struct.aa_label* %191)
  store %struct.aa_label* %192, %struct.aa_label** %5, align 8
  %193 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %194 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %193, i32 0, i32 0
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @write_lock_irqsave(i32* %194, i64 %195)
  br label %211

197:                                              ; preds = %178
  br label %206

198:                                              ; preds = %142
  %199 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %200 = call %struct.TYPE_8__* @labels_ns(%struct.aa_label* %199)
  %201 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %202 = call %struct.TYPE_8__* @labels_ns(%struct.aa_label* %201)
  %203 = icmp ne %struct.TYPE_8__* %200, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @AA_BUG(i32 %204)
  br label %206

206:                                              ; preds = %198, %197
  %207 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %208 = call %struct.aa_labelset* @labels_set(%struct.aa_label* %207)
  %209 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %210 = call %struct.aa_label* @__label_insert(%struct.aa_labelset* %208, %struct.aa_label* %209, i32 1)
  store %struct.aa_label* %210, %struct.aa_label** %5, align 8
  br label %211

211:                                              ; preds = %206, %184, %165
  %212 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %213 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %214 = call i32 @__label_remove(%struct.aa_label* %212, %struct.aa_label* %213)
  %215 = load %struct.aa_labelset*, %struct.aa_labelset** %6, align 8
  %216 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %215, i32 0, i32 0
  %217 = load i64, i64* %7, align 8
  %218 = call i32 @write_unlock_irqrestore(i32* %216, i64 %217)
  %219 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %220 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %221 = call i32 @label_free_or_put_new(%struct.aa_label* %219, %struct.aa_label* %220)
  %222 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  store %struct.aa_label* %222, %struct.aa_label** %2, align 8
  br label %223

223:                                              ; preds = %211, %33
  %224 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  ret %struct.aa_label* %224
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_8__* @labels_ns(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_label_alloc(i32, i32, i32) #1

declare dso_local %struct.aa_labelset* @labels_set(%struct.aa_label*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_9__* @aa_get_newest_profile(%struct.TYPE_9__*) #1

declare dso_local i64 @aa_vec_unique(%struct.TYPE_9__**, i32, i32) #1

declare dso_local %struct.aa_label* @aa_get_label(%struct.TYPE_10__*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.aa_label* @aa_label_insert(%struct.aa_labelset*, %struct.aa_label*) #1

declare dso_local %struct.aa_label* @__label_insert(%struct.aa_labelset*, %struct.aa_label*, i32) #1

declare dso_local i32 @__label_remove(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @label_free_or_put_new(%struct.aa_label*, %struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
