; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_get_reader_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_get_reader_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_page = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.ring_buffer_per_cpu = type { i64, i64, i32, i32, %struct.buffer_page*, i32, i32, i32, i32, %struct.buffer_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_page* (%struct.ring_buffer_per_cpu*)* @rb_get_reader_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca %struct.buffer_page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %10, i32 0, i32 2
  %12 = call i32 @arch_spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %176, %1
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  br label %177

22:                                               ; preds = %13
  %23 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %23, i32 0, i32 4
  %25 = load %struct.buffer_page*, %struct.buffer_page** %24, align 8
  store %struct.buffer_page* %25, %struct.buffer_page** %3, align 8
  %26 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %26, i32 0, i32 4
  %28 = load %struct.buffer_page*, %struct.buffer_page** %27, align 8
  %29 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %32 = call i64 @rb_page_size(%struct.buffer_page* %31)
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %177

35:                                               ; preds = %22
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 4
  %39 = load %struct.buffer_page*, %struct.buffer_page** %38, align 8
  %40 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %43 = call i64 @rb_page_size(%struct.buffer_page* %42)
  %44 = icmp sgt i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %36, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %177

49:                                               ; preds = %35
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %50, i32 0, i32 9
  %52 = load %struct.buffer_page*, %struct.buffer_page** %51, align 8
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %53, i32 0, i32 4
  %55 = load %struct.buffer_page*, %struct.buffer_page** %54, align 8
  %56 = icmp eq %struct.buffer_page* %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %177

58:                                               ; preds = %49
  %59 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %60 = call i64 @rb_num_of_entries(%struct.ring_buffer_per_cpu* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %177

63:                                               ; preds = %58
  %64 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %65 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %64, i32 0, i32 4
  %66 = load %struct.buffer_page*, %struct.buffer_page** %65, align 8
  %67 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %66, i32 0, i32 5
  %68 = call i32 @local_set(i32* %67, i32 0)
  %69 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %70 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %69, i32 0, i32 4
  %71 = load %struct.buffer_page*, %struct.buffer_page** %70, align 8
  %72 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %71, i32 0, i32 4
  %73 = call i32 @local_set(i32* %72, i32 0)
  %74 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %75 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %74, i32 0, i32 4
  %76 = load %struct.buffer_page*, %struct.buffer_page** %75, align 8
  %77 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @local_set(i32* %79, i32 0)
  %81 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %82 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %81, i32 0, i32 4
  %83 = load %struct.buffer_page*, %struct.buffer_page** %82, align 8
  %84 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %134, %63
  %86 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %87 = call %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu* %86)
  store %struct.buffer_page* %87, %struct.buffer_page** %3, align 8
  %88 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %89 = icmp ne %struct.buffer_page* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %177

91:                                               ; preds = %85
  %92 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %93 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call %struct.TYPE_7__* @rb_list_head(%struct.TYPE_7__* %95)
  %97 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %98 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %97, i32 0, i32 4
  %99 = load %struct.buffer_page*, %struct.buffer_page** %98, align 8
  %100 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %101, align 8
  %102 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %103 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %107 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %106, i32 0, i32 4
  %108 = load %struct.buffer_page*, %struct.buffer_page** %107, align 8
  %109 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 8
  %111 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %112 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %116 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %118 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %119 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %118, i32 0, i32 4
  %120 = load %struct.buffer_page*, %struct.buffer_page** %119, align 8
  %121 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %120, i32 0, i32 2
  %122 = call i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu* %117, %struct.TYPE_6__* %121)
  %123 = call i32 (...) @smp_mb()
  %124 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %125 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %124, i32 0, i32 7
  %126 = call i64 @local_read(i32* %125)
  store i64 %126, i64* %4, align 8
  %127 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %128 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %129 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %128, i32 0, i32 4
  %130 = load %struct.buffer_page*, %struct.buffer_page** %129, align 8
  %131 = call i32 @rb_head_page_replace(%struct.buffer_page* %127, %struct.buffer_page* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %91
  br label %85

135:                                              ; preds = %91
  %136 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %137 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %136, i32 0, i32 4
  %138 = load %struct.buffer_page*, %struct.buffer_page** %137, align 8
  %139 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %138, i32 0, i32 2
  %140 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %141 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = call %struct.TYPE_7__* @rb_list_head(%struct.TYPE_7__* %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %145, align 8
  %146 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %147 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %148 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %147, i32 0, i32 6
  %149 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %146, i32* %148)
  %150 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %151 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %150, i32 0, i32 5
  %152 = call i32 @local_inc(i32* %151)
  %153 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %154 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %155 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %154, i32 0, i32 4
  store %struct.buffer_page* %153, %struct.buffer_page** %155, align 8
  %156 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %157 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %156, i32 0, i32 4
  %158 = load %struct.buffer_page*, %struct.buffer_page** %157, align 8
  %159 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %162 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %135
  %166 = load i64, i64* %4, align 8
  %167 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %168 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %166, %169
  %171 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %172 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %4, align 8
  %174 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %175 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %165, %135
  br label %13

177:                                              ; preds = %90, %62, %57, %48, %34, %21
  %178 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %179 = icmp ne %struct.buffer_page* %178, null
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %182 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %187 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %186, i32 0, i32 1
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %192 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %185, %180, %177
  %194 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %195 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %194, i32 0, i32 2
  %196 = call i32 @arch_spin_unlock(i32* %195)
  %197 = load i64, i64* %5, align 8
  %198 = call i32 @local_irq_restore(i64 %197)
  %199 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  ret %struct.buffer_page* %199
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_page_size(%struct.buffer_page*) #1

declare dso_local i64 @rb_num_of_entries(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @local_set(i32*, i32) #1

declare dso_local %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.TYPE_7__* @rb_list_head(%struct.TYPE_7__*) #1

declare dso_local i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu*, %struct.TYPE_6__*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @rb_head_page_replace(%struct.buffer_page*, %struct.buffer_page*) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, i32*) #1

declare dso_local i32 @local_inc(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
