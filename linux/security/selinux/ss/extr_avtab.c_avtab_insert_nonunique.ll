; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert_nonunique.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_insert_nonunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }
%struct.avtab_datum = type { i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_node* @avtab_insert_nonunique(%struct.avtab* %0, %struct.avtab_key* %1, %struct.avtab_datum* %2) #0 {
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca %struct.avtab*, align 8
  %6 = alloca %struct.avtab_key*, align 8
  %7 = alloca %struct.avtab_datum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.avtab_node*, align 8
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %5, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %6, align 8
  store %struct.avtab_datum* %2, %struct.avtab_datum** %7, align 8
  %12 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %13 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AVTAB_ENABLED, align 4
  %16 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.avtab*, %struct.avtab** %5, align 8
  %21 = icmp ne %struct.avtab* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.avtab_node* null, %struct.avtab_node** %4, align 8
  br label %146

23:                                               ; preds = %3
  %24 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %25 = load %struct.avtab*, %struct.avtab** %5, align 8
  %26 = getelementptr inbounds %struct.avtab, %struct.avtab* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @avtab_hash(%struct.avtab_key* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  store %struct.avtab_node* null, %struct.avtab_node** %9, align 8
  %29 = load %struct.avtab*, %struct.avtab** %5, align 8
  %30 = getelementptr inbounds %struct.avtab, %struct.avtab* %29, i32 0, i32 0
  %31 = load %struct.avtab_node**, %struct.avtab_node*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %31, i64 %33
  %35 = load %struct.avtab_node*, %struct.avtab_node** %34, align 8
  store %struct.avtab_node* %35, %struct.avtab_node** %10, align 8
  br label %36

36:                                               ; preds = %133, %23
  %37 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %38 = icmp ne %struct.avtab_node* %37, null
  br i1 %38, label %39, label %138

39:                                               ; preds = %36
  %40 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %41 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %44 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %39
  %49 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %50 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %53 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %48
  %58 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %59 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %62 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %69 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %138

75:                                               ; preds = %66, %57, %48, %39
  %76 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %77 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %80 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %138

85:                                               ; preds = %75
  %86 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %87 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %90 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %88, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %96 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %99 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %97, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %138

104:                                              ; preds = %94, %85
  %105 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %106 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %109 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %107, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %115 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %118 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %116, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %124 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %127 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %138

132:                                              ; preds = %122, %113, %104
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %134, %struct.avtab_node** %9, align 8
  %135 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %136 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %135, i32 0, i32 1
  %137 = load %struct.avtab_node*, %struct.avtab_node** %136, align 8
  store %struct.avtab_node* %137, %struct.avtab_node** %10, align 8
  br label %36

138:                                              ; preds = %131, %103, %84, %74, %36
  %139 = load %struct.avtab*, %struct.avtab** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %142 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %143 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %144 = load %struct.avtab_datum*, %struct.avtab_datum** %7, align 8
  %145 = call %struct.avtab_node* @avtab_insert_node(%struct.avtab* %139, i32 %140, %struct.avtab_node* %141, %struct.avtab_node* %142, %struct.avtab_key* %143, %struct.avtab_datum* %144)
  store %struct.avtab_node* %145, %struct.avtab_node** %4, align 8
  br label %146

146:                                              ; preds = %138, %22
  %147 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  ret %struct.avtab_node* %147
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

declare dso_local %struct.avtab_node* @avtab_insert_node(%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
