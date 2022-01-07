; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i32, i8** }
%struct.ida_bitmap = type { i32* }

@IDA_CHUNK_SHIFT = common dso_local global i32 0, align 4
@XA_CHUNK_SHIFT = common dso_local global i32 0, align 4
@IDA_BITMAP_BITS = common dso_local global i64 0, align 8
@XA_CHUNK_SIZE = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"value: data %lx [%px]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bitmap: %p data\00", align 1
@IDA_BITMAP_LONGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" %lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ida_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_dump_entry(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xa_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ida_bitmap*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %99

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @xa_is_node(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call %struct.xa_node* @xa_to_node(i8* %17)
  store %struct.xa_node* %18, %struct.xa_node** %6, align 8
  %19 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %20 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IDA_CHUNK_SHIFT, align 4
  %23 = add i32 %21, %22
  %24 = load i32, i32* @XA_CHUNK_SHIFT, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %28 = mul i64 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @xa_dump_index(i64 %28, i32 %29)
  %31 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %32 = call i32 @xa_dump_node(%struct.xa_node* %31)
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %52, %16
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %39 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %47 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = shl i64 %45, %49
  %51 = or i64 %44, %50
  call void @ida_dump_entry(i8* %43, i64 %51)
  br label %52

52:                                               ; preds = %37
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %33

55:                                               ; preds = %33
  br label %99

56:                                               ; preds = %12
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @xa_is_value(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %63 = mul i64 %61, %62
  %64 = load i32, i32* @BITS_PER_LONG, align 4
  %65 = call i32 @ilog2(i32 %64)
  %66 = call i32 @xa_dump_index(i64 %63, i32 %65)
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @xa_to_value(i8* %67)
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %68, i8* %69)
  br label %98

71:                                               ; preds = %56
  %72 = load i8*, i8** %3, align 8
  %73 = bitcast i8* %72 to %struct.ida_bitmap*
  store %struct.ida_bitmap* %73, %struct.ida_bitmap** %8, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %76 = mul i64 %74, %75
  %77 = load i32, i32* @IDA_CHUNK_SHIFT, align 4
  %78 = call i32 @xa_dump_index(i64 %76, i32 %77)
  %79 = load %struct.ida_bitmap*, %struct.ida_bitmap** %8, align 8
  %80 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.ida_bitmap* %79)
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %93, %71
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @IDA_BITMAP_LONGS, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.ida_bitmap*, %struct.ida_bitmap** %8, align 8
  %87 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %5, align 8
  br label %81

96:                                               ; preds = %81
  %97 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %60
  br label %99

99:                                               ; preds = %11, %98, %55
  ret void
}

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local %struct.xa_node* @xa_to_node(i8*) #1

declare dso_local i32 @xa_dump_index(i64, i32) #1

declare dso_local i32 @xa_dump_node(%struct.xa_node*) #1

declare dso_local i64 @xa_is_value(i8*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @xa_to_value(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
