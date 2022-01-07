; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i32, i32, %struct.node*, %struct.node*, %struct.node* }
%struct.sparsebit = type { %struct.node* }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.sparsebit*, i32)* @node_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @node_add(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.node* @calloc(i32 1, i32 40)
  store %struct.node* %10, %struct.node** %6, align 8
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MASK_BITS, align 4
  %19 = sub nsw i32 0, %18
  %20 = and i32 %17, %19
  %21 = load %struct.node*, %struct.node** %6, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %24 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %23, i32 0, i32 0
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = icmp ne %struct.node* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load %struct.node*, %struct.node** %6, align 8
  %29 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %30 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %29, i32 0, i32 0
  store %struct.node* %28, %struct.node** %30, align 8
  %31 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %31, %struct.node** %3, align 8
  br label %161

32:                                               ; preds = %16
  %33 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %34 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %33, i32 0, i32 0
  %35 = load %struct.node*, %struct.node** %34, align 8
  store %struct.node* %35, %struct.node** %7, align 8
  br label %36

36:                                               ; preds = %32, %88
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.node*, %struct.node** %7, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.node*, %struct.node** %7, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 5
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = icmp ne %struct.node* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.node*, %struct.node** %6, align 8
  %49 = load %struct.node*, %struct.node** %7, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 5
  store %struct.node* %48, %struct.node** %50, align 8
  %51 = load %struct.node*, %struct.node** %7, align 8
  %52 = load %struct.node*, %struct.node** %6, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 4
  store %struct.node* %51, %struct.node** %53, align 8
  br label %89

54:                                               ; preds = %42
  %55 = load %struct.node*, %struct.node** %7, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 5
  %57 = load %struct.node*, %struct.node** %56, align 8
  store %struct.node* %57, %struct.node** %7, align 8
  br label %88

58:                                               ; preds = %36
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.node*, %struct.node** %7, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MASK_BITS, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.node*, %struct.node** %7, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sub nsw i32 %68, 1
  %70 = icmp sgt i32 %59, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.node*, %struct.node** %7, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 3
  %75 = load %struct.node*, %struct.node** %74, align 8
  %76 = icmp ne %struct.node* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %58
  %78 = load %struct.node*, %struct.node** %6, align 8
  %79 = load %struct.node*, %struct.node** %7, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 3
  store %struct.node* %78, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %7, align 8
  %82 = load %struct.node*, %struct.node** %6, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 4
  store %struct.node* %81, %struct.node** %83, align 8
  br label %89

84:                                               ; preds = %58
  %85 = load %struct.node*, %struct.node** %7, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 3
  %87 = load %struct.node*, %struct.node** %86, align 8
  store %struct.node* %87, %struct.node** %7, align 8
  br label %88

88:                                               ; preds = %84, %54
  br label %36

89:                                               ; preds = %77, %47
  %90 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %91 = load %struct.node*, %struct.node** %6, align 8
  %92 = call %struct.node* @node_prev(%struct.sparsebit* %90, %struct.node* %91)
  store %struct.node* %92, %struct.node** %8, align 8
  br label %93

93:                                               ; preds = %113, %89
  %94 = load %struct.node*, %struct.node** %8, align 8
  %95 = icmp ne %struct.node* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.node*, %struct.node** %8, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MASK_BITS, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.node*, %struct.node** %8, align 8
  %103 = getelementptr inbounds %struct.node, %struct.node* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.node*, %struct.node** %6, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %106, %109
  br label %111

111:                                              ; preds = %96, %93
  %112 = phi i1 [ false, %93 ], [ %110, %96 ]
  br i1 %112, label %113, label %159

113:                                              ; preds = %111
  %114 = load %struct.node*, %struct.node** %8, align 8
  %115 = getelementptr inbounds %struct.node, %struct.node* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MASK_BITS, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.node*, %struct.node** %8, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %118, %121
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.node*, %struct.node** %6, align 8
  %125 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.node*, %struct.node** %8, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @MASK_BITS, align 4
  %136 = icmp ult i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.node*, %struct.node** %6, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 1, %149
  %151 = load %struct.node*, %struct.node** %6, align 8
  %152 = getelementptr inbounds %struct.node, %struct.node* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.node*, %struct.node** %8, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 4
  br label %93

159:                                              ; preds = %111
  %160 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %160, %struct.node** %3, align 8
  br label %161

161:                                              ; preds = %159, %27
  %162 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %162
}

declare dso_local %struct.node* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.node* @node_prev(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
