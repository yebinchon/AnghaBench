; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_mmap_private.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_mmap_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vm_area_struct = type { i32, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vm_region = type { i32, i64, i64, i64 }

@NOMMU_MAP_DIRECT = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@sysctl_nr_trim_pages = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@mmap_pages_allocated = common dso_local global i32 0, align 4
@VM_MAPPED_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Allocation of length %lu from process %d (%s) failed\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_region*, i64, i64)* @do_mmap_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mmap_private(%struct.vm_area_struct* %0, %struct.vm_region* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_region* %1, %struct.vm_region** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @NOMMU_MAP_DIRECT, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = call i32 @call_mmap(i64 %23, %struct.vm_area_struct* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VM_MAYSHARE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %196

47:                                               ; preds = %20
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %196

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @get_order(i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 1, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* @sysctl_nr_trim_pages, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  %70 = load i64, i64* @sysctl_nr_trim_pages, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %72, %66, %55
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @alloc_pages_exact(i64 %77, i32 %78)
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %184

83:                                               ; preds = %74
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @atomic_long_add(i64 %84, i32* @mmap_pages_allocated)
  %86 = load i32, i32* @VM_MAPPED_COPY, align 4
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %92 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %96 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %98 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %99, %100
  %102 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %103 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %105 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = add i64 %106, %109
  %111 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %112 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %114 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %117 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %119 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %120, %121
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %83
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %15, align 8
  %133 = load i64, i64* @PAGE_SHIFT, align 8
  %134 = load i64, i64* %15, align 8
  %135 = shl i64 %134, %133
  store i64 %135, i64* %15, align 8
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %137 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @kernel_read(i64 %138, i8* %139, i64 %140, i64* %15)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %165

145:                                              ; preds = %129
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %8, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i8*, i8** %12, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %155, %157
  %159 = call i32 @memset(i8* %154, i32 0, i64 %158)
  br label %160

160:                                              ; preds = %150, %145
  br label %164

161:                                              ; preds = %83
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %163 = call i32 @vma_set_anonymous(%struct.vm_area_struct* %162)
  br label %164

164:                                              ; preds = %161, %160
  store i32 0, i32* %5, align 4
  br label %196

165:                                              ; preds = %144
  %166 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %167 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %170 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @free_page_series(i64 %168, i64 %171)
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %174 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %176 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  %179 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %180 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %179, i32 0, i32 2
  store i64 0, i64* %180, align 8
  %181 = load %struct.vm_region*, %struct.vm_region** %7, align 8
  %182 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %181, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %5, align 4
  br label %196

184:                                              ; preds = %82
  %185 = load i64, i64* %8, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %185, i32 %188, i32 %191)
  %193 = call i32 @show_free_areas(i32 0, i32* null)
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %184, %165, %164, %52, %28
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @call_mmap(i64, %struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @alloc_pages_exact(i64, i32) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @kernel_read(i64, i8*, i64, i64*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @vma_set_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @free_page_series(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i32) #1

declare dso_local i32 @show_free_areas(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
