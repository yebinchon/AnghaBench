; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_add_subnode_namelen.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_add_subnode_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_node_header = type { i32, i8* }

@FDT_ERR_EXISTS = common dso_local global i32 0, align 4
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_PROP = common dso_local global i64 0, align 8
@FDT_NOP = common dso_local global i64 0, align 8
@FDT_TAGSIZE = common dso_local global i32 0, align 4
@FDT_BEGIN_NODE = common dso_local global i32 0, align 4
@FDT_END_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_add_subnode_namelen(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fdt_node_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @FDT_RW_PROBE(i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @fdt_subnode_offset_namelen(i8* %19, i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @FDT_ERR_EXISTS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %109

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %109

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @fdt_next_tag(i8* %38, i32 %39, i32* %12)
  br label %41

41:                                               ; preds = %54, %37
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @fdt_next_tag(i8* %43, i32 %44, i32* %12)
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @FDT_PROP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @FDT_NOP, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ true, %46 ], [ %53, %50 ]
  br i1 %55, label %41, label %56

56:                                               ; preds = %54
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.fdt_node_header* @fdt_offset_ptr_w_(i8* %57, i32 %58)
  store %struct.fdt_node_header* %59, %struct.fdt_node_header** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @FDT_TAGALIGN(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = add i64 16, %63
  %65 = load i32, i32* @FDT_TAGSIZE, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.fdt_node_header*, %struct.fdt_node_header** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @fdt_splice_struct_(i8* %69, %struct.fdt_node_header* %70, i32 0, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %5, align 4
  br label %109

77:                                               ; preds = %56
  %78 = load i32, i32* @FDT_BEGIN_NODE, align 4
  %79 = call i8* @cpu_to_fdt32(i32 %78)
  %80 = load %struct.fdt_node_header*, %struct.fdt_node_header** %10, align 8
  %81 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.fdt_node_header*, %struct.fdt_node_header** %10, align 8
  %83 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @FDT_TAGALIGN(i32 %86)
  %88 = call i32 @memset(i32 %84, i32 0, i32 %87)
  %89 = load %struct.fdt_node_header*, %struct.fdt_node_header** %10, align 8
  %90 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @memcpy(i32 %91, i8* %92, i32 %93)
  %95 = load %struct.fdt_node_header*, %struct.fdt_node_header** %10, align 8
  %96 = bitcast %struct.fdt_node_header* %95 to i8*
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* @FDT_TAGSIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = bitcast i8* %103 to i8**
  store i8** %104, i8*** %16, align 8
  %105 = load i32, i32* @FDT_END_NODE, align 4
  %106 = call i8* @cpu_to_fdt32(i32 %105)
  %107 = load i8**, i8*** %16, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %77, %75, %34, %26
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @FDT_RW_PROBE(i8*) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i8*, i32, i8*, i32) #1

declare dso_local i64 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local %struct.fdt_node_header* @fdt_offset_ptr_w_(i8*, i32) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @fdt_splice_struct_(i8*, %struct.fdt_node_header*, i32, i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
