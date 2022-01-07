; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_search_node.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_search_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_node* @avtab_search_node(%struct.avtab* %0, %struct.avtab_key* %1) #0 {
  %3 = alloca %struct.avtab_node*, align 8
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
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %136

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

33:                                               ; preds = %131, %20
  %34 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %35 = icmp ne %struct.avtab_node* %34, null
  br i1 %35, label %36, label %135

36:                                               ; preds = %33
  %37 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %38 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %41 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %36
  %46 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %47 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %50 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %56 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %59 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %66 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  store %struct.avtab_node* %72, %struct.avtab_node** %3, align 8
  br label %136

73:                                               ; preds = %63, %54, %45, %36
  %74 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %75 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %78 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %135

83:                                               ; preds = %73
  %84 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %85 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %88 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %94 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %97 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %135

102:                                              ; preds = %92, %83
  %103 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %104 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %107 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %102
  %112 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %113 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %116 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %114, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %111
  %121 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %122 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %125 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %135

130:                                              ; preds = %120, %111, %102
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %133 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %132, i32 0, i32 1
  %134 = load %struct.avtab_node*, %struct.avtab_node** %133, align 8
  store %struct.avtab_node* %134, %struct.avtab_node** %7, align 8
  br label %33

135:                                              ; preds = %129, %101, %82, %33
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %136

136:                                              ; preds = %135, %71, %19
  %137 = load %struct.avtab_node*, %struct.avtab_node** %3, align 8
  ret %struct.avtab_node* %137
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
