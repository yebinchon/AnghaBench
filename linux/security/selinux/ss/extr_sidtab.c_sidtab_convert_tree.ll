; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_convert_tree.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_convert_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sidtab_entry_inner = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sidtab_convert_params = type { i32 (i32*, i32*, i32)*, i32 }
%struct.TYPE_4__ = type { %union.sidtab_entry_inner* }

@SIDTAB_NODE_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIDTAB_INNER_ENTRIES = common dso_local global i64 0, align 8
@SIDTAB_LEAF_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sidtab_entry_inner*, %union.sidtab_entry_inner*, i64*, i64, i64, %struct.sidtab_convert_params*)* @sidtab_convert_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sidtab_convert_tree(%union.sidtab_entry_inner* %0, %union.sidtab_entry_inner* %1, i64* %2, i64 %3, i64 %4, %struct.sidtab_convert_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sidtab_entry_inner*, align 8
  %9 = alloca %union.sidtab_entry_inner*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sidtab_convert_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %union.sidtab_entry_inner* %0, %union.sidtab_entry_inner** %8, align 8
  store %union.sidtab_entry_inner* %1, %union.sidtab_entry_inner** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.sidtab_convert_params* %5, %struct.sidtab_convert_params** %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %6
  %19 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %20 = bitcast %union.sidtab_entry_inner* %19 to %struct.TYPE_4__**
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  %28 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %29 = bitcast %union.sidtab_entry_inner* %28 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %31 = bitcast %union.sidtab_entry_inner* %30 to %struct.TYPE_4__**
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %148

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %18
  store i64 0, i64* %15, align 8
  br label %39

39:                                               ; preds = %75, %38
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @SIDTAB_INNER_ENTRIES, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br i1 %49, label %50, label %78

50:                                               ; preds = %48
  %51 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %52 = bitcast %union.sidtab_entry_inner* %51 to %struct.TYPE_4__**
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %55, i64 %56
  %58 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %9, align 8
  %59 = bitcast %union.sidtab_entry_inner* %58 to %struct.TYPE_4__**
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %62, i64 %63
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %70 = call i32 @sidtab_convert_tree(%union.sidtab_entry_inner* %57, %union.sidtab_entry_inner* %64, i64* %65, i64 %66, i64 %68, %struct.sidtab_convert_params* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %7, align 4
  br label %148

75:                                               ; preds = %50
  %76 = load i64, i64* %15, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %15, align 8
  br label %39

78:                                               ; preds = %48
  br label %147

79:                                               ; preds = %6
  %80 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %81 = bitcast %union.sidtab_entry_inner* %80 to %struct.TYPE_6__**
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kzalloc(i32 %85, i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_6__*
  %89 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %90 = bitcast %union.sidtab_entry_inner* %89 to %struct.TYPE_6__**
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %90, align 8
  %91 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %92 = bitcast %union.sidtab_entry_inner* %91 to %struct.TYPE_6__**
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %148

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %79
  store i64 0, i64* %15, align 8
  br label %100

100:                                              ; preds = %139, %99
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* @SIDTAB_LEAF_ENTRIES, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i64*, i64** %10, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp slt i64 %106, %107
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i1 [ false, %100 ], [ %108, %104 ]
  br i1 %110, label %111, label %145

111:                                              ; preds = %109
  %112 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %113 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %112, i32 0, i32 0
  %114 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %113, align 8
  %115 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %9, align 8
  %116 = bitcast %union.sidtab_entry_inner* %115 to %struct.TYPE_6__**
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %124 = bitcast %union.sidtab_entry_inner* %123 to %struct.TYPE_6__**
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %132 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %114(i32* %122, i32* %130, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %111
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %7, align 4
  br label %148

139:                                              ; preds = %111
  %140 = load i64*, i64** %10, align 8
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %15, align 8
  br label %100

145:                                              ; preds = %109
  %146 = call i32 (...) @cond_resched()
  br label %147

147:                                              ; preds = %145, %78
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %137, %95, %73, %34
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
