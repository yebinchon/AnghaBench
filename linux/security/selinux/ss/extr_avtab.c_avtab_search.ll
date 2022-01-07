; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_search.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_datum = type { i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_datum, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_datum* @avtab_search(%struct.avtab* %0, %struct.avtab_key* %1) #0 {
  %3 = alloca %struct.avtab_datum*, align 8
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca %struct.avtab_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.avtab_node*, align 8
  %8 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %5, align 8
  %9 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %10 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AVTAB_ENABLED, align 4
  %13 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.avtab*, %struct.avtab** %4, align 8
  %18 = icmp ne %struct.avtab* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.avtab_datum* null, %struct.avtab_datum** %3, align 8
  br label %137

20:                                               ; preds = %2
  %21 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %22 = load %struct.avtab*, %struct.avtab** %4, align 8
  %23 = getelementptr inbounds %struct.avtab, %struct.avtab* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @avtab_hash(%struct.avtab_key* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.avtab*, %struct.avtab** %4, align 8
  %27 = getelementptr inbounds %struct.avtab, %struct.avtab* %26, i32 0, i32 0
  %28 = load %struct.avtab_node**, %struct.avtab_node*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %28, i64 %30
  %32 = load %struct.avtab_node*, %struct.avtab_node** %31, align 8
  store %struct.avtab_node* %32, %struct.avtab_node** %7, align 8
  br label %33

33:                                               ; preds = %132, %20
  %34 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %35 = icmp ne %struct.avtab_node* %34, null
  br i1 %35, label %36, label %136

36:                                               ; preds = %33
  %37 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %38 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %41 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %36
  %46 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %47 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %50 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %56 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %59 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %66 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %73 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %72, i32 0, i32 1
  store %struct.avtab_datum* %73, %struct.avtab_datum** %3, align 8
  br label %137

74:                                               ; preds = %63, %54, %45, %36
  %75 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %76 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %79 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %136

84:                                               ; preds = %74
  %85 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %86 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %89 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %95 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %98 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %136

103:                                              ; preds = %93, %84
  %104 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %105 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %108 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %103
  %113 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %114 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %117 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %115, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %112
  %122 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %123 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %126 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %124, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %136

131:                                              ; preds = %121, %112, %103
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %134 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %133, i32 0, i32 2
  %135 = load %struct.avtab_node*, %struct.avtab_node** %134, align 8
  store %struct.avtab_node* %135, %struct.avtab_node** %7, align 8
  br label %33

136:                                              ; preds = %130, %102, %83, %33
  store %struct.avtab_datum* null, %struct.avtab_datum** %3, align 8
  br label %137

137:                                              ; preds = %136, %71, %19
  %138 = load %struct.avtab_datum*, %struct.avtab_datum** %3, align 8
  ret %struct.avtab_datum* %138
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
