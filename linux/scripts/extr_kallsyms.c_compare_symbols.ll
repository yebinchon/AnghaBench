; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_compare_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_compare_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_symbols(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sym_entry*, align 8
  %7 = alloca %struct.sym_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sym_entry*
  store %struct.sym_entry* %11, %struct.sym_entry** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sym_entry*
  store %struct.sym_entry* %13, %struct.sym_entry** %7, align 8
  %14 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %15 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %18 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %24 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %27 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %113

31:                                               ; preds = %22
  %32 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %33 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 119
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %41 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 87
  br label %47

47:                                               ; preds = %39, %31
  %48 = phi i1 [ true, %31 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %51 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 119
  br i1 %56, label %65, label %57

57:                                               ; preds = %47
  %58 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %59 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 87
  br label %65

65:                                               ; preds = %57, %47
  %66 = phi i1 [ true, %47 ], [ %64, %57 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %3, align 4
  br label %113

75:                                               ; preds = %65
  %76 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %77 = call i32 @may_be_linker_script_provide_symbol(%struct.sym_entry* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %79 = call i32 @may_be_linker_script_provide_symbol(%struct.sym_entry* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %3, align 4
  br label %113

87:                                               ; preds = %75
  %88 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %89 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i32 @prefix_underscores_count(i8* %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %94 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = call i32 @prefix_underscores_count(i8* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %87
  %106 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %107 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %110 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %101, %83, %71, %30, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @may_be_linker_script_provide_symbol(%struct.sym_entry*) #1

declare dso_local i32 @prefix_underscores_count(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
