; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_copy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bpf_prog }
%struct.bpf_prog = type { i32 }
%struct.bpf_prog_array = type { %struct.bpf_prog_array_item* }
%struct.bpf_prog_array_item = type { %struct.bpf_prog* }

@dummy_bpf_prog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_array_copy(%struct.bpf_prog_array* %0, %struct.bpf_prog* %1, %struct.bpf_prog* %2, %struct.bpf_prog_array** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog_array*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca %struct.bpf_prog_array**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_prog_array_item*, align 8
  %13 = alloca %struct.bpf_prog_array*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bpf_prog_array* %0, %struct.bpf_prog_array** %6, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %8, align 8
  store %struct.bpf_prog_array** %3, %struct.bpf_prog_array*** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %17 = icmp ne %struct.bpf_prog_array* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %20 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %19, i32 0, i32 0
  %21 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %20, align 8
  store %struct.bpf_prog_array_item* %21, %struct.bpf_prog_array_item** %12, align 8
  br label %22

22:                                               ; preds = %52, %18
  %23 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %24 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %23, i32 0, i32 0
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %26 = icmp ne %struct.bpf_prog* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %29 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %28, i32 0, i32 0
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %29, align 8
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %32 = icmp eq %struct.bpf_prog* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %14, align 4
  br label %52

34:                                               ; preds = %27
  %35 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %36 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %35, i32 0, i32 0
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %36, align 8
  %38 = icmp ne %struct.bpf_prog* %37, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_bpf_prog, i32 0, i32 0)
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %44 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %43, i32 0, i32 0
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %44, align 8
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %47 = icmp eq %struct.bpf_prog* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %150

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %54 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %53, i32 1
  store %struct.bpf_prog_array_item* %54, %struct.bpf_prog_array_item** %12, align 8
  br label %22

55:                                               ; preds = %22
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %58 = icmp ne %struct.bpf_prog* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %150

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %68 = icmp ne %struct.bpf_prog* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load %struct.bpf_prog_array**, %struct.bpf_prog_array*** %9, align 8
  store %struct.bpf_prog_array* null, %struct.bpf_prog_array** %76, align 8
  store i32 0, i32* %5, align 4
  br label %150

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.bpf_prog_array* @bpf_prog_array_alloc(i32 %79, i32 %80)
  store %struct.bpf_prog_array* %81, %struct.bpf_prog_array** %13, align 8
  %82 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %13, align 8
  %83 = icmp ne %struct.bpf_prog_array* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %150

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %87
  %91 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %92 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %91, i32 0, i32 0
  %93 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %92, align 8
  store %struct.bpf_prog_array_item* %93, %struct.bpf_prog_array_item** %12, align 8
  br label %94

94:                                               ; preds = %123, %90
  %95 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %96 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %95, i32 0, i32 0
  %97 = load %struct.bpf_prog*, %struct.bpf_prog** %96, align 8
  %98 = icmp ne %struct.bpf_prog* %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %94
  %100 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %101 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %100, i32 0, i32 0
  %102 = load %struct.bpf_prog*, %struct.bpf_prog** %101, align 8
  %103 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %104 = icmp ne %struct.bpf_prog* %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %107 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %106, i32 0, i32 0
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %107, align 8
  %109 = icmp ne %struct.bpf_prog* %108, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_bpf_prog, i32 0, i32 0)
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %112 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %111, i32 0, i32 0
  %113 = load %struct.bpf_prog*, %struct.bpf_prog** %112, align 8
  %114 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %13, align 8
  %115 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %114, i32 0, i32 0
  %116 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %116, i64 %119
  %121 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %120, i32 0, i32 0
  store %struct.bpf_prog* %113, %struct.bpf_prog** %121, align 8
  br label %122

122:                                              ; preds = %110, %105, %99
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %12, align 8
  %125 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %124, i32 1
  store %struct.bpf_prog_array_item* %125, %struct.bpf_prog_array_item** %12, align 8
  br label %94

126:                                              ; preds = %94
  br label %127

127:                                              ; preds = %126, %87
  %128 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %129 = icmp ne %struct.bpf_prog* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %132 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %13, align 8
  %133 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %132, i32 0, i32 0
  %134 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %134, i64 %137
  %139 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %138, i32 0, i32 0
  store %struct.bpf_prog* %131, %struct.bpf_prog** %139, align 8
  br label %140

140:                                              ; preds = %130, %127
  %141 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %13, align 8
  %142 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %141, i32 0, i32 0
  %143 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %143, i64 %145
  %147 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %146, i32 0, i32 0
  store %struct.bpf_prog* null, %struct.bpf_prog** %147, align 8
  %148 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %13, align 8
  %149 = load %struct.bpf_prog_array**, %struct.bpf_prog_array*** %9, align 8
  store %struct.bpf_prog_array* %148, %struct.bpf_prog_array** %149, align 8
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %140, %84, %75, %62, %48
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.bpf_prog_array* @bpf_prog_array_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
