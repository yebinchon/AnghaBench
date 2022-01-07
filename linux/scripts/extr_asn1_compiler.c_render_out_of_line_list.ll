; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_render_out_of_line_list.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_render_out_of_line_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i32, %struct.TYPE_2__*, %struct.element*, %struct.element*, %struct.element* }
%struct.TYPE_2__ = type { i32 }

@render_list = common dso_local global %struct.element* null, align 8
@render_list_p = common dso_local global %struct.element** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nr_entries = common dso_local global i32 0, align 4
@render_depth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_ACT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SEQ%s,\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SEQ_OF%s,\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"_jump_target(%u),\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SET%s,\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SET_OF%s,\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"_action(ACT_%s),\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ASN1_OP_RETURN,\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @render_out_of_line_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_out_of_line_list(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.element*, align 8
  %4 = alloca %struct.element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %7

7:                                                ; preds = %87, %1
  %8 = load %struct.element*, %struct.element** @render_list, align 8
  store %struct.element* %8, %struct.element** %3, align 8
  %9 = icmp ne %struct.element* %8, null
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = load %struct.element*, %struct.element** %3, align 8
  %12 = getelementptr inbounds %struct.element, %struct.element* %11, i32 0, i32 5
  %13 = load %struct.element*, %struct.element** %12, align 8
  store %struct.element* %13, %struct.element** @render_list, align 8
  %14 = load %struct.element*, %struct.element** @render_list, align 8
  %15 = icmp ne %struct.element* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store %struct.element** @render_list, %struct.element*** @render_list_p, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @render_more(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @nr_entries, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.element*, %struct.element** %3, align 8
  %22 = getelementptr inbounds %struct.element, %struct.element* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @render_depth, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @render_depth, align 4
  %25 = load %struct.element*, %struct.element** %3, align 8
  %26 = getelementptr inbounds %struct.element, %struct.element* %25, i32 0, i32 4
  %27 = load %struct.element*, %struct.element** %26, align 8
  store %struct.element* %27, %struct.element** %4, align 8
  br label %28

28:                                               ; preds = %35, %17
  %29 = load %struct.element*, %struct.element** %4, align 8
  %30 = icmp ne %struct.element* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** %2, align 8
  %33 = load %struct.element*, %struct.element** %4, align 8
  %34 = call i32 @render_element(i32* %32, %struct.element* %33, i32* null)
  br label %35

35:                                               ; preds = %31
  %36 = load %struct.element*, %struct.element** %4, align 8
  %37 = getelementptr inbounds %struct.element, %struct.element* %36, i32 0, i32 3
  %38 = load %struct.element*, %struct.element** %37, align 8
  store %struct.element* %38, %struct.element** %4, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load i32, i32* @render_depth, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @render_depth, align 4
  %42 = load %struct.element*, %struct.element** %3, align 8
  %43 = getelementptr inbounds %struct.element, %struct.element* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %47, i8** %5, align 8
  %48 = load %struct.element*, %struct.element** %3, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %73 [
    i32 131, label %51
    i32 130, label %55
    i32 129, label %62
    i32 128, label %66
  ]

51:                                               ; preds = %39
  %52 = load i32*, i32** %2, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i32*, i8*, ...) @render_opcode(i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %74

55:                                               ; preds = %39
  %56 = load i32*, i32** %2, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i32*, i8*, ...) @render_opcode(i32* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32*, i8*, ...) @render_opcode(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %74

62:                                               ; preds = %39
  %63 = load i32*, i32** %2, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i32*, i8*, ...) @render_opcode(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  br label %74

66:                                               ; preds = %39
  %67 = load i32*, i32** %2, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32*, i8*, ...) @render_opcode(i32* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32*, i8*, ...) @render_opcode(i32* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %74

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %66, %62, %55, %51
  %75 = load %struct.element*, %struct.element** %3, align 8
  %76 = getelementptr inbounds %struct.element, %struct.element* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32*, i32** %2, align 8
  %81 = load %struct.element*, %struct.element** %3, align 8
  %82 = getelementptr inbounds %struct.element, %struct.element* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32*, i8*, ...) @render_opcode(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %74
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 (i32*, i8*, ...) @render_opcode(i32* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %7

90:                                               ; preds = %7
  ret void
}

declare dso_local i32 @render_more(i32*, i8*) #1

declare dso_local i32 @render_element(i32*, %struct.element*, i32*) #1

declare dso_local i32 @render_opcode(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
