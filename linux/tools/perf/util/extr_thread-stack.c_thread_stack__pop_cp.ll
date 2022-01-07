; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__pop_cp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__pop_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i32, %struct.thread_stack_entry* }
%struct.thread_stack_entry = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.symbol* }
%struct.symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread_stack*, i64, i64, i64, %struct.symbol*)* @thread_stack__pop_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__pop_cp(%struct.thread* %0, %struct.thread_stack* %1, i64 %2, i64 %3, i64 %4, %struct.symbol* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.thread_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.symbol*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.thread_stack_entry*, align 8
  %16 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.symbol* %5, %struct.symbol** %13, align 8
  %17 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %18 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %154

22:                                               ; preds = %6
  %23 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %24 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %29 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %28, i32 0, i32 1
  %30 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %29, align 8
  %31 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %30, i64 0
  store %struct.thread_stack_entry* %31, %struct.thread_stack_entry** %15, align 8
  %32 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %15, align 8
  %33 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.symbol*, %struct.symbol** %35, align 8
  %37 = load %struct.symbol*, %struct.symbol** %13, align 8
  %38 = icmp eq %struct.symbol* %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load %struct.thread*, %struct.thread** %8, align 8
  %41 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %42 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %43 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @thread_stack__call_return(%struct.thread* %40, %struct.thread_stack* %41, i32 %45, i64 %46, i64 %47, i32 0)
  store i32 %48, i32* %7, align 4
  br label %154

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %52 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %51, i32 0, i32 1
  %53 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %52, align 8
  %54 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %55 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %53, i64 %58
  %60 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %50
  %65 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %66 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %65, i32 0, i32 1
  %67 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %66, align 8
  %68 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %69 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %67, i64 %72
  %74 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %64
  %78 = load %struct.thread*, %struct.thread** %8, align 8
  %79 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %80 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %81 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @thread_stack__call_return(%struct.thread* %78, %struct.thread_stack* %79, i32 %83, i64 %84, i64 %85, i32 0)
  store i32 %86, i32* %7, align 4
  br label %154

87:                                               ; preds = %64, %50
  %88 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %89 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %16, align 8
  br label %93

93:                                               ; preds = %116, %87
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %16, align 8
  %96 = icmp ne i64 %94, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %93
  %98 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %99 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %98, i32 0, i32 1
  %100 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %100, i64 %101
  %103 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %116, label %107

107:                                              ; preds = %97
  %108 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %109 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %108, i32 0, i32 1
  %110 = load %struct.thread_stack_entry*, %struct.thread_stack_entry** %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %110, i64 %111
  %113 = getelementptr inbounds %struct.thread_stack_entry, %struct.thread_stack_entry* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107, %97
  br label %93

117:                                              ; preds = %107
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %16, align 8
  br label %120

120:                                              ; preds = %141, %117
  %121 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %122 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %16, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load %struct.thread*, %struct.thread** %8, align 8
  %129 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %130 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %131 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @thread_stack__call_return(%struct.thread* %128, %struct.thread_stack* %129, i32 %133, i64 %134, i64 %135, i32 1)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %7, align 4
  br label %154

141:                                              ; preds = %127
  br label %120

142:                                              ; preds = %120
  %143 = load %struct.thread*, %struct.thread** %8, align 8
  %144 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %145 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %146 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @thread_stack__call_return(%struct.thread* %143, %struct.thread_stack* %144, i32 %148, i64 %149, i64 %150, i32 0)
  store i32 %151, i32* %7, align 4
  br label %154

152:                                              ; preds = %93
  br label %153

153:                                              ; preds = %152
  store i32 1, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %142, %139, %77, %39, %21
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @thread_stack__call_return(%struct.thread*, %struct.thread_stack*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
