; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i8**, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%px\0A\00", align 1
@XA_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"value %ld (0x%lx) [%px]\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"retry (%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sibling (slot %ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"zero (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"UNKNOWN ENTRY (%px)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xa_dump_entry(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xa_node*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %108

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @xa_dump_index(i64 %13, i64 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @xa_is_node(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %55

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.xa_node* @xa_to_node(i8* %26)
  store %struct.xa_node* %27, %struct.xa_node** %8, align 8
  %28 = load %struct.xa_node*, %struct.xa_node** %8, align 8
  %29 = call i32 @xa_dump_node(%struct.xa_node* %28)
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %51, %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.xa_node*, %struct.xa_node** %8, align 8
  %36 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.xa_node*, %struct.xa_node** %8, align 8
  %44 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = shl i64 %42, %45
  %47 = add i64 %41, %46
  %48 = load %struct.xa_node*, %struct.xa_node** %8, align 8
  %49 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  call void @xa_dump_entry(i8* %40, i64 %47, i64 %50)
  br label %51

51:                                               ; preds = %34
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %30

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54, %22
  br label %108

56:                                               ; preds = %12
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @xa_is_value(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @xa_to_value(i8* %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @xa_to_value(i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %66, i8* %67)
  br label %107

69:                                               ; preds = %56
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @xa_is_internal(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %106

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @xa_is_retry(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @xa_to_internal(i8* %81)
  %83 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %105

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @xa_is_sibling(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = call i8* @xa_to_sibling(i8* %89)
  %91 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %104

92:                                               ; preds = %84
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @xa_is_zero(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i8*, i8** %4, align 8
  %98 = call i8* @xa_to_internal(i8* %97)
  %99 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %103

100:                                              ; preds = %92
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 (i8*, i8*, ...) @pr_cont(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %88
  br label %105

105:                                              ; preds = %104, %80
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %60
  br label %108

108:                                              ; preds = %11, %107, %55
  ret void
}

declare dso_local i32 @xa_dump_index(i64, i64) #1

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local i32 @pr_cont(i8*, i8*, ...) #1

declare dso_local %struct.xa_node* @xa_to_node(i8*) #1

declare dso_local i32 @xa_dump_node(%struct.xa_node*) #1

declare dso_local i64 @xa_is_value(i8*) #1

declare dso_local i32 @xa_to_value(i8*) #1

declare dso_local i32 @xa_is_internal(i8*) #1

declare dso_local i64 @xa_is_retry(i8*) #1

declare dso_local i8* @xa_to_internal(i8*) #1

declare dso_local i64 @xa_is_sibling(i8*) #1

declare dso_local i8* @xa_to_sibling(i8*) #1

declare dso_local i64 @xa_is_zero(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
