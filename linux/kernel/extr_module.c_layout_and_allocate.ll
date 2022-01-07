; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_layout_and_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_layout_and_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.load_info = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@SHF_ALLOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c".data..ro_after_init\00", align 1
@SHF_RO_AFTER_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"__jump_table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.module* (%struct.load_info*, i32)* @layout_and_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.module* @layout_and_allocate(%struct.load_info* %0, i32 %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.load_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.load_info* %0, %struct.load_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.load_info*, %struct.load_info** %4, align 8
  %10 = getelementptr inbounds %struct.load_info, %struct.load_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.load_info*, %struct.load_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @check_modinfo(i32 %11, %struct.load_info* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.module* @ERR_PTR(i32 %18)
  store %struct.module* %19, %struct.module** %3, align 8
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.load_info*, %struct.load_info** %4, align 8
  %22 = getelementptr inbounds %struct.load_info, %struct.load_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.load_info*, %struct.load_info** %4, align 8
  %25 = getelementptr inbounds %struct.load_info, %struct.load_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.load_info*, %struct.load_info** %4, align 8
  %28 = getelementptr inbounds %struct.load_info, %struct.load_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.load_info*, %struct.load_info** %4, align 8
  %31 = getelementptr inbounds %struct.load_info, %struct.load_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @module_frob_arch_sections(i32 %23, %struct.TYPE_4__* %26, i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.module* @ERR_PTR(i32 %37)
  store %struct.module* %38, %struct.module** %3, align 8
  br label %122

39:                                               ; preds = %20
  %40 = load i64, i64* @SHF_ALLOC, align 8
  %41 = xor i64 %40, -1
  %42 = load %struct.load_info*, %struct.load_info** %4, align 8
  %43 = getelementptr inbounds %struct.load_info, %struct.load_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.load_info*, %struct.load_info** %4, align 8
  %46 = getelementptr inbounds %struct.load_info, %struct.load_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %41
  store i64 %52, i64* %50, align 8
  %53 = load %struct.load_info*, %struct.load_info** %4, align 8
  %54 = call i32 @find_sec(%struct.load_info* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %39
  %58 = load i64, i64* @SHF_RO_AFTER_INIT, align 8
  %59 = load %struct.load_info*, %struct.load_info** %4, align 8
  %60 = getelementptr inbounds %struct.load_info, %struct.load_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %58
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %57, %39
  %69 = load %struct.load_info*, %struct.load_info** %4, align 8
  %70 = call i32 @find_sec(%struct.load_info* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i64, i64* @SHF_RO_AFTER_INIT, align 8
  %75 = load %struct.load_info*, %struct.load_info** %4, align 8
  %76 = getelementptr inbounds %struct.load_info, %struct.load_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %74
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.load_info*, %struct.load_info** %4, align 8
  %86 = getelementptr inbounds %struct.load_info, %struct.load_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.load_info*, %struct.load_info** %4, align 8
  %89 = call i32 @layout_sections(i32 %87, %struct.load_info* %88)
  %90 = load %struct.load_info*, %struct.load_info** %4, align 8
  %91 = getelementptr inbounds %struct.load_info, %struct.load_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.load_info*, %struct.load_info** %4, align 8
  %94 = call i32 @layout_symtab(i32 %92, %struct.load_info* %93)
  %95 = load %struct.load_info*, %struct.load_info** %4, align 8
  %96 = getelementptr inbounds %struct.load_info, %struct.load_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.load_info*, %struct.load_info** %4, align 8
  %99 = call i32 @move_module(i32 %97, %struct.load_info* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %84
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.module* @ERR_PTR(i32 %103)
  store %struct.module* %104, %struct.module** %3, align 8
  br label %122

105:                                              ; preds = %84
  %106 = load %struct.load_info*, %struct.load_info** %4, align 8
  %107 = getelementptr inbounds %struct.load_info, %struct.load_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.load_info*, %struct.load_info** %4, align 8
  %110 = getelementptr inbounds %struct.load_info, %struct.load_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = bitcast i8* %116 to %struct.module*
  store %struct.module* %117, %struct.module** %6, align 8
  %118 = load %struct.module*, %struct.module** %6, align 8
  %119 = load %struct.load_info*, %struct.load_info** %4, align 8
  %120 = call i32 @kmemleak_load_module(%struct.module* %118, %struct.load_info* %119)
  %121 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %121, %struct.module** %3, align 8
  br label %122

122:                                              ; preds = %105, %102, %36, %17
  %123 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %123
}

declare dso_local i32 @check_modinfo(i32, %struct.load_info*, i32) #1

declare dso_local %struct.module* @ERR_PTR(i32) #1

declare dso_local i32 @module_frob_arch_sections(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @find_sec(%struct.load_info*, i8*) #1

declare dso_local i32 @layout_sections(i32, %struct.load_info*) #1

declare dso_local i32 @layout_symtab(i32, %struct.load_info*) #1

declare dso_local i32 @move_module(i32, %struct.load_info*) #1

declare dso_local i32 @kmemleak_load_module(%struct.module*, %struct.load_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
