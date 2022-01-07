; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_clear_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_clear_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }
%struct.node = type { i32, i32, i32 }

@MASK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparsebit_clear_num(%struct.sparsebit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %42, %3
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MASK_BITS, align 4
  %34 = srem i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @bit_clear(%struct.sparsebit* %39, i32 %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %28

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MASK_BITS, align 4
  %52 = sub nsw i32 0, %51
  %53 = and i32 %50, %52
  %54 = add nsw i32 %49, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MASK_BITS, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %47
  %60 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.node* @node_split(%struct.sparsebit* %60, i32 %61)
  store %struct.node* %62, %struct.node** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = call %struct.node* @node_split(%struct.sparsebit* %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %59
  %73 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %74 = load %struct.node*, %struct.node** %7, align 8
  %75 = call %struct.node* @node_next(%struct.sparsebit* %73, %struct.node* %74)
  store %struct.node* %75, %struct.node** %8, align 8
  br label %76

76:                                               ; preds = %105, %72
  %77 = load %struct.node*, %struct.node** %8, align 8
  %78 = icmp ne %struct.node* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.node*, %struct.node** %8, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  br i1 %86, label %87, label %109

87:                                               ; preds = %85
  %88 = load %struct.node*, %struct.node** %8, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MASK_BITS, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.node*, %struct.node** %8, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %13, align 4
  %99 = icmp sle i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %103 = load %struct.node*, %struct.node** %8, align 8
  %104 = call i32 @node_rm(%struct.sparsebit* %102, %struct.node* %103)
  store %struct.node* null, %struct.node** %8, align 8
  br label %105

105:                                              ; preds = %87
  %106 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %107 = load %struct.node*, %struct.node** %7, align 8
  %108 = call %struct.node* @node_next(%struct.sparsebit* %106, %struct.node* %107)
  store %struct.node* %108, %struct.node** %8, align 8
  br label %76

109:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %135, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @MASK_BITS, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load %struct.node*, %struct.node** %7, align 8
  %116 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 1, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.node*, %struct.node** %7, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %131 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %122, %114
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %110

138:                                              ; preds = %110
  %139 = load %struct.node*, %struct.node** %7, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %143 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.node*, %struct.node** %7, align 8
  %147 = getelementptr inbounds %struct.node, %struct.node* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %149 = load %struct.node*, %struct.node** %7, align 8
  %150 = call i32 @node_reduce(%struct.sparsebit* %148, %struct.node* %149)
  store %struct.node* null, %struct.node** %7, align 8
  br label %151

151:                                              ; preds = %138, %47
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = sub nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %11, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @MASK_BITS, align 4
  %162 = icmp slt i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  br label %165

165:                                              ; preds = %172, %151
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @bit_clear(%struct.sparsebit* %169, i32 %170)
  br label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %11, align 4
  br label %165

177:                                              ; preds = %165
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bit_clear(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_split(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_next(%struct.sparsebit*, %struct.node*) #1

declare dso_local i32 @node_rm(%struct.sparsebit*, %struct.node*) #1

declare dso_local i32 @node_reduce(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
