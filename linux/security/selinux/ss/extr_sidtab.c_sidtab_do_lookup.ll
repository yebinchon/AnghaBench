; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_do_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.sidtab = type { %union.sidtab_entry_inner* }
%union.sidtab_entry_inner = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.context }
%struct.TYPE_4__ = type { %union.sidtab_entry_inner* }

@SIDTAB_LEAF_ENTRIES = common dso_local global i32 0, align 4
@SIDTAB_INNER_SHIFT = common dso_local global i32 0, align 4
@SIDTAB_NODE_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.context* (%struct.sidtab*, i32, i32)* @sidtab_do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.context* @sidtab_do_lookup(%struct.sidtab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.sidtab_entry_inner*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SIDTAB_LEAF_ENTRIES, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @sidtab_level_from_count(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SIDTAB_INNER_SHIFT, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @sidtab_alloc_roots(%struct.sidtab* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.context* null, %struct.context** %4, align 8
  br label %116

29:                                               ; preds = %23, %3
  %30 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %31 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %30, i32 0, i32 0
  %32 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %32, i64 %34
  store %union.sidtab_entry_inner* %35, %union.sidtab_entry_inner** %8, align 8
  br label %36

36:                                               ; preds = %81, %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load i32, i32* @SIDTAB_INNER_SHIFT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %46 = bitcast %union.sidtab_entry_inner* %45 to %struct.TYPE_4__**
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %union.sidtab_entry_inner, %union.sidtab_entry_inner* %49, i64 %53
  store %union.sidtab_entry_inner* %54, %union.sidtab_entry_inner** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %61 = bitcast %union.sidtab_entry_inner* %60 to %struct.TYPE_4__**
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i8* @kzalloc(i32 %68, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_4__*
  %72 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %73 = bitcast %union.sidtab_entry_inner* %72 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %76 = bitcast %union.sidtab_entry_inner* %75 to %struct.TYPE_4__**
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store %struct.context* null, %struct.context** %4, align 8
  br label %116

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %39
  br label %36

82:                                               ; preds = %36
  %83 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %84 = bitcast %union.sidtab_entry_inner* %83 to %struct.TYPE_6__**
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %92 = load i32, i32* @GFP_ATOMIC, align 4
  %93 = call i8* @kzalloc(i32 %91, i32 %92)
  %94 = bitcast i8* %93 to %struct.TYPE_6__*
  %95 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %96 = bitcast %union.sidtab_entry_inner* %95 to %struct.TYPE_6__**
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %96, align 8
  br label %97

97:                                               ; preds = %90, %87
  %98 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %99 = bitcast %union.sidtab_entry_inner* %98 to %struct.TYPE_6__**
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store %struct.context* null, %struct.context** %4, align 8
  br label %116

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %union.sidtab_entry_inner*, %union.sidtab_entry_inner** %8, align 8
  %106 = bitcast %union.sidtab_entry_inner* %105 to %struct.TYPE_6__**
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SIDTAB_LEAF_ENTRIES, align 4
  %112 = srem i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store %struct.context* %115, %struct.context** %4, align 8
  br label %116

116:                                              ; preds = %104, %102, %79, %28
  %117 = load %struct.context*, %struct.context** %4, align 8
  ret %struct.context* %117
}

declare dso_local i32 @sidtab_level_from_count(i32) #1

declare dso_local i64 @sidtab_alloc_roots(%struct.sidtab*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
