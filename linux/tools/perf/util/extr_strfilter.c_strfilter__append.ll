; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter__append.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter__append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter = type { %struct.strfilter_node* }
%struct.strfilter_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OP_or = common dso_local global i32 0, align 4
@OP_and = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strfilter*, i32, i8*, i8**)* @strfilter__append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter__append(%struct.strfilter* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strfilter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.strfilter_node*, align 8
  %11 = alloca %struct.strfilter_node*, align 8
  %12 = alloca i8*, align 8
  store %struct.strfilter* %0, %struct.strfilter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.strfilter*, %struct.strfilter** %6, align 8
  %14 = icmp ne %struct.strfilter* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.strfilter_node* @strfilter_node__new(i8* %22, i8** %12)
  store %struct.strfilter_node* %23, %struct.strfilter_node** %10, align 8
  %24 = load %struct.strfilter_node*, %struct.strfilter_node** %10, align 8
  %25 = icmp ne %struct.strfilter_node* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %21
  %32 = load i8**, i8*** %9, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %59

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @OP_or, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @OP_and, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.strfilter*, %struct.strfilter** %6, align 8
  %48 = getelementptr inbounds %struct.strfilter, %struct.strfilter* %47, i32 0, i32 0
  %49 = load %struct.strfilter_node*, %struct.strfilter_node** %48, align 8
  %50 = load %struct.strfilter_node*, %struct.strfilter_node** %10, align 8
  %51 = call %struct.strfilter_node* @strfilter_node__alloc(i32 %46, %struct.strfilter_node* %49, %struct.strfilter_node* %50)
  store %struct.strfilter_node* %51, %struct.strfilter_node** %11, align 8
  %52 = load %struct.strfilter_node*, %struct.strfilter_node** %11, align 8
  %53 = icmp ne %struct.strfilter_node* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i8* null, i8** %12, align 8
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.strfilter_node*, %struct.strfilter_node** %11, align 8
  %57 = load %struct.strfilter*, %struct.strfilter** %6, align 8
  %58 = getelementptr inbounds %struct.strfilter, %struct.strfilter* %57, i32 0, i32 0
  store %struct.strfilter_node* %56, %struct.strfilter_node** %58, align 8
  store i32 0, i32* %5, align 4
  br label %72

59:                                               ; preds = %54, %37
  %60 = load %struct.strfilter_node*, %struct.strfilter_node** %10, align 8
  %61 = call i32 @strfilter_node__delete(%struct.strfilter_node* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %55, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.strfilter_node* @strfilter_node__new(i8*, i8**) #1

declare dso_local %struct.strfilter_node* @strfilter_node__alloc(i32, %struct.strfilter_node*, %struct.strfilter_node*) #1

declare dso_local i32 @strfilter_node__delete(%struct.strfilter_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
