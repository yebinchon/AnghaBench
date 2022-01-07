; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_add_to_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_add_to_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_lpt_heap* }
%struct.ubifs_lpt_heap = type { i64, i64, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32, i32, i32 }

@LPT_HEAP_SZ = common dso_local global i32 0, align 4
@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@LPROPS_UNCAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_lprops*, i32)* @add_to_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_lprops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_lpt_heap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %16, i64 %19
  store %struct.ubifs_lpt_heap* %20, %struct.ubifs_lpt_heap** %8, align 8
  %21 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %22 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %25 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %3
  %29 = load i32, i32* @LPT_HEAP_SZ, align 4
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %33 = ptrtoint %struct.ubifs_lprops* %32 to i64
  %34 = lshr i64 %33, 4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubifs_assert(%struct.ubifs_info* %42, i32 %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @LPT_HEAP_SZ, align 4
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %48, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %58 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ubifs_assert(%struct.ubifs_info* %54, i32 %61)
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %67 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %66, i32 0, i32 2
  %68 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %68, i64 %70
  %72 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @get_heap_comp_val(%struct.ubifs_lprops* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %28
  %79 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %79, i32 0, i32 2
  %81 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %81, i64 %83
  %85 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %84, align 8
  store %struct.ubifs_lprops* %85, %struct.ubifs_lprops** %13, align 8
  %86 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %89 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @LPROPS_UNCAT, align 4
  %93 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %94 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %98 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %97, i32 0, i32 1
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 0
  %101 = call i32 @list_add(i32* %98, i32* %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %104 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %106 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %107 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %106, i32 0, i32 2
  %108 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %108, i64 %110
  store %struct.ubifs_lprops* %105, %struct.ubifs_lprops** %111, align 8
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %113 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %114 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @move_up_lpt_heap(%struct.ubifs_info* %112, %struct.ubifs_lpt_heap* %113, %struct.ubifs_lprops* %114, i32 %115)
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %118 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %121 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dbg_check_heap(%struct.ubifs_info* %117, %struct.ubifs_lpt_heap* %118, i32 %119, i32 %122)
  store i32 1, i32* %4, align 4
  br label %158

124:                                              ; preds = %28
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %126 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @dbg_check_heap(%struct.ubifs_info* %125, %struct.ubifs_lpt_heap* %126, i32 %127, i32 -1)
  store i32 0, i32* %4, align 4
  br label %158

129:                                              ; preds = %3
  %130 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %131 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = trunc i64 %132 to i32
  %135 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %136 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %138 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %139 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %138, i32 0, i32 2
  %140 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %139, align 8
  %141 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %142 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %140, i64 %144
  store %struct.ubifs_lprops* %137, %struct.ubifs_lprops** %145, align 8
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %147 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %148 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @move_up_lpt_heap(%struct.ubifs_info* %146, %struct.ubifs_lpt_heap* %147, %struct.ubifs_lprops* %148, i32 %149)
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %152 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %8, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %155 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dbg_check_heap(%struct.ubifs_info* %151, %struct.ubifs_lpt_heap* %152, i32 %153, i32 %156)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %129, %124, %78
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @get_heap_comp_val(%struct.ubifs_lprops*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @move_up_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @dbg_check_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
