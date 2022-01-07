; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor_append.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_cursor_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { %struct.callchain_cursor_node**, i32 }
%struct.callchain_cursor_node = type { i32, i32, i8*, %struct.callchain_cursor_node*, i8*, i32, i8*, %struct.symbol*, i32, i8* }
%struct.map = type { i32 }
%struct.symbol = type { i32 }
%struct.branch_flags = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_cursor_append(%struct.callchain_cursor* %0, i8* %1, %struct.map* %2, %struct.symbol* %3, i32 %4, %struct.branch_flags* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.callchain_cursor*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.map*, align 8
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.branch_flags*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.callchain_cursor_node*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.map* %2, %struct.map** %14, align 8
  store %struct.symbol* %3, %struct.symbol** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.branch_flags* %5, %struct.branch_flags** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = load %struct.callchain_cursor*, %struct.callchain_cursor** %12, align 8
  %24 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %23, i32 0, i32 0
  %25 = load %struct.callchain_cursor_node**, %struct.callchain_cursor_node*** %24, align 8
  %26 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %25, align 8
  store %struct.callchain_cursor_node* %26, %struct.callchain_cursor_node** %22, align 8
  %27 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %28 = icmp ne %struct.callchain_cursor_node* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %10
  %30 = call %struct.callchain_cursor_node* @calloc(i32 1, i32 72)
  store %struct.callchain_cursor_node* %30, %struct.callchain_cursor_node** %22, align 8
  %31 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %32 = icmp ne %struct.callchain_cursor_node* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %87

36:                                               ; preds = %29
  %37 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %38 = load %struct.callchain_cursor*, %struct.callchain_cursor** %12, align 8
  %39 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %38, i32 0, i32 0
  %40 = load %struct.callchain_cursor_node**, %struct.callchain_cursor_node*** %39, align 8
  store %struct.callchain_cursor_node* %37, %struct.callchain_cursor_node** %40, align 8
  br label %41

41:                                               ; preds = %36, %10
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %44 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %46 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @map__zput(i32 %47)
  %49 = load %struct.map*, %struct.map** %14, align 8
  %50 = call i32 @map__get(%struct.map* %49)
  %51 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %52 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.symbol*, %struct.symbol** %15, align 8
  %54 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %55 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %54, i32 0, i32 7
  store %struct.symbol* %53, %struct.symbol** %55, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %58 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %61 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %19, align 8
  %63 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %64 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %67 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.branch_flags*, %struct.branch_flags** %17, align 8
  %69 = icmp ne %struct.branch_flags* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %41
  %71 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %72 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %71, i32 0, i32 5
  %73 = load %struct.branch_flags*, %struct.branch_flags** %17, align 8
  %74 = call i32 @memcpy(i32* %72, %struct.branch_flags* %73, i32 4)
  br label %75

75:                                               ; preds = %70, %41
  %76 = load i8*, i8** %20, align 8
  %77 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %78 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.callchain_cursor*, %struct.callchain_cursor** %12, align 8
  %80 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %22, align 8
  %84 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %83, i32 0, i32 3
  %85 = load %struct.callchain_cursor*, %struct.callchain_cursor** %12, align 8
  %86 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %85, i32 0, i32 0
  store %struct.callchain_cursor_node** %84, %struct.callchain_cursor_node*** %86, align 8
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %75, %33
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local %struct.callchain_cursor_node* @calloc(i32, i32) #1

declare dso_local i32 @map__zput(i32) #1

declare dso_local i32 @map__get(%struct.map*) #1

declare dso_local i32 @memcpy(i32*, %struct.branch_flags*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
