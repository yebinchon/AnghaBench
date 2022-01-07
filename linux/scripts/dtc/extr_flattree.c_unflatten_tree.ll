; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_unflatten_tree.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_unflatten_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i8*, i32 }
%struct.inbuf = type { i32 }
%struct.property = type { i32 }

@FTF_FULLPATH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Warning: Flat tree input has subnodes preceding a property.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Premature FDT_END in device tree blob\0A\00", align 1
@FTF_NOPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Warning: NOP tag found in flat tree version <16\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid opcode word %08x in device tree blob\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.inbuf*, %struct.inbuf*, i8*, i32)* @unflatten_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @unflatten_tree(%struct.inbuf* %0, %struct.inbuf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.inbuf*, align 8
  %6 = alloca %struct.inbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.property*, align 8
  %13 = alloca %struct.node*, align 8
  store %struct.inbuf* %0, %struct.inbuf** %5, align 8
  store %struct.inbuf* %1, %struct.inbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call %struct.node* @build_node(i32* null, i32* null, i32* null)
  store %struct.node* %14, %struct.node** %9, align 8
  %15 = load %struct.inbuf*, %struct.inbuf** %5, align 8
  %16 = call i8* @flat_read_string(%struct.inbuf* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FTF_FULLPATH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i8* @nodename_from_path(i8* %22, i8* %23)
  %25 = load %struct.node*, %struct.node** %9, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.node*, %struct.node** %9, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %77, %31
  %33 = load %struct.inbuf*, %struct.inbuf** %5, align 8
  %34 = call i32 @flat_read_word(%struct.inbuf* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %73 [
    i32 128, label %36
    i32 132, label %52
    i32 130, label %61
    i32 131, label %62
    i32 129, label %64
  ]

36:                                               ; preds = %32
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.inbuf*, %struct.inbuf** %5, align 8
  %46 = load %struct.inbuf*, %struct.inbuf** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.property* @flat_read_property(%struct.inbuf* %45, %struct.inbuf* %46, i32 %47)
  store %struct.property* %48, %struct.property** %12, align 8
  %49 = load %struct.node*, %struct.node** %9, align 8
  %50 = load %struct.property*, %struct.property** %12, align 8
  %51 = call i32 @add_property(%struct.node* %49, %struct.property* %50)
  br label %76

52:                                               ; preds = %32
  %53 = load %struct.inbuf*, %struct.inbuf** %5, align 8
  %54 = load %struct.inbuf*, %struct.inbuf** %6, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.node* @unflatten_tree(%struct.inbuf* %53, %struct.inbuf* %54, i8* %55, i32 %56)
  store %struct.node* %57, %struct.node** %13, align 8
  %58 = load %struct.node*, %struct.node** %9, align 8
  %59 = load %struct.node*, %struct.node** %13, align 8
  %60 = call i32 @add_child(%struct.node* %58, %struct.node* %59)
  br label %76

61:                                               ; preds = %32
  br label %76

62:                                               ; preds = %32
  %63 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %76

64:                                               ; preds = %32
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @FTF_NOPS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  br label %76

73:                                               ; preds = %32
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %72, %62, %61, %52, %44
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 130
  br i1 %79, label %32, label %80

80:                                               ; preds = %77
  %81 = load %struct.node*, %struct.node** %9, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.node*, %struct.node** %9, align 8
  ret %struct.node* %90
}

declare dso_local %struct.node* @build_node(i32*, i32*, i32*) #1

declare dso_local i8* @flat_read_string(%struct.inbuf*) #1

declare dso_local i8* @nodename_from_path(i8*, i8*) #1

declare dso_local i32 @flat_read_word(%struct.inbuf*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.property* @flat_read_property(%struct.inbuf*, %struct.inbuf*, i32) #1

declare dso_local i32 @add_property(%struct.node*, %struct.property*) #1

declare dso_local i32 @add_child(%struct.node*, %struct.node*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
