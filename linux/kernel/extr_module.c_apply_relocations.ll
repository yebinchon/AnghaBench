; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_apply_relocations.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_apply_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.load_info = type { %struct.TYPE_6__, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@SHF_ALLOC = common dso_local global i32 0, align 4
@SHF_RELA_LIVEPATCH = common dso_local global i32 0, align 4
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.load_info*)* @apply_relocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_relocations(%struct.module* %0, %struct.load_info* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.load_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %3, align 8
  store %struct.load_info* %1, %struct.load_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %115, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.load_info*, %struct.load_info** %4, align 8
  %11 = getelementptr inbounds %struct.load_info, %struct.load_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %16, label %118

16:                                               ; preds = %8
  %17 = load %struct.load_info*, %struct.load_info** %4, align 8
  %18 = getelementptr inbounds %struct.load_info, %struct.load_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.load_info*, %struct.load_info** %4, align 8
  %27 = getelementptr inbounds %struct.load_info, %struct.load_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %115

33:                                               ; preds = %16
  %34 = load %struct.load_info*, %struct.load_info** %4, align 8
  %35 = getelementptr inbounds %struct.load_info, %struct.load_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SHF_ALLOC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %115

46:                                               ; preds = %33
  %47 = load %struct.load_info*, %struct.load_info** %4, align 8
  %48 = getelementptr inbounds %struct.load_info, %struct.load_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SHF_RELA_LIVEPATCH, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %115

59:                                               ; preds = %46
  %60 = load %struct.load_info*, %struct.load_info** %4, align 8
  %61 = getelementptr inbounds %struct.load_info, %struct.load_info* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SHT_REL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %59
  %71 = load %struct.load_info*, %struct.load_info** %4, align 8
  %72 = getelementptr inbounds %struct.load_info, %struct.load_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.load_info*, %struct.load_info** %4, align 8
  %75 = getelementptr inbounds %struct.load_info, %struct.load_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.load_info*, %struct.load_info** %4, align 8
  %78 = getelementptr inbounds %struct.load_info, %struct.load_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.module*, %struct.module** %3, align 8
  %83 = call i32 @apply_relocate(%struct.TYPE_7__* %73, i32 %76, i32 %80, i32 %81, %struct.module* %82)
  store i32 %83, i32* %6, align 4
  br label %110

84:                                               ; preds = %59
  %85 = load %struct.load_info*, %struct.load_info** %4, align 8
  %86 = getelementptr inbounds %struct.load_info, %struct.load_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SHT_RELA, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %84
  %96 = load %struct.load_info*, %struct.load_info** %4, align 8
  %97 = getelementptr inbounds %struct.load_info, %struct.load_info* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.load_info*, %struct.load_info** %4, align 8
  %100 = getelementptr inbounds %struct.load_info, %struct.load_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.load_info*, %struct.load_info** %4, align 8
  %103 = getelementptr inbounds %struct.load_info, %struct.load_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.module*, %struct.module** %3, align 8
  %108 = call i32 @apply_relocate_add(%struct.TYPE_7__* %98, i32 %101, i32 %105, i32 %106, %struct.module* %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %95, %84
  br label %110

110:                                              ; preds = %109, %70
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %118

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %58, %45, %32
  %116 = load i32, i32* %5, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %8

118:                                              ; preds = %113, %8
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @apply_relocate(%struct.TYPE_7__*, i32, i32, i32, %struct.module*) #1

declare dso_local i32 @apply_relocate_add(%struct.TYPE_7__*, i32, i32, i32, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
