; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_subtree_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_assoc_array.c_assoc_array_subtree_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_array_ptr = type { i32 }
%struct.assoc_array_shortcut = type { i32, i32, i32 }
%struct.assoc_array_node = type { i32, i32, i32* }

@ASSOC_ARRAY_FAN_OUT = common dso_local global i32 0, align 4
@ASSOC_ARRAY_PTR_META_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assoc_array_ptr*, %struct.assoc_array_ptr*, i32 (i8*, i8*)*, i8*)* @assoc_array_subtree_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_array_subtree_iterate(%struct.assoc_array_ptr* %0, %struct.assoc_array_ptr* %1, i32 (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.assoc_array_ptr*, align 8
  %7 = alloca %struct.assoc_array_ptr*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.assoc_array_shortcut*, align 8
  %11 = alloca %struct.assoc_array_node*, align 8
  %12 = alloca %struct.assoc_array_ptr*, align 8
  %13 = alloca %struct.assoc_array_ptr*, align 8
  %14 = alloca %struct.assoc_array_ptr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.assoc_array_ptr* %0, %struct.assoc_array_ptr** %6, align 8
  store %struct.assoc_array_ptr* %1, %struct.assoc_array_ptr** %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %6, align 8
  store %struct.assoc_array_ptr* %18, %struct.assoc_array_ptr** %12, align 8
  br label %19

19:                                               ; preds = %97, %4
  %20 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %12, align 8
  %21 = call i64 @assoc_array_ptr_is_shortcut(%struct.assoc_array_ptr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %12, align 8
  %25 = call %struct.assoc_array_shortcut* @assoc_array_ptr_to_shortcut(%struct.assoc_array_ptr* %24)
  store %struct.assoc_array_shortcut* %25, %struct.assoc_array_shortcut** %10, align 8
  %26 = load %struct.assoc_array_shortcut*, %struct.assoc_array_shortcut** %10, align 8
  %27 = getelementptr inbounds %struct.assoc_array_shortcut, %struct.assoc_array_shortcut* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %28)
  store %struct.assoc_array_ptr* %29, %struct.assoc_array_ptr** %12, align 8
  br label %30

30:                                               ; preds = %23, %19
  %31 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %12, align 8
  %32 = call %struct.assoc_array_node* @assoc_array_ptr_to_node(%struct.assoc_array_ptr* %31)
  store %struct.assoc_array_node* %32, %struct.assoc_array_node** %11, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %68, %30
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @ASSOC_ARRAY_FAN_OUT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load %struct.assoc_array_node*, %struct.assoc_array_node** %11, align 8
  %39 = getelementptr inbounds %struct.assoc_array_node, %struct.assoc_array_node* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %44)
  store %struct.assoc_array_ptr* %45, %struct.assoc_array_ptr** %13, align 8
  %46 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  %47 = ptrtoint %struct.assoc_array_ptr* %46 to i64
  %48 = load i64, i64* %15, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %15, align 8
  %50 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  %51 = icmp ne %struct.assoc_array_ptr* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %37
  %53 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  %54 = call i64 @assoc_array_ptr_is_leaf(%struct.assoc_array_ptr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %58 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  %59 = call i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %57(i8* %59, i8* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %5, align 4
  br label %140

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %52, %37
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %33

71:                                               ; preds = %33
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* @ASSOC_ARRAY_PTR_META_TYPE, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %104

77:                                               ; preds = %71
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %136, %77
  %79 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %12, align 8
  %80 = call %struct.assoc_array_node* @assoc_array_ptr_to_node(%struct.assoc_array_ptr* %79)
  store %struct.assoc_array_node* %80, %struct.assoc_array_node** %11, align 8
  br label %81

81:                                               ; preds = %100, %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @ASSOC_ARRAY_FAN_OUT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load %struct.assoc_array_node*, %struct.assoc_array_node** %11, align 8
  %87 = getelementptr inbounds %struct.assoc_array_node, %struct.assoc_array_node* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %92)
  store %struct.assoc_array_ptr* %93, %struct.assoc_array_ptr** %13, align 8
  %94 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  %95 = call i64 @assoc_array_ptr_is_meta(%struct.assoc_array_ptr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %13, align 8
  store %struct.assoc_array_ptr* %98, %struct.assoc_array_ptr** %12, align 8
  br label %19

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %81

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.assoc_array_node*, %struct.assoc_array_node** %11, align 8
  %106 = getelementptr inbounds %struct.assoc_array_node, %struct.assoc_array_node* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %107)
  store %struct.assoc_array_ptr* %108, %struct.assoc_array_ptr** %14, align 8
  %109 = load %struct.assoc_array_node*, %struct.assoc_array_node** %11, align 8
  %110 = getelementptr inbounds %struct.assoc_array_node, %struct.assoc_array_node* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %16, align 4
  %112 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  %113 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %7, align 8
  %114 = icmp eq %struct.assoc_array_ptr* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %140

116:                                              ; preds = %104
  %117 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  %118 = call i64 @assoc_array_ptr_is_shortcut(%struct.assoc_array_ptr* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  %122 = call %struct.assoc_array_shortcut* @assoc_array_ptr_to_shortcut(%struct.assoc_array_ptr* %121)
  store %struct.assoc_array_shortcut* %122, %struct.assoc_array_shortcut** %10, align 8
  %123 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  store %struct.assoc_array_ptr* %123, %struct.assoc_array_ptr** %12, align 8
  %124 = load %struct.assoc_array_shortcut*, %struct.assoc_array_shortcut** %10, align 8
  %125 = getelementptr inbounds %struct.assoc_array_shortcut, %struct.assoc_array_shortcut* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.assoc_array_ptr* @READ_ONCE(i32 %126)
  store %struct.assoc_array_ptr* %127, %struct.assoc_array_ptr** %14, align 8
  %128 = load %struct.assoc_array_shortcut*, %struct.assoc_array_shortcut** %10, align 8
  %129 = getelementptr inbounds %struct.assoc_array_shortcut, %struct.assoc_array_shortcut* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %16, align 4
  %131 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  %132 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %7, align 8
  %133 = icmp eq %struct.assoc_array_ptr* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %140

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.assoc_array_ptr*, %struct.assoc_array_ptr** %14, align 8
  store %struct.assoc_array_ptr* %137, %struct.assoc_array_ptr** %12, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %78

140:                                              ; preds = %134, %115, %64
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i64 @assoc_array_ptr_is_shortcut(%struct.assoc_array_ptr*) #1

declare dso_local %struct.assoc_array_shortcut* @assoc_array_ptr_to_shortcut(%struct.assoc_array_ptr*) #1

declare dso_local %struct.assoc_array_ptr* @READ_ONCE(i32) #1

declare dso_local %struct.assoc_array_node* @assoc_array_ptr_to_node(%struct.assoc_array_ptr*) #1

declare dso_local i64 @assoc_array_ptr_is_leaf(%struct.assoc_array_ptr*) #1

declare dso_local i8* @assoc_array_ptr_to_leaf(%struct.assoc_array_ptr*) #1

declare dso_local i64 @assoc_array_ptr_is_meta(%struct.assoc_array_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
