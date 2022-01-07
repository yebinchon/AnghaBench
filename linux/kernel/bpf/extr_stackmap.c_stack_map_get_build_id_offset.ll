; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_get_build_id_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_stack_map_get_build_id_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bpf_stack_build_id = type { i8*, i8*, i32, i8* }
%struct.vm_area_struct = type { i32, i8* }
%struct.stack_map_irq_work = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }

@up_read_work = common dso_local global i32 0, align 4
@IRQ_WORK_BUSY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@BPF_STACK_BUILD_ID_IP = common dso_local global i8* null, align 8
@BPF_BUILD_ID_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BPF_STACK_BUILD_ID_VALID = common dso_local global i8* null, align 8
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_stack_build_id*, i8**, i32, i32)* @stack_map_get_build_id_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_map_get_build_id_offset(%struct.bpf_stack_build_id* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_stack_build_id*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stack_map_irq_work*, align 8
  store %struct.bpf_stack_build_id* %0, %struct.bpf_stack_build_id** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store %struct.stack_map_irq_work* null, %struct.stack_map_irq_work** %12, align 8
  %13 = call i64 (...) @in_nmi()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = call %struct.stack_map_irq_work* @this_cpu_ptr(i32* @up_read_work)
  store %struct.stack_map_irq_work* %16, %struct.stack_map_irq_work** %12, align 8
  %17 = load %struct.stack_map_irq_work*, %struct.stack_map_irq_work** %12, align 8
  %18 = getelementptr inbounds %struct.stack_map_irq_work, %struct.stack_map_irq_work* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IRQ_WORK_BUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %15
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i64 @down_read_trylock(%struct.TYPE_6__* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %40, %37, %32, %29, %26
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %77, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = load i8*, i8** @BPF_STACK_BUILD_ID_IP, align 8
  %54 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %54, i64 %56
  %58 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %64, i64 %66
  %68 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %67, i32 0, i32 3
  store i8* %63, i8** %68, align 8
  %69 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %69, i64 %71
  %73 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BPF_BUILD_ID_SIZE, align 4
  %76 = call i32 @memset(i32 %74, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %52
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %48

80:                                               ; preds = %48
  br label %193

81:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %164, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %167

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i8**, i8*** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_8__* %89, i8* %94)
  store %struct.vm_area_struct* %95, %struct.vm_area_struct** %10, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %97 = icmp ne %struct.vm_area_struct* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %100 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %100, i64 %102
  %104 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @stack_map_get_build_id(%struct.vm_area_struct* %99, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %98, %86
  %109 = load i8*, i8** @BPF_STACK_BUILD_ID_IP, align 8
  %110 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %110, i64 %112
  %114 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %113, i32 0, i32 0
  store i8* %109, i8** %114, align 8
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %120, i64 %122
  %124 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %123, i32 0, i32 3
  store i8* %119, i8** %124, align 8
  %125 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %125, i64 %127
  %129 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BPF_BUILD_ID_SIZE, align 4
  %132 = call i32 @memset(i32 %130, i32 0, i32 %131)
  br label %164

133:                                              ; preds = %98
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PAGE_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i8**, i8*** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = sext i32 %138 to i64
  %145 = getelementptr i8, i8* %143, i64 %144
  %146 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %147 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %145 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %153, i64 %155
  %157 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %156, i32 0, i32 1
  store i8* %152, i8** %157, align 8
  %158 = load i8*, i8** @BPF_STACK_BUILD_ID_VALID, align 8
  %159 = load %struct.bpf_stack_build_id*, %struct.bpf_stack_build_id** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %159, i64 %161
  %163 = getelementptr inbounds %struct.bpf_stack_build_id, %struct.bpf_stack_build_id* %162, i32 0, i32 0
  store i8* %158, i8** %163, align 8
  br label %164

164:                                              ; preds = %133, %108
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %82

167:                                              ; preds = %82
  %168 = load %struct.stack_map_irq_work*, %struct.stack_map_irq_work** %12, align 8
  %169 = icmp ne %struct.stack_map_irq_work* %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = call i32 @up_read(%struct.TYPE_6__* %174)
  br label %193

176:                                              ; preds = %167
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.stack_map_irq_work*, %struct.stack_map_irq_work** %12, align 8
  %182 = getelementptr inbounds %struct.stack_map_irq_work, %struct.stack_map_irq_work* %181, i32 0, i32 1
  store %struct.TYPE_6__* %180, %struct.TYPE_6__** %182, align 8
  %183 = load %struct.stack_map_irq_work*, %struct.stack_map_irq_work** %12, align 8
  %184 = getelementptr inbounds %struct.stack_map_irq_work, %struct.stack_map_irq_work* %183, i32 0, i32 0
  %185 = call i32 @irq_work_queue(%struct.TYPE_7__* %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* @_RET_IP_, align 4
  %192 = call i32 @rwsem_release(i32* %190, i32 1, i32 %191)
  br label %193

193:                                              ; preds = %80, %176, %170
  ret void
}

declare dso_local i64 @in_nmi(...) #1

declare dso_local %struct.stack_map_irq_work* @this_cpu_ptr(i32*) #1

declare dso_local i64 @down_read_trylock(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @stack_map_get_build_id(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @up_read(%struct.TYPE_6__*) #1

declare dso_local i32 @irq_work_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @rwsem_release(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
